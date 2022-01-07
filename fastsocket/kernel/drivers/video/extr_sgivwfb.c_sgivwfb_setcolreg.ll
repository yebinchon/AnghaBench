; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sgivwfb.c_sgivwfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sgivwfb.c_sgivwfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%struct.sgivw_par = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @sgivwfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgivwfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.sgivw_par*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.sgivw_par*
  store %struct.sgivw_par* %18, %struct.sgivw_par** %14, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 255
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %63

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = ashr i32 %23, 8
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = ashr i32 %25, 8
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = ashr i32 %27, 8
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %34, %22
  %30 = load %struct.sgivw_par*, %struct.sgivw_par** %14, align 8
  %31 = getelementptr inbounds %struct.sgivw_par, %struct.sgivw_par* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.sgivw_par*, %struct.sgivw_par** %14, align 8
  %36 = getelementptr inbounds %struct.sgivw_par, %struct.sgivw_par* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sgivw_par*, %struct.sgivw_par** %14, align 8
  %41 = getelementptr inbounds %struct.sgivw_par, %struct.sgivw_par* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %29

42:                                               ; preds = %29
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 %43, 24
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 %45, 16
  %47 = or i32 %44, %46
  %48 = load i32, i32* %11, align 4
  %49 = shl i32 %48, 8
  %50 = or i32 %47, %49
  %51 = load %struct.sgivw_par*, %struct.sgivw_par** %14, align 8
  %52 = getelementptr inbounds %struct.sgivw_par, %struct.sgivw_par* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %50, i32* %58, align 4
  %59 = load %struct.sgivw_par*, %struct.sgivw_par** %14, align 8
  %60 = getelementptr inbounds %struct.sgivw_par, %struct.sgivw_par* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %60, align 8
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %42, %21
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
