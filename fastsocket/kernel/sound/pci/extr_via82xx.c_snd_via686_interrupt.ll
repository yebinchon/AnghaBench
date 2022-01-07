; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via686_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via686_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx = type { i32, i32, i32, %struct.viadev*, %struct.TYPE_2__* }
%struct.viadev = type { i8, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@SGD_SHADOW = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@OFFSET_STATUS = common dso_local global i32 0, align 4
@VIA_REG_STAT_EOL = common dso_local global i8 0, align 1
@VIA_REG_STAT_FLAG = common dso_local global i8 0, align 1
@VIA_REG_STAT_STOPPED = common dso_local global i8 0, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_via686_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via686_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.via82xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.viadev*, align 8
  %10 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.via82xx*
  store %struct.via82xx* %12, %struct.via82xx** %6, align 8
  %13 = load %struct.via82xx*, %struct.via82xx** %6, align 8
  %14 = load i32, i32* @SGD_SHADOW, align 4
  %15 = call i32 @VIAREG(%struct.via82xx* %13, i32 %14)
  %16 = call i32 @inl(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.via82xx*, %struct.via82xx** %6, align 8
  %19 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %2
  %24 = load %struct.via82xx*, %struct.via82xx** %6, align 8
  %25 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.via82xx*, %struct.via82xx** %6, align 8
  %31 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snd_mpu401_uart_interrupt(i32 %29, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %130

36:                                               ; preds = %23
  %37 = load i32, i32* @IRQ_NONE, align 4
  store i32 %37, i32* %3, align 4
  br label %130

38:                                               ; preds = %2
  %39 = load %struct.via82xx*, %struct.via82xx** %6, align 8
  %40 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %39, i32 0, i32 2
  %41 = call i32 @spin_lock(i32* %40)
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %122, %38
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.via82xx*, %struct.via82xx** %6, align 8
  %45 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %125

48:                                               ; preds = %42
  %49 = load %struct.via82xx*, %struct.via82xx** %6, align 8
  %50 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %49, i32 0, i32 3
  %51 = load %struct.viadev*, %struct.viadev** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.viadev, %struct.viadev* %51, i64 %53
  store %struct.viadev* %54, %struct.viadev** %9, align 8
  %55 = load %struct.viadev*, %struct.viadev** %9, align 8
  %56 = load i32, i32* @OFFSET_STATUS, align 4
  %57 = call i32 @VIADEV_REG(%struct.viadev* %55, i32 %56)
  %58 = call zeroext i8 @inb(i32 %57)
  store i8 %58, i8* %10, align 1
  %59 = load i8, i8* %10, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* @VIA_REG_STAT_EOL, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @VIA_REG_STAT_FLAG, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %62, %64
  %66 = load i8, i8* @VIA_REG_STAT_STOPPED, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %65, %67
  %69 = and i32 %60, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %48
  br label %122

72:                                               ; preds = %48
  %73 = load %struct.viadev*, %struct.viadev** %9, align 8
  %74 = getelementptr inbounds %struct.viadev, %struct.viadev* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %116

77:                                               ; preds = %72
  %78 = load %struct.viadev*, %struct.viadev** %9, align 8
  %79 = getelementptr inbounds %struct.viadev, %struct.viadev* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %116

82:                                               ; preds = %77
  %83 = load i8, i8* %10, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* @VIA_REG_STAT_EOL, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load %struct.viadev*, %struct.viadev** %9, align 8
  %91 = getelementptr inbounds %struct.viadev, %struct.viadev* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  br label %100

92:                                               ; preds = %82
  %93 = load %struct.viadev*, %struct.viadev** %9, align 8
  %94 = getelementptr inbounds %struct.viadev, %struct.viadev* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.viadev*, %struct.viadev** %9, align 8
  %97 = getelementptr inbounds %struct.viadev, %struct.viadev* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %95
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %92, %89
  %101 = load i8, i8* %10, align 1
  %102 = load %struct.viadev*, %struct.viadev** %9, align 8
  %103 = getelementptr inbounds %struct.viadev, %struct.viadev* %102, i32 0, i32 0
  store i8 %101, i8* %103, align 8
  %104 = load %struct.via82xx*, %struct.via82xx** %6, align 8
  %105 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %104, i32 0, i32 2
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load %struct.viadev*, %struct.viadev** %9, align 8
  %108 = getelementptr inbounds %struct.viadev, %struct.viadev* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @snd_pcm_period_elapsed(i64 %109)
  %111 = load %struct.via82xx*, %struct.via82xx** %6, align 8
  %112 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %111, i32 0, i32 2
  %113 = call i32 @spin_lock(i32* %112)
  %114 = load %struct.viadev*, %struct.viadev** %9, align 8
  %115 = getelementptr inbounds %struct.viadev, %struct.viadev* %114, i32 0, i32 0
  store i8 0, i8* %115, align 8
  br label %116

116:                                              ; preds = %100, %77, %72
  %117 = load i8, i8* %10, align 1
  %118 = load %struct.viadev*, %struct.viadev** %9, align 8
  %119 = load i32, i32* @OFFSET_STATUS, align 4
  %120 = call i32 @VIADEV_REG(%struct.viadev* %118, i32 %119)
  %121 = call i32 @outb(i8 zeroext %117, i32 %120)
  br label %122

122:                                              ; preds = %116, %71
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %42

125:                                              ; preds = %42
  %126 = load %struct.via82xx*, %struct.via82xx** %6, align 8
  %127 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %126, i32 0, i32 2
  %128 = call i32 @spin_unlock(i32* %127)
  %129 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %125, %36, %28
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @VIAREG(%struct.via82xx*, i32) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

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
