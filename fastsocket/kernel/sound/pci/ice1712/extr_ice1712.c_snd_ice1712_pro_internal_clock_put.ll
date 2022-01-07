; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_pro_internal_clock_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_pro_internal_clock_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }
%struct.snd_ice1712 = type { i32 }

@snd_ice1712_pro_internal_clock_put.xrate = internal constant [13 x i32] [i32 8000, i32 9600, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000], align 16
@RATE = common dso_local global i32 0, align 4
@ICE1712_SPDIF_MASTER = common dso_local global i8 0, align 1
@PRO_RATE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ice1712_pro_internal_clock_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_pro_internal_clock_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_ice1712* %9, %struct.snd_ice1712** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %14 = load i32, i32* @RATE, align 4
  %15 = call i32 @ICEMT(%struct.snd_ice1712* %13, i32 %14)
  %16 = call zeroext i8 @inb(i32 %15)
  store i8 %16, i8* %6, align 1
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 13
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @ICE1712_SPDIF_MASTER, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %27, %29
  %31 = trunc i32 %30 to i8
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %33 = load i32, i32* @RATE, align 4
  %34 = call i32 @ICEMT(%struct.snd_ice1712* %32, i32 %33)
  %35 = call i32 @outb(i8 zeroext %31, i32 %34)
  br label %57

36:                                               ; preds = %2
  %37 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = srem i32 %43, 13
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [13 x i32], [13 x i32]* @snd_ice1712_pro_internal_clock_put.xrate, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* @PRO_RATE_DEFAULT, align 4
  %48 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %49 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_irq(i32* %49)
  %51 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %52 = load i32, i32* @PRO_RATE_DEFAULT, align 4
  %53 = call i32 @snd_ice1712_set_pro_rate(%struct.snd_ice1712* %51, i32 %52, i32 1)
  %54 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %55 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_irq(i32* %55)
  br label %57

57:                                               ; preds = %36, %25
  %58 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %59 = load i32, i32* @RATE, align 4
  %60 = call i32 @ICEMT(%struct.snd_ice1712* %58, i32 %59)
  %61 = call zeroext i8 @inb(i32 %60)
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* %6, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %62, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %7, align 4
  %67 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %68 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock_irq(i32* %68)
  %70 = load i8, i8* %6, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @ICE1712_SPDIF_MASTER, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %71, %73
  %75 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %76 = load i32, i32* @RATE, align 4
  %77 = call i32 @ICEMT(%struct.snd_ice1712* %75, i32 %76)
  %78 = call zeroext i8 @inb(i32 %77)
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @ICE1712_SPDIF_MASTER, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %74, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %57
  %85 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %86 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %87 = call i32 @is_spdif_master(%struct.snd_ice1712* %86)
  %88 = call i32 @snd_ice1712_set_input_clock_source(%struct.snd_ice1712* %85, i32 %87)
  br label %89

89:                                               ; preds = %84, %57
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ICEMT(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_ice1712_set_pro_rate(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @snd_ice1712_set_input_clock_source(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @is_spdif_master(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
