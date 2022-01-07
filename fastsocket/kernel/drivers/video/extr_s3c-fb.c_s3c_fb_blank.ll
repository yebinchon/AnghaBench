; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s3c-fb.c_s3c_fb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s3c-fb.c_s3c_fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.s3c_fb_win* }
%struct.s3c_fb_win = type { i32, %struct.s3c_fb* }
%struct.s3c_fb = type { i32, i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"blank mode %d\0A\00", align 1
@WINCONx_ENWIN = common dso_local global i32 0, align 4
@WINxMAP_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @s3c_fb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_fb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.s3c_fb_win*, align 8
  %7 = alloca %struct.s3c_fb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %11, align 8
  store %struct.s3c_fb_win* %12, %struct.s3c_fb_win** %6, align 8
  %13 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %6, align 8
  %14 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %13, i32 0, i32 1
  %15 = load %struct.s3c_fb*, %struct.s3c_fb** %14, align 8
  store %struct.s3c_fb* %15, %struct.s3c_fb** %7, align 8
  %16 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %6, align 8
  %17 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %20 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %25 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @WINCON(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %4, align 4
  switch i32 %31, label %73 [
    i32 130, label %32
    i32 131, label %44
    i32 129, label %55
    i32 128, label %72
    i32 132, label %72
  ]

32:                                               ; preds = %2
  %33 = load i32, i32* @WINCONx_ENWIN, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %41 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %2, %32
  %45 = load i32, i32* @WINxMAP_MAP, align 4
  %46 = call i32 @WINxMAP_MAP_COLOUR(i32 0)
  %47 = or i32 %45, %46
  %48 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %49 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @WINxMAP(i32 %51)
  %53 = add nsw i64 %50, %52
  %54 = call i32 @writel(i32 %47, i64 %53)
  br label %74

55:                                               ; preds = %2
  %56 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %57 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @WINxMAP(i32 %59)
  %61 = add nsw i64 %58, %60
  %62 = call i32 @writel(i32 0, i64 %61)
  %63 = load i32, i32* @WINCONx_ENWIN, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 1, %66
  %68 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %69 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %74

72:                                               ; preds = %2, %2
  br label %73

73:                                               ; preds = %2, %72
  store i32 1, i32* %3, align 4
  br label %93

74:                                               ; preds = %55, %44
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %77 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @WINCON(i32 %79)
  %81 = add nsw i64 %78, %80
  %82 = call i32 @writel(i32 %75, i64 %81)
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %74
  %86 = load %struct.s3c_fb*, %struct.s3c_fb** %7, align 8
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 130
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  %91 = call i32 @s3c_fb_enable(%struct.s3c_fb* %86, i32 %90)
  br label %92

92:                                               ; preds = %85, %74
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %73
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @WINCON(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @WINxMAP_MAP_COLOUR(i32) #1

declare dso_local i64 @WINxMAP(i32) #1

declare dso_local i32 @s3c_fb_enable(%struct.s3c_fb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
