; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_hwa742.c_calc_hwa742_clk_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_hwa742.c_calc_hwa742_clk_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HWA742_CLK_SRC_REG = common dso_local global i32 0, align 4
@HWA742_PLL_DIV_REG = common dso_local global i32 0, align 4
@HWA742_PLL_4_REG = common dso_local global i32 0, align 4
@hwa742 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [57 x i8] c"ext_clk %ld pix_src %d pix_div %d sys_div %d sys_mul %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"sys_clk %ld pix_clk %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*, i64*)* @calc_hwa742_clk_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_hwa742_clk_rates(i64 %0, i64* %1, i64* %2) #0 {
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
  %11 = load i32, i32* @HWA742_CLK_SRC_REG, align 4
  %12 = call i32 @hwa742_read_reg(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = ashr i32 %13, 3
  %15 = and i32 %14, 31
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %3
  %21 = load i32, i32* @HWA742_PLL_DIV_REG, align 4
  %22 = call i32 @hwa742_read_reg(i32 %21)
  %23 = and i32 %22, 63
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @HWA742_PLL_4_REG, align 4
  %26 = call i32 @hwa742_read_reg(i32 %25)
  %27 = and i32 %26, 127
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %29, %31
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %32, %34
  %36 = load i64*, i64** %5, align 8
  store i64 %35, i64* %36, align 8
  br label %40

37:                                               ; preds = %3
  %38 = load i64, i64* %4, align 8
  %39 = load i64*, i64** %5, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %20
  %41 = load i64*, i64** %5, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %42, %44
  %46 = load i64*, i64** %6, align 8
  store i64 %45, i64* %46, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 0), align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 6
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i32, i8*, i64, i64, ...) @dev_dbg(i32 %49, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %50, i64 %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 0), align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64*, i64** %5, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %6, align 8
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32, i8*, i64, i64, ...) @dev_dbg(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %62, i64 %64)
  ret void
}

declare dso_local i32 @hwa742_read_reg(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
