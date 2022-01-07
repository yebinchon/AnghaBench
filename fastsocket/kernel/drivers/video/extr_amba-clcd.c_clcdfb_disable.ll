; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_amba-clcd.c_clcdfb_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_amba-clcd.c_clcdfb_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clcd_fb = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.clcd_fb*)* }

@CLCD_CNTL = common dso_local global i64 0, align 8
@CNTL_LCDPWR = common dso_local global i32 0, align 4
@CNTL_LCDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clcd_fb*)* @clcdfb_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clcdfb_disable(%struct.clcd_fb* %0) #0 {
  %2 = alloca %struct.clcd_fb*, align 8
  %3 = alloca i32, align 4
  store %struct.clcd_fb* %0, %struct.clcd_fb** %2, align 8
  %4 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %5 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.clcd_fb*)*, i32 (%struct.clcd_fb*)** %7, align 8
  %9 = icmp ne i32 (%struct.clcd_fb*)* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %12 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.clcd_fb*)*, i32 (%struct.clcd_fb*)** %14, align 8
  %16 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %17 = call i32 %15(%struct.clcd_fb* %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %20 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CLCD_CNTL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @CNTL_LCDPWR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %18
  %30 = load i32, i32* @CNTL_LCDPWR, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %36 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CLCD_CNTL, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = call i32 @clcdfb_sleep(i32 20)
  br label %42

42:                                               ; preds = %29, %18
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @CNTL_LCDEN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load i32, i32* @CNTL_LCDEN, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %54 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CLCD_CNTL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  br label %59

59:                                               ; preds = %47, %42
  %60 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %61 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @clk_disable(i32 %62)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clcdfb_sleep(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
