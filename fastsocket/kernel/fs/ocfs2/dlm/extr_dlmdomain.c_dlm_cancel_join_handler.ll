; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_cancel_join_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_cancel_join_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_cancel_join = type { i64, i32, i32 }
%struct.dlm_ctxt = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"node %u cancels join on domain %s\0A\00", align 1
@dlm_domain_lock = common dso_local global i32 0, align 4
@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2net_msg*, i32, i8*, i8**)* @dlm_cancel_join_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_cancel_join_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca %struct.o2net_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.dlm_cancel_join*, align 8
  %10 = alloca %struct.dlm_ctxt*, align 8
  store %struct.o2net_msg* %0, %struct.o2net_msg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %10, align 8
  %11 = load %struct.o2net_msg*, %struct.o2net_msg** %5, align 8
  %12 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.dlm_cancel_join*
  store %struct.dlm_cancel_join* %14, %struct.dlm_cancel_join** %9, align 8
  %15 = load %struct.dlm_cancel_join*, %struct.dlm_cancel_join** %9, align 8
  %16 = getelementptr inbounds %struct.dlm_cancel_join, %struct.dlm_cancel_join* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dlm_cancel_join*, %struct.dlm_cancel_join** %9, align 8
  %19 = getelementptr inbounds %struct.dlm_cancel_join, %struct.dlm_cancel_join* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %20)
  %22 = call i32 @spin_lock(i32* @dlm_domain_lock)
  %23 = load %struct.dlm_cancel_join*, %struct.dlm_cancel_join** %9, align 8
  %24 = getelementptr inbounds %struct.dlm_cancel_join, %struct.dlm_cancel_join* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dlm_cancel_join*, %struct.dlm_cancel_join** %9, align 8
  %27 = getelementptr inbounds %struct.dlm_cancel_join, %struct.dlm_cancel_join* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.dlm_ctxt* @__dlm_lookup_domain_full(i32 %25, i32 %28)
  store %struct.dlm_ctxt* %29, %struct.dlm_ctxt** %10, align 8
  %30 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %31 = icmp ne %struct.dlm_ctxt* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %4
  %33 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %34 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %33, i32 0, i32 1
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %37 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.dlm_cancel_join*, %struct.dlm_cancel_join** %9, align 8
  %40 = getelementptr inbounds %struct.dlm_cancel_join, %struct.dlm_cancel_join* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %46 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  %47 = call i32 @__dlm_set_joining_node(%struct.dlm_ctxt* %45, i32 %46)
  %48 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %49 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock(i32* %49)
  br label %51

51:                                               ; preds = %32, %4
  %52 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  ret i32 0
}

declare dso_local i32 @mlog(i32, i8*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_ctxt* @__dlm_lookup_domain_full(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__dlm_set_joining_node(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
