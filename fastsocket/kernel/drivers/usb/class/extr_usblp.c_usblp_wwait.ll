; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usblp.c_usblp_wwait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usblp.c_usblp_wwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usblp = type { i32, i32, i32, i32 }

@waita = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@LP_ABORT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usblp*, i32)* @usblp_wwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usblp_wwait(%struct.usblp* %0, i32 %1) #0 {
  %3 = alloca %struct.usblp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usblp* %0, %struct.usblp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @waita, align 4
  %8 = load i32, i32* @current, align 4
  %9 = call i32 @DECLARE_WAITQUEUE(i32 %7, i32 %8)
  store i32 0, i32* %6, align 4
  %10 = load %struct.usblp*, %struct.usblp** %3, align 8
  %11 = getelementptr inbounds %struct.usblp, %struct.usblp* %10, i32 0, i32 1
  %12 = call i32 @add_wait_queue(i32* %11, i32* @waita)
  br label %13

13:                                               ; preds = %67, %2
  %14 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %15 = call i32 @set_current_state(i32 %14)
  %16 = load %struct.usblp*, %struct.usblp** %3, align 8
  %17 = getelementptr inbounds %struct.usblp, %struct.usblp* %16, i32 0, i32 2
  %18 = call i64 @mutex_lock_interruptible(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @EINTR, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %68

23:                                               ; preds = %13
  %24 = load %struct.usblp*, %struct.usblp** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @usblp_wtest(%struct.usblp* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.usblp*, %struct.usblp** %3, align 8
  %28 = getelementptr inbounds %struct.usblp, %struct.usblp* %27, i32 0, i32 2
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %68

33:                                               ; preds = %23
  %34 = call i32 @msecs_to_jiffies(i32 1500)
  %35 = call i64 @schedule_timeout(i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %33
  %38 = load %struct.usblp*, %struct.usblp** %3, align 8
  %39 = getelementptr inbounds %struct.usblp, %struct.usblp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @LP_ABORT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.usblp*, %struct.usblp** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @usblp_check_status(%struct.usblp* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @ENOSPC, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %68

53:                                               ; preds = %44
  br label %66

54:                                               ; preds = %37
  %55 = load %struct.usblp*, %struct.usblp** %3, align 8
  %56 = getelementptr inbounds %struct.usblp, %struct.usblp* %55, i32 0, i32 2
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.usblp*, %struct.usblp** %3, align 8
  %59 = load %struct.usblp*, %struct.usblp** %3, align 8
  %60 = getelementptr inbounds %struct.usblp, %struct.usblp* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @usblp_read_status(%struct.usblp* %58, i32 %61)
  %63 = load %struct.usblp*, %struct.usblp** %3, align 8
  %64 = getelementptr inbounds %struct.usblp, %struct.usblp* %63, i32 0, i32 2
  %65 = call i32 @mutex_unlock(i32* %64)
  br label %66

66:                                               ; preds = %54, %53
  br label %67

67:                                               ; preds = %66, %33
  br label %13

68:                                               ; preds = %50, %32, %20
  %69 = load i32, i32* @TASK_RUNNING, align 4
  %70 = call i32 @set_current_state(i32 %69)
  %71 = load %struct.usblp*, %struct.usblp** %3, align 8
  %72 = getelementptr inbounds %struct.usblp, %struct.usblp* %71, i32 0, i32 1
  %73 = call i32 @remove_wait_queue(i32* %72, i32* @waita)
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @usblp_wtest(%struct.usblp*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @usblp_check_status(%struct.usblp*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usblp_read_status(%struct.usblp*, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
