; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx_modem.c_snd_via82xx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx_modem.c_snd_via82xx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx_modem = type { i32, i32, i32, %struct.viadev* }
%struct.viadev = type { i64, i64 }

@SGD_SHADOW = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@OFFSET_STATUS = common dso_local global i32 0, align 4
@VIA_REG_STAT_EOL = common dso_local global i8 0, align 1
@VIA_REG_STAT_FLAG = common dso_local global i8 0, align 1
@VIA_REG_STAT_STOPPED = common dso_local global i8 0, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_via82xx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via82xx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.via82xx_modem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.viadev*, align 8
  %10 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.via82xx_modem*
  store %struct.via82xx_modem* %12, %struct.via82xx_modem** %6, align 8
  %13 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %14 = load i32, i32* @SGD_SHADOW, align 4
  %15 = call i32 @VIAREG(%struct.via82xx_modem* %13, i32 %14)
  %16 = call i32 @inl(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %19 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %96

25:                                               ; preds = %2
  %26 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %27 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %26, i32 0, i32 2
  %28 = call i32 @spin_lock(i32* %27)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %88, %25
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %32 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %91

35:                                               ; preds = %29
  %36 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %37 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %36, i32 0, i32 3
  %38 = load %struct.viadev*, %struct.viadev** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.viadev, %struct.viadev* %38, i64 %40
  store %struct.viadev* %41, %struct.viadev** %9, align 8
  %42 = load %struct.viadev*, %struct.viadev** %9, align 8
  %43 = load i32, i32* @OFFSET_STATUS, align 4
  %44 = call i32 @VIADEV_REG(%struct.viadev* %42, i32 %43)
  %45 = call zeroext i8 @inb(i32 %44)
  store i8 %45, i8* %10, align 1
  %46 = load i8, i8* @VIA_REG_STAT_EOL, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @VIA_REG_STAT_FLAG, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %47, %49
  %51 = load i8, i8* @VIA_REG_STAT_STOPPED, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %50, %52
  %54 = load i8, i8* %10, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, %53
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %10, align 1
  %58 = load i8, i8* %10, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %35
  br label %88

61:                                               ; preds = %35
  %62 = load %struct.viadev*, %struct.viadev** %9, align 8
  %63 = getelementptr inbounds %struct.viadev, %struct.viadev* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load %struct.viadev*, %struct.viadev** %9, align 8
  %68 = getelementptr inbounds %struct.viadev, %struct.viadev* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %73 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %72, i32 0, i32 2
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.viadev*, %struct.viadev** %9, align 8
  %76 = getelementptr inbounds %struct.viadev, %struct.viadev* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @snd_pcm_period_elapsed(i64 %77)
  %79 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %80 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %79, i32 0, i32 2
  %81 = call i32 @spin_lock(i32* %80)
  br label %82

82:                                               ; preds = %71, %66, %61
  %83 = load i8, i8* %10, align 1
  %84 = load %struct.viadev*, %struct.viadev** %9, align 8
  %85 = load i32, i32* @OFFSET_STATUS, align 4
  %86 = call i32 @VIADEV_REG(%struct.viadev* %84, i32 %85)
  %87 = call i32 @outb(i8 zeroext %83, i32 %86)
  br label %88

88:                                               ; preds = %82, %60
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %29

91:                                               ; preds = %29
  %92 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %93 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %92, i32 0, i32 2
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %91, %23
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @VIAREG(%struct.via82xx_modem*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @VIADEV_REG(%struct.viadev*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
