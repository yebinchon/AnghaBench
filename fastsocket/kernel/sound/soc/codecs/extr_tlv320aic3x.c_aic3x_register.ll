; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to initialise device\0A\00", align 1
@aic3x_codec = common dso_local global %struct.snd_soc_codec* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to register codec\0A\00", align 1
@aic3x_dai = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to register dai\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @aic3x_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic3x_register(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  %5 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %6 = call i32 @aic3x_init(%struct.snd_soc_codec* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  store %struct.snd_soc_codec* %16, %struct.snd_soc_codec** @aic3x_codec, align 8
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %18 = call i32 @snd_soc_register_codec(%struct.snd_soc_codec* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %23 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %40

27:                                               ; preds = %15
  %28 = call i32 @snd_soc_register_dai(i32* @aic3x_dai)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %33 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %37 = call i32 @snd_soc_unregister_codec(%struct.snd_soc_codec* %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %31, %21, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @aic3x_init(%struct.snd_soc_codec*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_register_codec(%struct.snd_soc_codec*) #1

declare dso_local i32 @snd_soc_register_dai(i32*) #1

declare dso_local i32 @snd_soc_unregister_codec(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
