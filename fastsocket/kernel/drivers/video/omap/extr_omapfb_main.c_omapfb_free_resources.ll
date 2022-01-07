; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_free_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_device = type { i32, %struct.TYPE_5__*, i32*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)* }
%struct.TYPE_4__ = type { i32 }

@OMAPFB_UPDATE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omapfb_device*, i32)* @omapfb_free_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omapfb_free_resources(%struct.omapfb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.omapfb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omapfb_device* %0, %struct.omapfb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %69 [
    i32 128, label %7
    i32 7, label %28
    i32 6, label %31
    i32 5, label %41
    i32 4, label %45
    i32 3, label %48
    i32 2, label %51
    i32 1, label %61
    i32 0, label %68
  ]

7:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %24, %7
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %11 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %8
  %16 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %17 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @unregister_framebuffer(i32 %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %8

27:                                               ; preds = %8
  br label %28

28:                                               ; preds = %2, %27
  %29 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %30 = call i32 @omapfb_unregister_sysfs(%struct.omapfb_device* %29)
  br label %31

31:                                               ; preds = %2, %28
  %32 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %33 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %35, align 8
  %37 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %38 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i32 %36(%struct.TYPE_5__* %39)
  br label %41

41:                                               ; preds = %2, %31
  %42 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %43 = load i32, i32* @OMAPFB_UPDATE_DISABLED, align 4
  %44 = call i32 @omapfb_set_update_mode(%struct.omapfb_device* %42, i32 %43)
  br label %45

45:                                               ; preds = %2, %41
  %46 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %47 = call i32 @planes_cleanup(%struct.omapfb_device* %46)
  br label %48

48:                                               ; preds = %2, %45
  %49 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %50 = call i32 @ctrl_cleanup(%struct.omapfb_device* %49)
  br label %51

51:                                               ; preds = %2, %48
  %52 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %53 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %55, align 8
  %57 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %58 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 %56(%struct.TYPE_5__* %59)
  br label %61

61:                                               ; preds = %2, %51
  %62 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %63 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_set_drvdata(i32 %64, i32* null)
  %66 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %67 = call i32 @kfree(%struct.omapfb_device* %66)
  br label %68

68:                                               ; preds = %2, %61
  br label %71

69:                                               ; preds = %2
  %70 = call i32 (...) @BUG()
  br label %71

71:                                               ; preds = %69, %68
  ret void
}

declare dso_local i32 @unregister_framebuffer(i32) #1

declare dso_local i32 @omapfb_unregister_sysfs(%struct.omapfb_device*) #1

declare dso_local i32 @omapfb_set_update_mode(%struct.omapfb_device*, i32) #1

declare dso_local i32 @planes_cleanup(%struct.omapfb_device*) #1

declare dso_local i32 @ctrl_cleanup(%struct.omapfb_device*) #1

declare dso_local i32 @dev_set_drvdata(i32, i32*) #1

declare dso_local i32 @kfree(%struct.omapfb_device*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
