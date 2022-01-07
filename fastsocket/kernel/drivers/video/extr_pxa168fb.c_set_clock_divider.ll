; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxa168fb.c_set_clock_divider.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxa168fb.c_set_clock_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa168fb_info = type { i64, i32, i32 }
%struct.fb_videomode = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Input refresh or pixclock is wrong.\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Warning: clock source is too slow.Try smaller resolution\0A\00", align 1
@LCD_CFG_SCLK_DIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa168fb_info*, %struct.fb_videomode*)* @set_clock_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_clock_divider(%struct.pxa168fb_info* %0, %struct.fb_videomode* %1) #0 {
  %3 = alloca %struct.pxa168fb_info*, align 8
  %4 = alloca %struct.fb_videomode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pxa168fb_info* %0, %struct.pxa168fb_info** %3, align 8
  store %struct.fb_videomode* %1, %struct.fb_videomode** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %10 = icmp ne %struct.fb_videomode* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %13 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %18 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16, %11, %2
  %22 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %58

26:                                               ; preds = %16
  store i32 -2147483648, i32* %8, align 4
  store i64 1000000000000, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %29 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @do_div(i64 %27, i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %35 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_get_rate(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %44 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_warn(i32 %45, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %26
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %53 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LCD_CFG_SCLK_DIV, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  br label %58

58:                                               ; preds = %47, %21
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
