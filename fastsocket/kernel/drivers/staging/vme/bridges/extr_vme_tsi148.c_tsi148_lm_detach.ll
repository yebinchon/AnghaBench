; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_lm_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_lm_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vme_lm_resource = type { i32 }

@tsi148_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@TSI148_LCSR_INTEN = common dso_local global i64 0, align 8
@TSI148_LCSR_INTEN_LMEN = common dso_local global i32* null, align 8
@TSI148_LCSR_INTEO = common dso_local global i64 0, align 8
@TSI148_LCSR_INTEO_LMEO = common dso_local global i32* null, align 8
@TSI148_LCSR_INTC_LMC = common dso_local global i32* null, align 8
@lm_callback = common dso_local global i32** null, align 8
@TSI148_LCSR_INTS_LM0S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_LM1S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_LM2S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_LM3S = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT = common dso_local global i64 0, align 8
@TSI148_LCSR_LMAT_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsi148_lm_detach(%struct.vme_lm_resource* %0, i32 %1) #0 {
  %3 = alloca %struct.vme_lm_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vme_lm_resource* %0, %struct.vme_lm_resource** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %3, align 8
  %8 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TSI148_LCSR_INTEN, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @ioread32be(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** @TSI148_LCSR_INTEN_LMEN, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TSI148_LCSR_INTEN, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @iowrite32be(i32 %24, i64 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TSI148_LCSR_INTEO, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @ioread32be(i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32*, i32** @TSI148_LCSR_INTEO_LMEO, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TSI148_LCSR_INTEO, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @iowrite32be(i32 %45, i64 %50)
  %52 = load i32*, i32** @TSI148_LCSR_INTC_LMC, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TSI148_LCSR_INTEO, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @iowrite32be(i32 %56, i64 %61)
  %63 = load i32**, i32*** @lm_callback, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  store i32* null, i32** %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @TSI148_LCSR_INTS_LM0S, align 4
  %69 = load i32, i32* @TSI148_LCSR_INTS_LM1S, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @TSI148_LCSR_INTS_LM2S, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @TSI148_LCSR_INTS_LM3S, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %67, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TSI148_LCSR_LMAT, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @ioread32be(i64 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* @TSI148_LCSR_LMAT_EN, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TSI148_LCSR_LMAT, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @iowrite32be(i32 %88, i64 %93)
  br label %95

95:                                               ; preds = %77, %2
  %96 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %3, align 8
  %97 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
