; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_clps711xfb.c_clps7111fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_clps711xfb.c_clps7111fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PALLSW = common dso_local global i32 0, align 4
@PALMSW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @clps7111fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clps7111fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = icmp sge i32 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %72

26:                                               ; preds = %6
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %27, 77
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %29, 151
  %31 = add nsw i32 %28, %30
  %32 = load i32, i32* %11, align 4
  %33 = mul nsw i32 %32, 28
  %34 = add nsw i32 %31, %33
  %35 = ashr i32 %34, 20
  store i32 %35, i32* %14, align 4
  %36 = call i64 (...) @machine_is_edb7211()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32, i32* %14, align 4
  %40 = sub i32 15, %39
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %38, %26
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 7
  %44 = mul nsw i32 4, %43
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %14, align 4
  %47 = shl i32 %46, %45
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %16, align 4
  %49 = shl i32 15, %48
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %14, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* @PALLSW, align 4
  br label %59

57:                                               ; preds = %41
  %58 = load i32, i32* @PALMSW, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @clps_readl(i32 %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %15, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load i32, i32* %14, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @clps_writel(i32 %69, i32 %70)
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %59, %25
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i64 @machine_is_edb7211(...) #1

declare dso_local i32 @clps_readl(i32) #1

declare dso_local i32 @clps_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
