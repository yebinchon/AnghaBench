; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_cirrusfb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_cirrusfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.cirrusfb_info* }
%struct.cirrusfb_info = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"ENTER, blank mode = %d\0A\00", align 1
@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"EXIT, returning 0\0A\00", align 1
@VGA_SEQ_CLOCK_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"EXIT, returning 1\0A\00", align 1
@CL_GRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @cirrusfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cirrusfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.cirrusfb_info*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 2
  %11 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %10, align 8
  store %struct.cirrusfb_info* %11, %struct.cirrusfb_info** %7, align 8
  %12 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %7, align 8
  %13 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32, i8*, ...) @dev_dbg(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %2
  %30 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %87

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 131
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 129
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34
  store i8 0, i8* %6, align 1
  br label %42

41:                                               ; preds = %37
  store i8 32, i8* %6, align 1
  br label %42

42:                                               ; preds = %41, %40
  %43 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %7, align 8
  %44 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VGA_SEQ_CLOCK_MODE, align 4
  %47 = call i32 @vga_rseq(i32 %45, i32 %46)
  %48 = and i32 %47, 223
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %6, align 1
  %53 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %7, align 8
  %54 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @VGA_SEQ_CLOCK_MODE, align 4
  %57 = load i8, i8* %6, align 1
  %58 = call i32 @vga_wseq(i32 %55, i32 %56, i8 zeroext %57)
  %59 = load i32, i32* %4, align 4
  switch i32 %59, label %64 [
    i32 129, label %60
    i32 131, label %60
    i32 128, label %61
    i32 132, label %62
    i32 130, label %63
  ]

60:                                               ; preds = %42, %42
  store i8 0, i8* %6, align 1
  br label %69

61:                                               ; preds = %42
  store i8 4, i8* %6, align 1
  br label %69

62:                                               ; preds = %42
  store i8 2, i8* %6, align 1
  br label %69

63:                                               ; preds = %42
  store i8 6, i8* %6, align 1
  br label %69

64:                                               ; preds = %42
  %65 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i8*, ...) @dev_dbg(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %87

69:                                               ; preds = %63, %62, %61, %60
  %70 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %7, align 8
  %71 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CL_GRE, align 4
  %74 = load i8, i8* %6, align 1
  %75 = call i32 @vga_wgfx(i32 %72, i32 %73, i8 zeroext %74)
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %7, align 8
  %78 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, ...) @dev_dbg(i32 %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 131
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %69, %64, %29
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @vga_rseq(i32, i32) #1

declare dso_local i32 @vga_wseq(i32, i32, i8 zeroext) #1

declare dso_local i32 @vga_wgfx(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
