; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_validate_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_validate_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"Not enough video ram for mode (%d KByte vs %d KByte).\0A\00", align 1
@HACTIVE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"X resolution too large (%d vs %d).\0A\00", align 1
@VACTIVE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Y resolution too large (%d vs %d).\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"X resolution too small (%d vs 4).\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Y resolution too small (%d vs 4).\0A\00", align 1
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Mode is double-scan.\0A\00", align 1
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Odd number of lines in interlaced mode\0A\00", align 1
@MIN_CLOCK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Pixel clock is too low (%d MHz vs %d MHz).\0A\00", align 1
@MAX_CLOCK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"Pixel clock is too high (%d MHz vs %d MHz).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intelfbhw_validate_mode(%struct.intelfb_info* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intelfb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %10, 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.intelfb_info*, %struct.intelfb_info** %4, align 8
  %27 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %25, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %15
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @BtoKB(i32 %32)
  %34 = load %struct.intelfb_info*, %struct.intelfb_info** %4, align 8
  %35 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BtoKB(i32 %37)
  %39 = call i32 (i8*, ...) @WRN_MSG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38)
  store i32 1, i32* %3, align 4
  br label %139

40:                                               ; preds = %15
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* @HACTIVE_MASK, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HACTIVE_MASK, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 (i8*, ...) @WRN_MSG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %52)
  store i32 1, i32* %3, align 4
  br label %139

54:                                               ; preds = %40
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* @VACTIVE_MASK, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @VACTIVE_MASK, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i32 (i8*, ...) @WRN_MSG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %66)
  store i32 1, i32* %3, align 4
  br label %139

68:                                               ; preds = %54
  %69 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %70 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 4
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @WRN_MSG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  store i32 1, i32* %3, align 4
  br label %139

78:                                               ; preds = %68
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @WRN_MSG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  store i32 1, i32* %3, align 4
  br label %139

88:                                               ; preds = %78
  %89 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = call i32 (i8*, ...) @WRN_MSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %139

97:                                               ; preds = %88
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %97
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 1
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = call i32 (i8*, ...) @WRN_MSG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %139

112:                                              ; preds = %104, %97
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = sdiv i32 1000000000, %115
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @MIN_CLOCK, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %112
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 500
  %123 = sdiv i32 %122, 1000
  %124 = load i32, i32* @MIN_CLOCK, align 4
  %125 = sdiv i32 %124, 1000
  %126 = call i32 (i8*, ...) @WRN_MSG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %123, i32 %125)
  store i32 1, i32* %3, align 4
  br label %139

127:                                              ; preds = %112
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @MAX_CLOCK, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 500
  %134 = sdiv i32 %133, 1000
  %135 = load i32, i32* @MAX_CLOCK, align 4
  %136 = sdiv i32 %135, 1000
  %137 = call i32 (i8*, ...) @WRN_MSG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %134, i32 %136)
  store i32 1, i32* %3, align 4
  br label %139

138:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %131, %120, %110, %95, %83, %73, %61, %47, %31
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @WRN_MSG(i8*, ...) #1

declare dso_local i32 @BtoKB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
