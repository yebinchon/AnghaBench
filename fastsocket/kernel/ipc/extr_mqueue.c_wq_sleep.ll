; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c_wq_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c_wq_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqueue_inode_info = type { i32 }
%struct.ext_wait_queue = type { i64, i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@STATE_PENDING = common dso_local global i64 0, align 8
@STATE_READY = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mqueue_inode_info*, i32, i64, %struct.ext_wait_queue*)* @wq_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wq_sleep(%struct.mqueue_inode_info* %0, i32 %1, i64 %2, %struct.ext_wait_queue* %3) #0 {
  %5 = alloca %struct.mqueue_inode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ext_wait_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mqueue_inode_info* %0, %struct.mqueue_inode_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.ext_wait_queue* %3, %struct.ext_wait_queue** %8, align 8
  %11 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %8, align 8
  %14 = call i32 @wq_add(%struct.mqueue_inode_info* %11, i32 %12, %struct.ext_wait_queue* %13)
  br label %15

15:                                               ; preds = %61, %4
  %16 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %17 = call i32 @set_current_state(i32 %16)
  %18 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %5, align 8
  %19 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @schedule_timeout(i64 %21)
  store i64 %22, i64* %10, align 8
  br label %23

23:                                               ; preds = %29, %15
  %24 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %8, align 8
  %25 = getelementptr inbounds %struct.ext_wait_queue, %struct.ext_wait_queue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @STATE_PENDING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 (...) @cpu_relax()
  br label %23

31:                                               ; preds = %23
  %32 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %8, align 8
  %33 = getelementptr inbounds %struct.ext_wait_queue, %struct.ext_wait_queue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @STATE_READY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %70

38:                                               ; preds = %31
  %39 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %5, align 8
  %40 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %8, align 8
  %43 = getelementptr inbounds %struct.ext_wait_queue, %struct.ext_wait_queue* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @STATE_READY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %66

48:                                               ; preds = %38
  %49 = load i32, i32* @current, align 4
  %50 = call i64 @signal_pending(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @ERESTARTSYS, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %62

55:                                               ; preds = %48
  %56 = load i64, i64* %10, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @ETIMEDOUT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %62

61:                                               ; preds = %55
  br label %15

62:                                               ; preds = %58, %52
  %63 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %8, align 8
  %64 = getelementptr inbounds %struct.ext_wait_queue, %struct.ext_wait_queue* %63, i32 0, i32 1
  %65 = call i32 @list_del(i32* %64)
  br label %66

66:                                               ; preds = %62, %47
  %67 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %5, align 8
  %68 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  br label %70

70:                                               ; preds = %66, %37
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local i32 @wq_add(%struct.mqueue_inode_info*, i32, %struct.ext_wait_queue*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
