; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_cs43xx.c_cs43xx_registers_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_cs43xx.c_cs43xx_registers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_cs43xx* }
%struct.xonar_cs43xx = type { i32*, i32* }

@CS4398_CPEN = common dso_local global i32 0, align 4
@CS4398_PDN = common dso_local global i32 0, align 4
@CS4362A_PDN = common dso_local global i32 0, align 4
@CS4362A_CPEN = common dso_local global i32 0, align 4
@CS4398_ATAPI_B_R = common dso_local global i32 0, align 4
@CS4398_ATAPI_A_L = common dso_local global i32 0, align 4
@CS4362A_DIF_LJUST = common dso_local global i32 0, align 4
@CS4362A_MUTEC_6 = common dso_local global i32 0, align 4
@CS4362A_AMUTE = common dso_local global i32 0, align 4
@CS4362A_RMP_UP = common dso_local global i32 0, align 4
@CS4362A_ZERO_CROSS = common dso_local global i32 0, align 4
@CS4362A_SOFT_RAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @cs43xx_registers_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs43xx_registers_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_cs43xx*, align 8
  %4 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %5 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %6 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %5, i32 0, i32 0
  %7 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %6, align 8
  store %struct.xonar_cs43xx* %7, %struct.xonar_cs43xx** %3, align 8
  %8 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %9 = load i32, i32* @CS4398_CPEN, align 4
  %10 = load i32, i32* @CS4398_PDN, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @cs4398_write(%struct.oxygen* %8, i32 8, i32 %11)
  %13 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %14 = load i32, i32* @CS4362A_PDN, align 4
  %15 = load i32, i32* @CS4362A_CPEN, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @cs4362a_write(%struct.oxygen* %13, i32 1, i32 %16)
  %18 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %19 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %20 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cs4398_write(%struct.oxygen* %18, i32 2, i32 %23)
  %25 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %26 = load i32, i32* @CS4398_ATAPI_B_R, align 4
  %27 = load i32, i32* @CS4398_ATAPI_A_L, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @cs4398_write(%struct.oxygen* %25, i32 3, i32 %28)
  %30 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %31 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %32 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cs4398_write(%struct.oxygen* %30, i32 4, i32 %35)
  %37 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %38 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %39 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cs4398_write(%struct.oxygen* %37, i32 5, i32 %42)
  %44 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %45 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %46 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cs4398_write(%struct.oxygen* %44, i32 6, i32 %49)
  %51 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %52 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %53 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 7
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cs4398_write(%struct.oxygen* %51, i32 7, i32 %56)
  %58 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %59 = load i32, i32* @CS4362A_DIF_LJUST, align 4
  %60 = call i32 @cs4362a_write(%struct.oxygen* %58, i32 2, i32 %59)
  %61 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %62 = load i32, i32* @CS4362A_MUTEC_6, align 4
  %63 = load i32, i32* @CS4362A_AMUTE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @CS4362A_RMP_UP, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CS4362A_ZERO_CROSS, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @CS4362A_SOFT_RAMP, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @cs4362a_write(%struct.oxygen* %61, i32 3, i32 %70)
  %72 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %73 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %74 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cs4362a_write(%struct.oxygen* %72, i32 4, i32 %77)
  %79 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %80 = call i32 @cs4362a_write(%struct.oxygen* %79, i32 5, i32 0)
  store i32 6, i32* %4, align 4
  br label %81

81:                                               ; preds = %95, %1
  %82 = load i32, i32* %4, align 4
  %83 = icmp ule i32 %82, 14
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %88 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @cs4362a_write(%struct.oxygen* %85, i32 %86, i32 %93)
  br label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %4, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %81

98:                                               ; preds = %81
  %99 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %100 = load i32, i32* @CS4398_CPEN, align 4
  %101 = call i32 @cs4398_write(%struct.oxygen* %99, i32 8, i32 %100)
  %102 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %103 = load i32, i32* @CS4362A_CPEN, align 4
  %104 = call i32 @cs4362a_write(%struct.oxygen* %102, i32 1, i32 %103)
  ret void
}

declare dso_local i32 @cs4398_write(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @cs4362a_write(%struct.oxygen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
