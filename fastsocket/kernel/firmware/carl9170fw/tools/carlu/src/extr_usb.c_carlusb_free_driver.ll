; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_free_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_free_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carlu*)* @carlusb_free_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carlusb_free_driver(%struct.carlu* %0) #0 {
  %2 = alloca %struct.carlu*, align 8
  store %struct.carlu* %0, %struct.carlu** %2, align 8
  %3 = load %struct.carlu*, %struct.carlu** %2, align 8
  %4 = call i32 @IS_ERR_OR_NULL(%struct.carlu* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %61, label %6

6:                                                ; preds = %1
  %7 = load %struct.carlu*, %struct.carlu** %2, align 8
  %8 = getelementptr inbounds %struct.carlu, %struct.carlu* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %20

13:                                               ; preds = %6
  %14 = load %struct.carlu*, %struct.carlu** %2, align 8
  %15 = getelementptr inbounds %struct.carlu, %struct.carlu* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @close(i32 %18)
  br label %20

20:                                               ; preds = %13, %6
  %21 = load %struct.carlu*, %struct.carlu** %2, align 8
  %22 = getelementptr inbounds %struct.carlu, %struct.carlu* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.carlu*, %struct.carlu** %2, align 8
  %29 = getelementptr inbounds %struct.carlu, %struct.carlu* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @close(i32 %32)
  br label %34

34:                                               ; preds = %27, %20
  %35 = load %struct.carlu*, %struct.carlu** %2, align 8
  %36 = call i32 @carlusb_zap_queues(%struct.carlu* %35)
  %37 = load %struct.carlu*, %struct.carlu** %2, align 8
  %38 = getelementptr inbounds %struct.carlu, %struct.carlu* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @carlfw_release(i32* %39)
  %41 = load %struct.carlu*, %struct.carlu** %2, align 8
  %42 = getelementptr inbounds %struct.carlu, %struct.carlu* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = load %struct.carlu*, %struct.carlu** %2, align 8
  %44 = getelementptr inbounds %struct.carlu, %struct.carlu* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %34
  %48 = load %struct.carlu*, %struct.carlu** %2, align 8
  %49 = getelementptr inbounds %struct.carlu, %struct.carlu* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @libusb_release_interface(i32* %50, i32 0)
  %52 = load %struct.carlu*, %struct.carlu** %2, align 8
  %53 = getelementptr inbounds %struct.carlu, %struct.carlu* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @libusb_close(i32* %54)
  %56 = load %struct.carlu*, %struct.carlu** %2, align 8
  %57 = getelementptr inbounds %struct.carlu, %struct.carlu* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %47, %34
  %59 = load %struct.carlu*, %struct.carlu** %2, align 8
  %60 = call i32 @carlu_free_driver(%struct.carlu* %59)
  br label %61

61:                                               ; preds = %58, %1
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(%struct.carlu*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @carlusb_zap_queues(%struct.carlu*) #1

declare dso_local i32 @carlfw_release(i32*) #1

declare dso_local i32 @libusb_release_interface(i32*, i32) #1

declare dso_local i32 @libusb_close(i32*) #1

declare dso_local i32 @carlu_free_driver(%struct.carlu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
