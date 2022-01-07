; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_usbip_common.c_usbip_stop_threads.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_usbip_common.c_usbip_stop_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i32* }

@SIGKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rx_thread for ud %p has finished\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"tx_thread for ud %p has finished\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbip_stop_threads(%struct.usbip_device* %0) #0 {
  %2 = alloca %struct.usbip_device*, align 8
  store %struct.usbip_device* %0, %struct.usbip_device** %2, align 8
  %3 = load %struct.usbip_device*, %struct.usbip_device** %2, align 8
  %4 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i32, i32* @SIGKILL, align 4
  %10 = load %struct.usbip_device*, %struct.usbip_device** %2, align 8
  %11 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @send_sig(i32 %9, i32* %13, i32 1)
  %15 = load %struct.usbip_device*, %struct.usbip_device** %2, align 8
  %16 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @wait_for_completion(i32* %17)
  %19 = load %struct.usbip_device*, %struct.usbip_device** %2, align 8
  %20 = call i32 @usbip_udbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.usbip_device* %19)
  br label %21

21:                                               ; preds = %8, %1
  %22 = load %struct.usbip_device*, %struct.usbip_device** %2, align 8
  %23 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load i32, i32* @SIGKILL, align 4
  %29 = load %struct.usbip_device*, %struct.usbip_device** %2, align 8
  %30 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @send_sig(i32 %28, i32* %32, i32 1)
  %34 = load %struct.usbip_device*, %struct.usbip_device** %2, align 8
  %35 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @wait_for_completion(i32* %36)
  %38 = load %struct.usbip_device*, %struct.usbip_device** %2, align 8
  %39 = call i32 @usbip_udbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.usbip_device* %38)
  br label %40

40:                                               ; preds = %27, %21
  ret void
}

declare dso_local i32 @send_sig(i32, i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @usbip_udbg(i8*, %struct.usbip_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
