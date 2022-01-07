; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_lm_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_lm_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vme_lm_resource = type { i32, i32 }

@lm_callback = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [49 x i8] c"Location monitor callback attached, can't reset\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A16 = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A24 = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A32 = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_AS_A64 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid address space\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_SUPR = common dso_local global i32 0, align 4
@VME_USER = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_NPRIV = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_PGM = common dso_local global i32 0, align 4
@VME_DATA = common dso_local global i32 0, align 4
@TSI148_LCSR_LMAT_DATA = common dso_local global i32 0, align 4
@tsi148_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@TSI148_LCSR_LMBAU = common dso_local global i64 0, align 8
@TSI148_LCSR_LMBAL = common dso_local global i64 0, align 8
@TSI148_LCSR_LMAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsi148_lm_set(%struct.vme_lm_resource* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vme_lm_resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vme_lm_resource* %0, %struct.vme_lm_resource** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %15 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %38, %4
  %18 = load i32, i32* %13, align 4
  %19 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %20 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load i32**, i32*** @lm_callback, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %32 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %31, i32 0, i32 1
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = call i32 @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %129

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  br label %17

41:                                               ; preds = %17
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %59 [
    i32 131, label %43
    i32 130, label %47
    i32 129, label %51
    i32 128, label %55
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* @TSI148_LCSR_LMAT_AS_A16, align 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %66

47:                                               ; preds = %41
  %48 = load i32, i32* @TSI148_LCSR_LMAT_AS_A24, align 4
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %12, align 4
  br label %66

51:                                               ; preds = %41
  %52 = load i32, i32* @TSI148_LCSR_LMAT_AS_A32, align 4
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  br label %66

55:                                               ; preds = %41
  %56 = load i32, i32* @TSI148_LCSR_LMAT_AS_A64, align 4
  %57 = load i32, i32* %12, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %12, align 4
  br label %66

59:                                               ; preds = %41
  %60 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %61 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = call i32 @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %129

66:                                               ; preds = %55, %51, %47, %43
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @VME_SUPER, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @TSI148_LCSR_LMAT_SUPR, align 4
  %73 = load i32, i32* %12, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @VME_USER, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @TSI148_LCSR_LMAT_NPRIV, align 4
  %82 = load i32, i32* %12, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @VME_PROG, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @TSI148_LCSR_LMAT_PGM, align 4
  %91 = load i32, i32* %12, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @VME_DATA, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @TSI148_LCSR_LMAT_DATA, align 4
  %100 = load i32, i32* %12, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @reg_split(i64 %103, i32* %10, i32* %11)
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @TSI148_LCSR_LMBAU, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @iowrite32be(i32 %105, i64 %110)
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TSI148_LCSR_LMBAL, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @iowrite32be(i32 %112, i64 %117)
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TSI148_LCSR_LMAT, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @iowrite32be(i32 %119, i64 %124)
  %126 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %127 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %126, i32 0, i32 1
  %128 = call i32 @mutex_unlock(i32* %127)
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %102, %59, %30
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @reg_split(i64, i32*, i32*) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
