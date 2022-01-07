; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s1d13xxxfb.c_s1d13xxxfb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s1d13xxxfb.c_s1d13xxxfb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.s1d13xxxfb_par* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.s1d13xxxfb_par = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"s1d13xxxfb_set_par: bpp=%d\0A\00", align 1
@S1DREG_LCD_DISP_MODE = common dso_local global i32 0, align 4
@S1DREG_CRT_DISP_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"pseudo colour 4\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"pseudo colour 8\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"true colour\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"bpp not supported!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"writing %02x to display mode register\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"setting line_length to %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"done setup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @s1d13xxxfb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s1d13xxxfb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.s1d13xxxfb_par*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 2
  %8 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %7, align 8
  store %struct.s1d13xxxfb_par* %8, %struct.s1d13xxxfb_par** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %4, align 8
  %15 = getelementptr inbounds %struct.s1d13xxxfb_par, %struct.s1d13xxxfb_par* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %4, align 8
  %21 = load i32, i32* @S1DREG_LCD_DISP_MODE, align 4
  %22 = call i32 @s1d13xxxfb_readreg(%struct.s1d13xxxfb_par* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %4, align 8
  %25 = load i32, i32* @S1DREG_CRT_DISP_MODE, align 4
  %26 = call i32 @s1d13xxxfb_readreg(%struct.s1d13xxxfb_par* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, -8
  store i32 %29, i32* %5, align 4
  %30 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %52 [
    i32 4, label %34
    i32 8, label %40
    i32 16, label %46
  ]

34:                                               ; preds = %27
  %35 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = call i32 @s1d13xxxfb_setup_pseudocolour(%struct.fb_info* %36)
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, 2
  store i32 %39, i32* %5, align 4
  br label %56

40:                                               ; preds = %27
  %41 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %43 = call i32 @s1d13xxxfb_setup_pseudocolour(%struct.fb_info* %42)
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, 3
  store i32 %45, i32* %5, align 4
  br label %56

46:                                               ; preds = %27
  %47 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %49 = call i32 @s1d13xxxfb_setup_truecolour(%struct.fb_info* %48)
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, 5
  store i32 %51, i32* %5, align 4
  br label %56

52:                                               ; preds = %27
  %53 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %98

56:                                               ; preds = %46, %40, %34
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %4, align 8
  %60 = getelementptr inbounds %struct.s1d13xxxfb_par, %struct.s1d13xxxfb_par* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %4, align 8
  %66 = load i32, i32* @S1DREG_LCD_DISP_MODE, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @s1d13xxxfb_writereg(%struct.s1d13xxxfb_par* %65, i32 %66, i32 %67)
  br label %74

69:                                               ; preds = %56
  %70 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %4, align 8
  %71 = load i32, i32* @S1DREG_CRT_DISP_MODE, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @s1d13xxxfb_writereg(%struct.s1d13xxxfb_par* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %78, %82
  %84 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %88 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sdiv i32 %90, 8
  store i32 %91, i32* %89, align 8
  %92 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %93 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  %97 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %74, %52
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @s1d13xxxfb_readreg(%struct.s1d13xxxfb_par*, i32) #1

declare dso_local i32 @s1d13xxxfb_setup_pseudocolour(%struct.fb_info*) #1

declare dso_local i32 @s1d13xxxfb_setup_truecolour(%struct.fb_info*) #1

declare dso_local i32 @s1d13xxxfb_writereg(%struct.s1d13xxxfb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
