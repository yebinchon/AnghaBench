; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_calc_blizzard_clk_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_calc_blizzard_clk_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BLIZZARD_CLK_SRC = common dso_local global i32 0, align 4
@BLIZZARD_PLL_DIV = common dso_local global i32 0, align 4
@BLIZZARD_PLL_CLOCK_SYNTH_0 = common dso_local global i32 0, align 4
@BLIZZARD_PLL_CLOCK_SYNTH_1 = common dso_local global i32 0, align 4
@blizzard = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [57 x i8] c"ext_clk %ld pix_src %d pix_div %d sys_div %d sys_mul %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"sys_clk %ld pix_clk %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*, i64*)* @calc_blizzard_clk_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_blizzard_clk_rates(i64 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @BLIZZARD_CLK_SRC, align 4
  %12 = call i32 @blizzard_read_reg(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = ashr i32 %13, 3
  %15 = and i32 %14, 31
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %3
  %21 = load i32, i32* @BLIZZARD_PLL_DIV, align 4
  %22 = call i32 @blizzard_read_reg(i32 %21)
  %23 = and i32 %22, 63
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @BLIZZARD_PLL_CLOCK_SYNTH_0, align 4
  %26 = call i32 @blizzard_read_reg(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @BLIZZARD_PLL_CLOCK_SYNTH_1, align 4
  %28 = call i32 @blizzard_read_reg(i32 %27)
  %29 = and i32 %28, 15
  %30 = shl i32 %29, 11
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %33, %35
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %36, %38
  %40 = load i64*, i64** %5, align 8
  store i64 %39, i64* %40, align 8
  br label %44

41:                                               ; preds = %3
  %42 = load i64, i64* %4, align 8
  %43 = load i64*, i64** %5, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %20
  %45 = load i64*, i64** %5, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %46, %48
  %50 = load i64*, i64** %6, align 8
  store i64 %49, i64* %50, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 6
  %57 = sext i32 %56 to i64
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i32, i8*, i64, i64, ...) @dev_dbg(i32 %53, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64*, i64** %5, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %6, align 8
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32, i8*, i64, i64, ...) @dev_dbg(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %68)
  ret void
}

declare dso_local i32 @blizzard_read_reg(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
