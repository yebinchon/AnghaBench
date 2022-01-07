; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_pxafb_enable_controller.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_pxafb_enable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxafb_info = type { i32*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"pxafb: Enabling LCD controller\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"fdadr0 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fdadr1 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"reg_lccr0 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"reg_lccr1 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"reg_lccr2 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"reg_lccr3 0x%08x\0A\00", align 1
@LCCR0_LCDT = common dso_local global i32 0, align 4
@LCCR4 = common dso_local global i32 0, align 4
@LCCR3 = common dso_local global i32 0, align 4
@LCCR2 = common dso_local global i32 0, align 4
@LCCR1 = common dso_local global i32 0, align 4
@LCCR0 = common dso_local global i32 0, align 4
@LCCR0_ENB = common dso_local global i32 0, align 4
@FDADR0 = common dso_local global i32 0, align 4
@FDADR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxafb_info*)* @pxafb_enable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxafb_enable_controller(%struct.pxafb_info* %0) #0 {
  %2 = alloca %struct.pxafb_info*, align 8
  store %struct.pxafb_info* %0, %struct.pxafb_info** %2, align 8
  %3 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %5 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %11 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %17 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %21 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %22)
  %24 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %25 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %26)
  %28 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %29 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %30)
  %32 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %33 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_enable(i32 %34)
  %36 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %37 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @LCCR0_LCDT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  br label %101

43:                                               ; preds = %1
  %44 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %45 = load i32, i32* @LCCR4, align 4
  %46 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %47 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @lcd_writel(%struct.pxafb_info* %44, i32 %45, i32 %48)
  %50 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %51 = load i32, i32* @LCCR3, align 4
  %52 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %53 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @lcd_writel(%struct.pxafb_info* %50, i32 %51, i32 %54)
  %56 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %57 = load i32, i32* @LCCR2, align 4
  %58 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %59 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @lcd_writel(%struct.pxafb_info* %56, i32 %57, i32 %60)
  %62 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %63 = load i32, i32* @LCCR1, align 4
  %64 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %65 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @lcd_writel(%struct.pxafb_info* %62, i32 %63, i32 %66)
  %68 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %69 = load i32, i32* @LCCR0, align 4
  %70 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %71 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @LCCR0_ENB, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = call i32 @lcd_writel(%struct.pxafb_info* %68, i32 %69, i32 %75)
  %77 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %78 = load i32, i32* @FDADR0, align 4
  %79 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %80 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @lcd_writel(%struct.pxafb_info* %77, i32 %78, i32 %83)
  %85 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %86 = load i32, i32* @FDADR1, align 4
  %87 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %88 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @lcd_writel(%struct.pxafb_info* %85, i32 %86, i32 %91)
  %93 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %94 = load i32, i32* @LCCR0, align 4
  %95 = load %struct.pxafb_info*, %struct.pxafb_info** %2, align 8
  %96 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @LCCR0_ENB, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @lcd_writel(%struct.pxafb_info* %93, i32 %94, i32 %99)
  br label %101

101:                                              ; preds = %43, %42
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @lcd_writel(%struct.pxafb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
