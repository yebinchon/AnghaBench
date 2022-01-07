; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als4000.c_snd_als4000_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als4000.c_snd_als4000_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i32, i32, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@ALS4K_IOB_0E_IRQTYPE_SB_CR1E_MPU = common dso_local global i32 0, align 4
@ALS4K_IOB_0E_SB_DMA_IRQ = common dso_local global i32 0, align 4
@ALS4K_IOB_0E_CR1E_IRQ = common dso_local global i32 0, align 4
@ALS4K_IOB_0E_MPU_IRQ = common dso_local global i32 0, align 4
@SB_DSP4_IRQSTATUS = common dso_local global i32 0, align 4
@SB_IRQTYPE_8BIT = common dso_local global i32 0, align 4
@SB_IRQTYPE_16BIT = common dso_local global i32 0, align 4
@SB_IRQTYPE_MPUIN = common dso_local global i32 0, align 4
@ALS4K_IRQTYPE_CR1E_DMA = common dso_local global i32 0, align 4
@ALS4K_IOB_16_ACK_FOR_CR1E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_als4000_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als4000_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_sb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.snd_sb*
  store %struct.snd_sb* %9, %struct.snd_sb** %5, align 8
  %10 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %11 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ALS4K_IOB_0E_IRQTYPE_SB_CR1E_MPU, align 4
  %14 = call i32 @snd_als4k_iobase_readb(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ALS4K_IOB_0E_SB_DMA_IRQ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %21 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %26 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @snd_pcm_period_elapsed(i64 %27)
  br label %29

29:                                               ; preds = %24, %19, %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ALS4K_IOB_0E_CR1E_IRQ, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %36 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %41 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @snd_pcm_period_elapsed(i64 %42)
  br label %44

44:                                               ; preds = %39, %34, %29
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ALS4K_IOB_0E_MPU_IRQ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %51 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %57 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @snd_mpu401_uart_interrupt(i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %54, %49, %44
  %63 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %64 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ALS4K_IOB_0E_IRQTYPE_SB_CR1E_MPU, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @snd_als4k_iobase_writeb(i32 %65, i32 %66, i32 %67)
  %69 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %70 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %69, i32 0, i32 2
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %73 = load i32, i32* @SB_DSP4_IRQSTATUS, align 4
  %74 = call i32 @snd_sbmixer_read(%struct.snd_sb* %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %76 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %75, i32 0, i32 2
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @SB_IRQTYPE_8BIT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %62
  %83 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %84 = call i32 @snd_sb_ack_8bit(%struct.snd_sb* %83)
  br label %85

85:                                               ; preds = %82, %62
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @SB_IRQTYPE_16BIT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %92 = call i32 @snd_sb_ack_16bit(%struct.snd_sb* %91)
  br label %93

93:                                               ; preds = %90, %85
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @SB_IRQTYPE_MPUIN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %100 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @inb(i32 %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @ALS4K_IRQTYPE_CR1E_DMA, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %110 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ALS4K_IOB_16_ACK_FOR_CR1E, align 4
  %113 = call i32 @snd_als4k_iobase_readb(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %108, %103
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @ALS4K_IOB_0E_SB_DMA_IRQ, align 4
  %117 = load i32, i32* @ALS4K_IOB_0E_CR1E_IRQ, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @ALS4K_IOB_0E_MPU_IRQ, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %115, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %114
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @SB_IRQTYPE_8BIT, align 4
  %126 = load i32, i32* @SB_IRQTYPE_16BIT, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @SB_IRQTYPE_MPUIN, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @ALS4K_IRQTYPE_CR1E_DMA, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %124, %131
  %133 = icmp ne i32 %132, 0
  br label %134

134:                                              ; preds = %123, %114
  %135 = phi i1 [ true, %114 ], [ %133, %123 ]
  %136 = zext i1 %135 to i32
  %137 = call i32 @IRQ_RETVAL(i32 %136)
  ret i32 %137
}

declare dso_local i32 @snd_als4k_iobase_readb(i32, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

declare dso_local i32 @snd_als4k_iobase_writeb(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_sbmixer_read(%struct.snd_sb*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_sb_ack_8bit(%struct.snd_sb*) #1

declare dso_local i32 @snd_sb_ack_16bit(%struct.snd_sb*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
