; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_soc-of-simple.c_of_snd_soc_register_codec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_soc-of-simple.c_of_snd_soc_register_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec_device = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.device_node = type { i64, i32 }
%struct.of_snd_soc_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8*, %struct.snd_soc_dai* }
%struct.TYPE_3__ = type { %struct.snd_soc_codec_device*, i8* }

@.str = private unnamed_addr constant [35 x i8] c"registering ASoC codec driver: %s\0A\00", align 1
@of_snd_soc_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_snd_soc_register_codec(%struct.snd_soc_codec_device* %0, i8* %1, %struct.snd_soc_dai* %2, %struct.device_node* %3) #0 {
  %5 = alloca %struct.snd_soc_codec_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.of_snd_soc_device*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_codec_device* %0, %struct.snd_soc_codec_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  store %struct.device_node* %3, %struct.device_node** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.device_node*, %struct.device_node** %8, align 8
  %12 = getelementptr inbounds %struct.device_node, %struct.device_node* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 @mutex_lock(i32* @of_snd_soc_mutex)
  %16 = load %struct.device_node*, %struct.device_node** %8, align 8
  %17 = call %struct.of_snd_soc_device* @of_snd_soc_get_device(%struct.device_node* %16)
  store %struct.of_snd_soc_device* %17, %struct.of_snd_soc_device** %9, align 8
  %18 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %9, align 8
  %19 = icmp ne %struct.of_snd_soc_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %10, align 4
  br label %52

23:                                               ; preds = %4
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %9, align 8
  %26 = getelementptr inbounds %struct.of_snd_soc_device, %struct.of_snd_soc_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load %struct.snd_soc_codec_device*, %struct.snd_soc_codec_device** %5, align 8
  %29 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %9, align 8
  %30 = getelementptr inbounds %struct.of_snd_soc_device, %struct.of_snd_soc_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.snd_soc_codec_device* %28, %struct.snd_soc_codec_device** %31, align 8
  %32 = load %struct.device_node*, %struct.device_node** %8, align 8
  %33 = getelementptr inbounds %struct.device_node, %struct.device_node* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %9, align 8
  %37 = getelementptr inbounds %struct.of_snd_soc_device, %struct.of_snd_soc_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load %struct.device_node*, %struct.device_node** %8, align 8
  %40 = getelementptr inbounds %struct.device_node, %struct.device_node* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %9, align 8
  %44 = getelementptr inbounds %struct.of_snd_soc_device, %struct.of_snd_soc_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %47 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %9, align 8
  %48 = getelementptr inbounds %struct.of_snd_soc_device, %struct.of_snd_soc_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store %struct.snd_soc_dai* %46, %struct.snd_soc_dai** %49, align 8
  %50 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %9, align 8
  %51 = call i32 @of_snd_soc_register_device(%struct.of_snd_soc_device* %50)
  br label %52

52:                                               ; preds = %23, %20
  %53 = call i32 @mutex_unlock(i32* @of_snd_soc_mutex)
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local i32 @pr_info(i8*, i32) #1

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
