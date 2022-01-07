; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_carminefb.c_set_display_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_carminefb.c_set_display_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carmine_fb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CARMINE_DISP_REG_H_TOTAL = common dso_local global i32 0, align 4
@CARMINE_DISP_HTP_SHIFT = common dso_local global i32 0, align 4
@CARMINE_DISP_REG_H_PERIOD = common dso_local global i32 0, align 4
@CARMINE_DISP_HDB_SHIFT = common dso_local global i32 0, align 4
@CARMINE_DISP_REG_V_H_W_H_POS = common dso_local global i32 0, align 4
@CARMINE_DISP_VSW_SHIFT = common dso_local global i32 0, align 4
@CARMINE_DISP_HSW_SHIFT = common dso_local global i32 0, align 4
@CARMINE_DISP_REG_V_TOTAL = common dso_local global i32 0, align 4
@CARMINE_DISP_VTR_SHIFT = common dso_local global i32 0, align 4
@CARMINE_DISP_REG_V_PERIOD_POS = common dso_local global i32 0, align 4
@CARMINE_DISP_VDP_SHIFT = common dso_local global i32 0, align 4
@CARMINE_DISP_REG_DCM1 = common dso_local global i32 0, align 4
@CARMINE_DISP_DCM_MASK = common dso_local global i32 0, align 4
@CARMINE_DEN = common dso_local global i32 0, align 4
@CARMINE_L0E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carmine_fb*)* @set_display_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_display_parameters(%struct.carmine_fb* %0) #0 {
  %2 = alloca %struct.carmine_fb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.carmine_fb* %0, %struct.carmine_fb** %2, align 8
  %12 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %13 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  %18 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %19 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %25 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  %30 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %31 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %37 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %43 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %49 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %55 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  %60 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %61 = load i32, i32* @CARMINE_DISP_REG_H_TOTAL, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @CARMINE_DISP_HTP_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = call i32 @c_set_disp_reg(%struct.carmine_fb* %60, i32 %61, i32 %64)
  %66 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %67 = load i32, i32* @CARMINE_DISP_REG_H_PERIOD, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @CARMINE_DISP_HDB_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @c_set_disp_reg(%struct.carmine_fb* %66, i32 %67, i32 %72)
  %74 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %75 = load i32, i32* @CARMINE_DISP_REG_V_H_W_H_POS, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @CARMINE_DISP_VSW_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @CARMINE_DISP_HSW_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %78, %81
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @c_set_disp_reg(%struct.carmine_fb* %74, i32 %75, i32 %84)
  %86 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %87 = load i32, i32* @CARMINE_DISP_REG_V_TOTAL, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @CARMINE_DISP_VTR_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = call i32 @c_set_disp_reg(%struct.carmine_fb* %86, i32 %87, i32 %90)
  %92 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %93 = load i32, i32* @CARMINE_DISP_REG_V_PERIOD_POS, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @CARMINE_DISP_VDP_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @c_set_disp_reg(%struct.carmine_fb* %92, i32 %93, i32 %98)
  %100 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %101 = load i32, i32* @CARMINE_DISP_REG_DCM1, align 4
  %102 = call i32 @c_get_disp_reg(%struct.carmine_fb* %100, i32 %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @CARMINE_DISP_DCM_MASK, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  %107 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %108 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CARMINE_DISP_DCM_MASK, align 4
  %113 = and i32 %111, %112
  %114 = or i32 %106, %113
  store i32 %114, i32* %3, align 4
  %115 = load i32, i32* @CARMINE_DEN, align 4
  %116 = load i32, i32* @CARMINE_L0E, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %3, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %3, align 4
  %120 = load %struct.carmine_fb*, %struct.carmine_fb** %2, align 8
  %121 = load i32, i32* @CARMINE_DISP_REG_DCM1, align 4
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @c_set_disp_reg(%struct.carmine_fb* %120, i32 %121, i32 %122)
  ret void
}

declare dso_local i32 @c_set_disp_reg(%struct.carmine_fb*, i32, i32) #1

declare dso_local i32 @c_get_disp_reg(%struct.carmine_fb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
