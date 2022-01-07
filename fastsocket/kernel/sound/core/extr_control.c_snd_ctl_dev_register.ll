; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_dev_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_device = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_CARDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"controlC%i\00", align 1
@SNDRV_DEVICE_TYPE_CONTROL = common dso_local global i32 0, align 4
@snd_ctl_f_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_device*)* @snd_ctl_dev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ctl_dev_register(%struct.snd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_device*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  store %struct.snd_device* %0, %struct.snd_device** %3, align 8
  %8 = load %struct.snd_device*, %struct.snd_device** %3, align 8
  %9 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %8, i32 0, i32 0
  %10 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  store %struct.snd_card* %10, %struct.snd_card** %4, align 8
  %11 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %12 = icmp ne %struct.snd_card* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %22 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SNDRV_CARDS, align 4
  %29 = icmp sge i32 %27, %28
  br label %30

30:                                               ; preds = %26, %20
  %31 = phi i1 [ true, %20 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @snd_BUG_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %51

38:                                               ; preds = %30
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @SNDRV_DEVICE_TYPE_CONTROL, align 4
  %43 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %44 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %46 = call i32 @snd_register_device(i32 %42, %struct.snd_card* %43, i32 -1, i32* @snd_ctl_f_ops, %struct.snd_card* %44, i8* %45)
  store i32 %46, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %48, %35, %17
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snd_register_device(i32, %struct.snd_card*, i32, i32*, %struct.snd_card*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
