; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_doi_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_doi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_audit = type { i32 }
%struct.cipso_v4_doi = type { i32, i32, i32 }
%struct.audit_buffer = type { i32 }

@cipso_v4_doi_list_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@cipso_v4_doi_free_rcu = common dso_local global i32 0, align 4
@AUDIT_MAC_CIPSOV4_DEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c" cipso_doi=%u res=%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipso_v4_doi_remove(i32 %0, %struct.netlbl_audit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netlbl_audit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cipso_v4_doi*, align 8
  %7 = alloca %struct.audit_buffer*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.netlbl_audit* %1, %struct.netlbl_audit** %4, align 8
  %8 = call i32 @spin_lock(i32* @cipso_v4_doi_list_lock)
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.cipso_v4_doi* @cipso_v4_doi_search(i32 %9)
  store %struct.cipso_v4_doi* %10, %struct.cipso_v4_doi** %6, align 8
  %11 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %6, align 8
  %12 = icmp eq %struct.cipso_v4_doi* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @spin_unlock(i32* @cipso_v4_doi_list_lock)
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %6, align 8
  %19 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %18, i32 0, i32 2
  %20 = call i32 @atomic_dec_and_test(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = call i32 @spin_unlock(i32* @cipso_v4_doi_list_lock)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %36

26:                                               ; preds = %17
  %27 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %6, align 8
  %28 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %27, i32 0, i32 1
  %29 = call i32 @list_del_rcu(i32* %28)
  %30 = call i32 @spin_unlock(i32* @cipso_v4_doi_list_lock)
  %31 = call i32 (...) @cipso_v4_cache_invalidate()
  %32 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %6, align 8
  %33 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %32, i32 0, i32 0
  %34 = load i32, i32* @cipso_v4_doi_free_rcu, align 4
  %35 = call i32 @call_rcu(i32* %33, i32 %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %26, %22, %13
  %37 = load i32, i32* @AUDIT_MAC_CIPSOV4_DEL, align 4
  %38 = load %struct.netlbl_audit*, %struct.netlbl_audit** %4, align 8
  %39 = call %struct.audit_buffer* @netlbl_audit_start(i32 %37, %struct.netlbl_audit* %38)
  store %struct.audit_buffer* %39, %struct.audit_buffer** %7, align 8
  %40 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %41 = icmp ne %struct.audit_buffer* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = call i32 @audit_log_format(%struct.audit_buffer* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %48)
  %50 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %51 = call i32 @audit_log_end(%struct.audit_buffer* %50)
  br label %52

52:                                               ; preds = %42, %36
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.cipso_v4_doi* @cipso_v4_doi_search(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @cipso_v4_cache_invalidate(...) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local %struct.audit_buffer* @netlbl_audit_start(i32, %struct.netlbl_audit*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i32, i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
