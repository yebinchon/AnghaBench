; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_leave_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_leave_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32 }

@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@ML_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Error %d sending domain exit message to node %d\0A\00", align 1
@DLM_DOMAIN_BACKOFF_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*)* @dlm_leave_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_leave_domain(%struct.dlm_ctxt* %0) #0 {
  %2 = alloca %struct.dlm_ctxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %2, align 8
  %6 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %7 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %10 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %13 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clear_bit(i32 %11, i32 %14)
  br label %16

16:                                               ; preds = %62, %1
  %17 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %18 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @O2NM_MAX_NODES, align 4
  %21 = call i32 @find_next_bit(i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @O2NM_MAX_NODES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %16
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %26 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %25, i32 0, i32 1
  %27 = call i32 @spin_unlock(i32* %26)
  store i32 1, i32* %4, align 4
  %28 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @dlm_send_one_domain_exit(%struct.dlm_ctxt* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @ENOPROTOOPT, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ENOTCONN, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* @ML_NOTICE, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @mlog(i32 %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* @DLM_DOMAIN_BACKOFF_MS, align 4
  %49 = call i32 @msleep(i32 %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %38, %33, %24
  %51 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %52 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %51, i32 0, i32 1
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %59 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @clear_bit(i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %50
  br label %16

63:                                               ; preds = %16
  %64 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %65 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock(i32* %65)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_send_one_domain_exit(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
