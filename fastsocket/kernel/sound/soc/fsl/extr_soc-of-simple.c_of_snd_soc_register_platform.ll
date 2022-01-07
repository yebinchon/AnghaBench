; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_soc-of-simple.c_of_snd_soc_register_platform.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_soc-of-simple.c_of_snd_soc_register_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_platform = type { i32 }
%struct.device_node = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.of_snd_soc_device = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.device_node* }
%struct.TYPE_4__ = type { %struct.snd_soc_dai* }
%struct.TYPE_3__ = type { i32, %struct.snd_soc_platform* }

@.str = private unnamed_addr constant [38 x i8] c"registering ASoC platform driver: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"codec-handle\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"looking for codec: %s\0A\00", align 1
@of_snd_soc_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_snd_soc_register_platform(%struct.snd_soc_platform* %0, %struct.device_node* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_platform*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.of_snd_soc_device*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_platform* %0, %struct.snd_soc_platform** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.device_node*, %struct.device_node** %6, align 8
  %14 = getelementptr inbounds %struct.device_node, %struct.device_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = call i32* @of_get_property(%struct.device_node* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 8
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %3
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %76

28:                                               ; preds = %21
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.device_node* @of_find_node_by_phandle(i32 %30)
  store %struct.device_node* %31, %struct.device_node** %9, align 8
  %32 = load %struct.device_node*, %struct.device_node** %9, align 8
  %33 = icmp ne %struct.device_node* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %76

37:                                               ; preds = %28
  %38 = load %struct.device_node*, %struct.device_node** %9, align 8
  %39 = getelementptr inbounds %struct.device_node, %struct.device_node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = call i32 @mutex_lock(i32* @of_snd_soc_mutex)
  %43 = load %struct.device_node*, %struct.device_node** %9, align 8
  %44 = call %struct.of_snd_soc_device* @of_snd_soc_get_device(%struct.device_node* %43)
  store %struct.of_snd_soc_device* %44, %struct.of_snd_soc_device** %8, align 8
  %45 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %8, align 8
  %46 = icmp ne %struct.of_snd_soc_device* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %12, align 4
  br label %73

50:                                               ; preds = %37
  %51 = load %struct.device_node*, %struct.device_node** %6, align 8
  %52 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %8, align 8
  %53 = getelementptr inbounds %struct.of_snd_soc_device, %struct.of_snd_soc_device* %52, i32 0, i32 2
  store %struct.device_node* %51, %struct.device_node** %53, align 8
  %54 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %55 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %8, align 8
  %56 = getelementptr inbounds %struct.of_snd_soc_device, %struct.of_snd_soc_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store %struct.snd_soc_dai* %54, %struct.snd_soc_dai** %57, align 8
  %58 = load %struct.snd_soc_platform*, %struct.snd_soc_platform** %5, align 8
  %59 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %8, align 8
  %60 = getelementptr inbounds %struct.of_snd_soc_device, %struct.of_snd_soc_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store %struct.snd_soc_platform* %58, %struct.snd_soc_platform** %61, align 8
  %62 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %8, align 8
  %63 = getelementptr inbounds %struct.of_snd_soc_device, %struct.of_snd_soc_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %64, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %8, align 8
  %69 = getelementptr inbounds %struct.of_snd_soc_device, %struct.of_snd_soc_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %8, align 8
  %72 = call i32 @of_snd_soc_register_device(%struct.of_snd_soc_device* %71)
  br label %73

73:                                               ; preds = %50, %47
  %74 = call i32 @mutex_unlock(i32* @of_snd_soc_mutex)
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %34, %25
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.of_snd_soc_device* @of_snd_soc_get_device(%struct.device_node*) #1

declare dso_local i32 @of_snd_soc_register_device(%struct.of_snd_soc_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
