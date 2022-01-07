; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo }
%struct.fb_var_screeninfo = type { i32, i32 }
%struct.sa1100fb_info = type { i32, i64, %struct.TYPE_4__, i64, i64, i32*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"set_par\0A\00", align 1
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_STATIC_PSEUDOCOLOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"palette_mem_size = 0x%08lx\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @sa1100fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.sa1100fb_info*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = bitcast %struct.fb_info* %6 to %struct.sa1100fb_info*
  store %struct.sa1100fb_info* %7, %struct.sa1100fb_info** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  store %struct.fb_var_screeninfo* %9, %struct.fb_var_screeninfo** %4, align 8
  %10 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %17 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i64 %16, i64* %20, align 8
  br label %39

21:                                               ; preds = %1
  %22 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* @FB_VISUAL_PSEUDOCOLOR, align 8
  %28 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %29 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 %27, i64* %31, align 8
  br label %38

32:                                               ; preds = %21
  %33 = load i64, i64* @FB_VISUAL_STATIC_PSEUDOCOLOR, align 8
  %34 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %35 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 %33, i64* %37, align 8
  br label %38

38:                                               ; preds = %32, %26
  br label %39

39:                                               ; preds = %38, %15
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = sdiv i32 %46, 8
  %48 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %49 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 8
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 8
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 256, i32 16
  %58 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %59 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %61 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %69 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = add i64 %70, %71
  %73 = load i64, i64* %5, align 8
  %74 = sub i64 %72, %73
  %75 = inttoptr i64 %74 to i32*
  %76 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %77 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %76, i32 0, i32 5
  store i32* %75, i32** %77, align 8
  %78 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %79 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PAGE_SIZE, align 8
  %82 = add i64 %80, %81
  %83 = load i64, i64* %5, align 8
  %84 = sub i64 %82, %83
  %85 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %86 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  %87 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %88 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @sa1100fb_set_truecolor(i32 %94)
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %97 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %98 = call i32 @sa1100fb_activate_var(%struct.fb_var_screeninfo* %96, %struct.sa1100fb_info* %97)
  ret i32 0
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @sa1100fb_set_truecolor(i32) #1

declare dso_local i32 @sa1100fb_activate_var(%struct.fb_var_screeninfo*, %struct.sa1100fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
