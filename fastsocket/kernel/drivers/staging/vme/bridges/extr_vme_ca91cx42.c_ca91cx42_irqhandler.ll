; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_irqhandler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_irqhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@ca91cx42_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@LINT_EN = common dso_local global i32 0, align 4
@LINT_STAT = common dso_local global i32 0, align 4
@CA91CX42_LINT_DMA = common dso_local global i32 0, align 4
@CA91CX42_LINT_LM0 = common dso_local global i32 0, align 4
@CA91CX42_LINT_LM1 = common dso_local global i32 0, align 4
@CA91CX42_LINT_LM2 = common dso_local global i32 0, align 4
@CA91CX42_LINT_LM3 = common dso_local global i32 0, align 4
@CA91CX42_LINT_MBOX = common dso_local global i32 0, align 4
@CA91CX42_LINT_SW_IACK = common dso_local global i32 0, align 4
@CA91CX42_LINT_VERR = common dso_local global i32 0, align 4
@CA91CX42_LINT_LERR = common dso_local global i32 0, align 4
@CA91CX42_LINT_VIRQ1 = common dso_local global i32 0, align 4
@CA91CX42_LINT_VIRQ2 = common dso_local global i32 0, align 4
@CA91CX42_LINT_VIRQ3 = common dso_local global i32 0, align 4
@CA91CX42_LINT_VIRQ4 = common dso_local global i32 0, align 4
@CA91CX42_LINT_VIRQ5 = common dso_local global i32 0, align 4
@CA91CX42_LINT_VIRQ6 = common dso_local global i32 0, align 4
@CA91CX42_LINT_VIRQ7 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ca91cx42_irqhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca91cx42_irqhandler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca91cx42_bridge, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %3, align 4
  br label %136

16:                                               ; preds = %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca91cx42_bridge, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @LINT_EN, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %19, i64 %21
  %23 = call i32 @ioread32(i8* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca91cx42_bridge, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* @LINT_STAT, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %26, i64 %28
  %30 = call i32 @ioread32(i8* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %16
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %3, align 4
  br label %136

42:                                               ; preds = %16
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @CA91CX42_LINT_DMA, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = call i32 (...) @ca91cx42_DMA_irqhandler()
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @CA91CX42_LINT_LM0, align 4
  %54 = load i32, i32* @CA91CX42_LINT_LM1, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @CA91CX42_LINT_LM2, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CA91CX42_LINT_LM3, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %52, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @ca91cx42_LM_irqhandler(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %62, %51
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @CA91CX42_LINT_MBOX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @ca91cx42_MB_irqhandler(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @CA91CX42_LINT_SW_IACK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = call i32 (...) @ca91cx42_IACK_irqhandler()
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @CA91CX42_LINT_VERR, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = call i32 (...) @ca91cx42_VERR_irqhandler()
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %91, %86
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @CA91CX42_LINT_LERR, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = call i32 (...) @ca91cx42_LERR_irqhandler()
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %100, %95
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @CA91CX42_LINT_VIRQ1, align 4
  %107 = load i32, i32* @CA91CX42_LINT_VIRQ2, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @CA91CX42_LINT_VIRQ3, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @CA91CX42_LINT_VIRQ4, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @CA91CX42_LINT_VIRQ5, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @CA91CX42_LINT_VIRQ6, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @CA91CX42_LINT_VIRQ7, align 4
  %118 = or i32 %116, %117
  %119 = and i32 %105, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %104
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @ca91cx42_VIRQ_irqhandler(i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %121, %104
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca91cx42_bridge, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* @LINT_STAT, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr i8, i8* %130, i64 %132
  %134 = call i32 @iowrite32(i32 %127, i8* %133)
  %135 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %126, %40, %14
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @ioread32(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ca91cx42_DMA_irqhandler(...) #1

declare dso_local i32 @ca91cx42_LM_irqhandler(i32) #1

declare dso_local i32 @ca91cx42_MB_irqhandler(i32) #1

declare dso_local i32 @ca91cx42_IACK_irqhandler(...) #1

declare dso_local i32 @ca91cx42_VERR_irqhandler(...) #1

declare dso_local i32 @ca91cx42_LERR_irqhandler(...) #1

declare dso_local i32 @ca91cx42_VIRQ_irqhandler(i32) #1

declare dso_local i32 @iowrite32(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
