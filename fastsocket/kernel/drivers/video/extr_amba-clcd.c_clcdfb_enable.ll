; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_amba-clcd.c_clcdfb_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_amba-clcd.c_clcdfb_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clcd_fb = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.clcd_fb*)* }

@CNTL_LCDEN = common dso_local global i32 0, align 4
@CLCD_CNTL = common dso_local global i64 0, align 8
@CNTL_LCDPWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clcd_fb*, i32)* @clcdfb_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clcdfb_enable(%struct.clcd_fb* %0, i32 %1) #0 {
  %3 = alloca %struct.clcd_fb*, align 8
  %4 = alloca i32, align 4
  store %struct.clcd_fb* %0, %struct.clcd_fb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %6 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @clk_enable(i32 %7)
  %9 = load i32, i32* @CNTL_LCDEN, align 4
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %14 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CLCD_CNTL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = call i32 @clcdfb_sleep(i32 20)
  %20 = load i32, i32* @CNTL_LCDPWR, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %25 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CLCD_CNTL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %31 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.clcd_fb*)*, i32 (%struct.clcd_fb*)** %33, align 8
  %35 = icmp ne i32 (%struct.clcd_fb*)* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %2
  %37 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %38 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.clcd_fb*)*, i32 (%struct.clcd_fb*)** %40, align 8
  %42 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %43 = call i32 %41(%struct.clcd_fb* %42)
  br label %44

44:                                               ; preds = %36, %2
  ret void
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clcdfb_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
