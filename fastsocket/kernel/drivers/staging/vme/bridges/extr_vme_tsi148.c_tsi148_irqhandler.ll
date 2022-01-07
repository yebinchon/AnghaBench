; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_irqhandler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_irqhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@tsi148_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@TSI148_LCSR_INTEO = common dso_local global i64 0, align 8
@TSI148_LCSR_INTS = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_DMA1S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_DMA0S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_LM3S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_LM2S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_LM1S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_LM0S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_MB3S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_MB2S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_MB1S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_MB0S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_PERRS = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_VERRS = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IACKS = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IRQ7S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IRQ6S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IRQ5S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IRQ4S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IRQ3S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IRQ2S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IRQ1S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTC = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tsi148_irqhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_irqhandler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TSI148_LCSR_INTEO, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @ioread32be(i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TSI148_LCSR_INTS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @ioread32be(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %134

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @TSI148_LCSR_INTS_DMA1S, align 4
  %35 = load i32, i32* @TSI148_LCSR_INTS_DMA0S, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @tsi148_DMA_irqhandler(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %39, %32
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @TSI148_LCSR_INTS_LM3S, align 4
  %47 = load i32, i32* @TSI148_LCSR_INTS_LM2S, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @TSI148_LCSR_INTS_LM1S, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @TSI148_LCSR_INTS_LM0S, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %45, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @tsi148_LM_irqhandler(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %55, %44
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @TSI148_LCSR_INTS_MB3S, align 4
  %63 = load i32, i32* @TSI148_LCSR_INTS_MB2S, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @TSI148_LCSR_INTS_MB1S, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @TSI148_LCSR_INTS_MB0S, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %61, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @tsi148_MB_irqhandler(i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %71, %60
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @TSI148_LCSR_INTS_PERRS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = call i32 (...) @tsi148_PERR_irqhandler()
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @TSI148_LCSR_INTS_VERRS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = call i32 (...) @tsi148_VERR_irqhandler()
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %90, %85
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @TSI148_LCSR_INTS_IACKS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = call i32 (...) @tsi148_IACK_irqhandler()
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @TSI148_LCSR_INTS_IRQ7S, align 4
  %106 = load i32, i32* @TSI148_LCSR_INTS_IRQ6S, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @TSI148_LCSR_INTS_IRQ5S, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @TSI148_LCSR_INTS_IRQ4S, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @TSI148_LCSR_INTS_IRQ3S, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @TSI148_LCSR_INTS_IRQ2S, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @TSI148_LCSR_INTS_IRQ1S, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %104, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %103
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @tsi148_VIRQ_irqhandler(i32 %121)
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %120, %103
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @TSI148_LCSR_INTC, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @iowrite32be(i32 %126, i64 %131)
  %133 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %125, %30
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tsi148_DMA_irqhandler(i32) #1

declare dso_local i32 @tsi148_LM_irqhandler(i32) #1

declare dso_local i32 @tsi148_MB_irqhandler(i32) #1

declare dso_local i32 @tsi148_PERR_irqhandler(...) #1

declare dso_local i32 @tsi148_VERR_irqhandler(...) #1

declare dso_local i32 @tsi148_IACK_irqhandler(...) #1

declare dso_local i32 @tsi148_VIRQ_irqhandler(i32) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
