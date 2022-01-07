; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_priv = type { %struct.sh_mobile_lcdc_chan* }
%struct.sh_mobile_lcdc_chan = type { i32, i64, i64, %struct.sh_mobile_lcdc_priv*, i64, i32, i32 }

@_LDINTR = common dso_local global i32 0, align 4
@LDINTR_VEE = common dso_local global i32 0, align 4
@_LDSR = common dso_local global i32 0, align 4
@LDINTR_FS = common dso_local global i64 0, align 8
@LDINTR_VES = common dso_local global i64 0, align 8
@_LDRCNTR = common dso_local global i32 0, align 4
@LDSA1R = common dso_local global i32 0, align 4
@LDRCNTR_SRS = common dso_local global i64 0, align 8
@LDRCNTR_MRS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sh_mobile_lcdc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %6 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.sh_mobile_lcdc_priv*
  store %struct.sh_mobile_lcdc_priv* %13, %struct.sh_mobile_lcdc_priv** %5, align 8
  %14 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %15 = load i32, i32* @_LDINTR, align 4
  %16 = call i32 @lcdc_read(%struct.sh_mobile_lcdc_priv* %14, i32 %15)
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* @LDINTR_VEE, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 -256, %19
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %7, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %7, align 8
  %24 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %25 = load i32, i32* @_LDINTR, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %24, i32 %25, i64 %26)
  %28 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %29 = load i32, i32* @_LDSR, align 4
  %30 = call i32 @lcdc_read(%struct.sh_mobile_lcdc_priv* %28, i32 %29)
  %31 = and i32 %30, 1024
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  store i32 %34, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %121, %2
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %38 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %37, i32 0, i32 0
  %39 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %38, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan* %39)
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %124

42:                                               ; preds = %35
  %43 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %44 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %43, i32 0, i32 0
  %45 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %45, i64 %47
  store %struct.sh_mobile_lcdc_chan* %48, %struct.sh_mobile_lcdc_chan** %6, align 8
  %49 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %50 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %121

54:                                               ; preds = %42
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @LDINTR_FS, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %62 = call i32 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan* %61)
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %66 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %68 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %67, i32 0, i32 5
  %69 = call i32 @wake_up(i32* %68)
  %70 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %71 = call i32 @sh_mobile_lcdc_clk_off(%struct.sh_mobile_lcdc_priv* %70)
  br label %72

72:                                               ; preds = %64, %59
  br label %73

73:                                               ; preds = %72, %54
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @LDINTR_VES, align 8
  %76 = and i64 %74, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %120

78:                                               ; preds = %73
  %79 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %80 = load i32, i32* @_LDRCNTR, align 4
  %81 = call i32 @lcdc_read(%struct.sh_mobile_lcdc_priv* %79, i32 %80)
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %11, align 8
  %83 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %84 = load i32, i32* @LDSA1R, align 4
  %85 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %86 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %89 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = call i32 @lcdc_write_chan_mirror(%struct.sh_mobile_lcdc_chan* %83, i32 %84, i64 %91)
  %93 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %94 = call i32 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %78
  %97 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %98 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %97, i32 0, i32 3
  %99 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %98, align 8
  %100 = load i32, i32* @_LDRCNTR, align 4
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* @LDRCNTR_SRS, align 8
  %103 = xor i64 %101, %102
  %104 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %99, i32 %100, i64 %103)
  br label %114

105:                                              ; preds = %78
  %106 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %107 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %106, i32 0, i32 3
  %108 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %107, align 8
  %109 = load i32, i32* @_LDRCNTR, align 4
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* @LDRCNTR_MRS, align 8
  %112 = xor i64 %110, %111
  %113 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %108, i32 %109, i64 %112)
  br label %114

114:                                              ; preds = %105, %96
  %115 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %116 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %119 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %114, %73
  br label %121

121:                                              ; preds = %120, %53
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %35

124:                                              ; preds = %35
  %125 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %125
}

declare dso_local i32 @lcdc_read(%struct.sh_mobile_lcdc_priv*, i32) #1

declare dso_local i32 @lcdc_write(%struct.sh_mobile_lcdc_priv*, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @sh_mobile_lcdc_clk_off(%struct.sh_mobile_lcdc_priv*) #1

declare dso_local i32 @lcdc_write_chan_mirror(%struct.sh_mobile_lcdc_chan*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
