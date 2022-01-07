; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/extr_cs8427.c_snd_cs8427_iec958_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/extr_cs8427.c_snd_cs8427_iec958_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_device = type { %struct.TYPE_6__*, %struct.cs8427* }
%struct.TYPE_6__ = type { i32 }
%struct.cs8427 = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_cs8427_iec958_active(%struct.snd_i2c_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_i2c_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs8427*, align 8
  store %struct.snd_i2c_device* %0, %struct.snd_i2c_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %4, align 8
  %8 = icmp ne %struct.snd_i2c_device* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @snd_BUG_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %4, align 8
  %18 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %17, i32 0, i32 1
  %19 = load %struct.cs8427*, %struct.cs8427** %18, align 8
  store %struct.cs8427* %19, %struct.cs8427** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %24 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %28 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memcpy(i32 %26, i32 %30, i32 24)
  br label %32

32:                                               ; preds = %22, %16
  %33 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %36 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %34
  store i32 %44, i32* %42, align 4
  %45 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %4, align 8
  %46 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %51 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %54 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = call i32 @snd_ctl_notify(i32 %49, i32 %52, i32* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %32, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
