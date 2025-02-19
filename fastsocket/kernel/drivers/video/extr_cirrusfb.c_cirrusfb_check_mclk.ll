; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_cirrusfb_check_mclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_cirrusfb_check_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.cirrusfb_info* }
%struct.cirrusfb_info = type { i32 }

@CL_SEQR1F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Read MCLK of %ld kHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Using VCLK = MCLK\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Using VCLK = MCLK/2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i64)* @cirrusfb_check_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cirrusfb_check_mclk(%struct.fb_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cirrusfb_info*, align 8
  %7 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %9, align 8
  store %struct.cirrusfb_info* %10, %struct.cirrusfb_info** %6, align 8
  %11 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  %12 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CL_SEQR1F, align 4
  %15 = call i32 @vga_rseq(i32 %13, i32 %14)
  %16 = and i32 %15, 63
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = mul nsw i64 14318, %18
  %20 = ashr i64 %19, 3
  store i64 %20, i64* %7, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 (i32, i8*, ...) @dev_dbg(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub nsw i64 %26, %27
  %29 = call i32 @abs(i64 %28)
  %30 = icmp slt i32 %29, 250
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @dev_dbg(i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %50

36:                                               ; preds = %2
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sdiv i64 %38, 2
  %40 = sub nsw i64 %37, %39
  %41 = call i32 @abs(i64 %40)
  %42 = icmp slt i32 %41, 250
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @dev_dbg(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %50

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %43, %31
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @vga_rseq(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
