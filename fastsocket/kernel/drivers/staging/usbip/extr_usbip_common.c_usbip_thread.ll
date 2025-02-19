; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_usbip_common.c_usbip_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_usbip_common.c_usbip_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_task = type { i32, i32*, i32 (%struct.usbip_task*)*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@current = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbip_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.usbip_task*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.usbip_task*
  store %struct.usbip_task* %6, %struct.usbip_task** %4, align 8
  %7 = load %struct.usbip_task*, %struct.usbip_task** %4, align 8
  %8 = icmp ne %struct.usbip_task* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = call i32 (...) @lock_kernel()
  %14 = load %struct.usbip_task*, %struct.usbip_task** %4, align 8
  %15 = getelementptr inbounds %struct.usbip_task, %struct.usbip_task* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @daemonize(i32 %16)
  %18 = load i32, i32* @SIGKILL, align 4
  %19 = call i32 @allow_signal(i32 %18)
  %20 = load i32*, i32** @current, align 8
  %21 = load %struct.usbip_task*, %struct.usbip_task** %4, align 8
  %22 = getelementptr inbounds %struct.usbip_task, %struct.usbip_task* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = call i32 (...) @unlock_kernel()
  %24 = load %struct.usbip_task*, %struct.usbip_task** %4, align 8
  %25 = getelementptr inbounds %struct.usbip_task, %struct.usbip_task* %24, i32 0, i32 0
  %26 = call i32 @complete(i32* %25)
  %27 = load %struct.usbip_task*, %struct.usbip_task** %4, align 8
  %28 = getelementptr inbounds %struct.usbip_task, %struct.usbip_task* %27, i32 0, i32 2
  %29 = load i32 (%struct.usbip_task*)*, i32 (%struct.usbip_task*)** %28, align 8
  %30 = load %struct.usbip_task*, %struct.usbip_task** %4, align 8
  %31 = call i32 %29(%struct.usbip_task* %30)
  %32 = load %struct.usbip_task*, %struct.usbip_task** %4, align 8
  %33 = getelementptr inbounds %struct.usbip_task, %struct.usbip_task* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.usbip_task*, %struct.usbip_task** %4, align 8
  %35 = getelementptr inbounds %struct.usbip_task, %struct.usbip_task* %34, i32 0, i32 0
  %36 = call i32 @complete_and_exit(i32* %35, i32 0)
  br label %37

37:                                               ; preds = %12, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @daemonize(i32) #1

declare dso_local i32 @allow_signal(i32) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @complete_and_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
