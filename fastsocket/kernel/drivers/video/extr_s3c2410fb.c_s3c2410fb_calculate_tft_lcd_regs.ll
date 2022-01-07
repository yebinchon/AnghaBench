; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s3c2410fb.c_s3c2410fb_calculate_tft_lcd_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s3c2410fb.c_s3c2410fb_calculate_tft_lcd_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.s3c2410fb_info* }
%struct.fb_var_screeninfo = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.s3c2410fb_info = type { i32 }
%struct.s3c2410fb_hw = type { i32, i32, i32, i32, i32 }

@S3C2410_LCDCON1_TFT1BPP = common dso_local global i32 0, align 4
@S3C2410_LCDCON1_TFT2BPP = common dso_local global i32 0, align 4
@S3C2410_LCDCON1_TFT4BPP = common dso_local global i32 0, align 4
@S3C2410_LCDCON1_TFT8BPP = common dso_local global i32 0, align 4
@S3C2410_LCDCON5_BSWP = common dso_local global i32 0, align 4
@S3C2410_LCDCON5_FRM565 = common dso_local global i32 0, align 4
@S3C2410_LCDCON5_HWSWP = common dso_local global i32 0, align 4
@S3C2410_LCDCON1_TFT16BPP = common dso_local global i32 0, align 4
@S3C2410_LCDCON1_TFT24BPP = common dso_local global i32 0, align 4
@S3C2410_LCDCON5_BPP24BL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"invalid bpp %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"setting vert: up=%d, low=%d, sync=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"setting horz: lft=%d, rt=%d, sync=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.s3c2410fb_hw*)* @s3c2410fb_calculate_tft_lcd_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410fb_calculate_tft_lcd_regs(%struct.fb_info* %0, %struct.s3c2410fb_hw* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.s3c2410fb_hw*, align 8
  %5 = alloca %struct.s3c2410fb_info*, align 8
  %6 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.s3c2410fb_hw* %1, %struct.s3c2410fb_hw** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %8, align 8
  store %struct.s3c2410fb_info* %9, %struct.s3c2410fb_info** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  store %struct.fb_var_screeninfo* %11, %struct.fb_var_screeninfo** %6, align 8
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %85 [
    i32 1, label %15
    i32 2, label %21
    i32 4, label %27
    i32 8, label %33
    i32 16, label %52
    i32 32, label %69
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @S3C2410_LCDCON1_TFT1BPP, align 4
  %17 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %18 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %93

21:                                               ; preds = %2
  %22 = load i32, i32* @S3C2410_LCDCON1_TFT2BPP, align 4
  %23 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %24 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %93

27:                                               ; preds = %2
  %28 = load i32, i32* @S3C2410_LCDCON1_TFT4BPP, align 4
  %29 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %30 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %93

33:                                               ; preds = %2
  %34 = load i32, i32* @S3C2410_LCDCON1_TFT8BPP, align 4
  %35 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %36 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @S3C2410_LCDCON5_BSWP, align 4
  %40 = load i32, i32* @S3C2410_LCDCON5_FRM565, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %43 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @S3C2410_LCDCON5_HWSWP, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %49 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %93

52:                                               ; preds = %2
  %53 = load i32, i32* @S3C2410_LCDCON1_TFT16BPP, align 4
  %54 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %55 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @S3C2410_LCDCON5_BSWP, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %61 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @S3C2410_LCDCON5_HWSWP, align 4
  %65 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %66 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %93

69:                                               ; preds = %2
  %70 = load i32, i32* @S3C2410_LCDCON1_TFT24BPP, align 4
  %71 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %72 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @S3C2410_LCDCON5_BSWP, align 4
  %76 = load i32, i32* @S3C2410_LCDCON5_HWSWP, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @S3C2410_LCDCON5_BPP24BL, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %82 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %93

85:                                               ; preds = %2
  %86 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %5, align 8
  %87 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %85, %69, %52, %33, %27, %21, %15
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %96, i64 %99, i64 %102)
  %104 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %105 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %108 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %106, i64 %109, i64 %112)
  %114 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %114, i32 0, i32 8
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, 1
  %118 = call i32 @S3C2410_LCDCON2_LINEVAL(i64 %117)
  %119 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %120 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %121, 1
  %123 = call i32 @S3C2410_LCDCON2_VBPD(i64 %122)
  %124 = or i32 %118, %123
  %125 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %126 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %127, 1
  %129 = call i32 @S3C2410_LCDCON2_VFPD(i64 %128)
  %130 = or i32 %124, %129
  %131 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %132 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %133, 1
  %135 = call i32 @S3C2410_LCDCON2_VSPW(i64 %134)
  %136 = or i32 %130, %135
  %137 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %138 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %140 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %141, 1
  %143 = call i32 @S3C2410_LCDCON3_HBPD(i64 %142)
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %146, 1
  %148 = call i32 @S3C2410_LCDCON3_HFPD(i64 %147)
  %149 = or i32 %143, %148
  %150 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %151 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %152, 1
  %154 = call i32 @S3C2410_LCDCON3_HOZVAL(i64 %153)
  %155 = or i32 %149, %154
  %156 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %157 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  %158 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %159 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %160, 1
  %162 = call i32 @S3C2410_LCDCON4_HSPW(i64 %161)
  %163 = load %struct.s3c2410fb_hw*, %struct.s3c2410fb_hw** %4, align 8
  %164 = getelementptr inbounds %struct.s3c2410fb_hw, %struct.s3c2410fb_hw* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dprintk(i8*, i64, i64, i64) #1

declare dso_local i32 @S3C2410_LCDCON2_LINEVAL(i64) #1

declare dso_local i32 @S3C2410_LCDCON2_VBPD(i64) #1

declare dso_local i32 @S3C2410_LCDCON2_VFPD(i64) #1

declare dso_local i32 @S3C2410_LCDCON2_VSPW(i64) #1

declare dso_local i32 @S3C2410_LCDCON3_HBPD(i64) #1

declare dso_local i32 @S3C2410_LCDCON3_HFPD(i64) #1

declare dso_local i32 @S3C2410_LCDCON3_HOZVAL(i64) #1

declare dso_local i32 @S3C2410_LCDCON4_HSPW(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
