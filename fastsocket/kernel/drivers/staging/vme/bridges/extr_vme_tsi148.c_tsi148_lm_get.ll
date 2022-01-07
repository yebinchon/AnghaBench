; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_lm_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_lm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vme_lm_resource = type { i32 }

@tsi148_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@TSI148_LCSR_LMBAU = common dso_local global i64 0, align 8
@TSI148_LCSR_LMBAL = common dso_local global i64 0, align 8
@TSI148_LCSR_LMAT = common dso_local global i64 0, align 8
@TSI148_LCSR_LMAT_EN = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_M = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A16 = common dso_local global i32 0, align 4
@VME_A16 = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A24 = common dso_local global i32 0, align 4
@VME_A24 = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A32 = common dso_local global i32 0, align 4
@VME_A32 = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A64 = common dso_local global i32 0, align 4
@VME_A64 = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_SUPR = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_NPRIV = common dso_local global i32 0, align 4
@VME_USER = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_PGM = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_DATA = common dso_local global i32 0, align 4
@VME_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsi148_lm_get(%struct.vme_lm_resource* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.vme_lm_resource*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vme_lm_resource* %0, %struct.vme_lm_resource** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %5, align 8
  %14 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TSI148_LCSR_LMBAU, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @ioread32be(i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TSI148_LCSR_LMBAL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @ioread32be(i64 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TSI148_LCSR_LMAT, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @ioread32be(i64 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i64*, i64** %6, align 8
  %37 = call i32 @reg_join(i32 %34, i32 %35, i64* %36)
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @TSI148_LCSR_LMAT_EN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @TSI148_LCSR_LMAT_AS_M, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @TSI148_LCSR_LMAT_AS_A16, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* @VME_A16, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %43
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @TSI148_LCSR_LMAT_AS_M, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @TSI148_LCSR_LMAT_AS_A24, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32, i32* @VME_A24, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %54
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @TSI148_LCSR_LMAT_AS_M, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @TSI148_LCSR_LMAT_AS_A32, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i32, i32* @VME_A32, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %65
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @TSI148_LCSR_LMAT_AS_M, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @TSI148_LCSR_LMAT_AS_A64, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i32, i32* @VME_A64, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %76
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @TSI148_LCSR_LMAT_SUPR, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* @VME_SUPER, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @TSI148_LCSR_LMAT_NPRIV, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* @VME_USER, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %102, %97
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @TSI148_LCSR_LMAT_PGM, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32, i32* @VME_PROG, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %112, %107
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @TSI148_LCSR_LMAT_DATA, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load i32, i32* @VME_DATA, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122, %117
  %128 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %5, align 8
  %129 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* %12, align 4
  ret i32 %131
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @reg_join(i32, i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
