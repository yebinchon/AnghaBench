; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_g450_pll.c_g450_checkcache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_g450_pll.c_g450_checkcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { i32 }
%struct.matrox_pll_cache = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@G450_MNP_FREQBITS = common dso_local global i32 0, align 4
@NO_MORE_MNP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matrox_fb_info*, %struct.matrox_pll_cache*, i32)* @g450_checkcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g450_checkcache(%struct.matrox_fb_info* %0, %struct.matrox_pll_cache* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.matrox_fb_info*, align 8
  %6 = alloca %struct.matrox_pll_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %5, align 8
  store %struct.matrox_pll_cache* %1, %struct.matrox_pll_cache** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @G450_MNP_FREQBITS, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %69, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %6, align 8
  %16 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %72

19:                                               ; preds = %13
  %20 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %6, align 8
  %21 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %19
  %31 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %6, align 8
  %32 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %30
  %42 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %6, align 8
  %43 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 1
  %46 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %6, align 8
  %47 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = mul i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memmove(%struct.TYPE_3__* %45, %struct.TYPE_3__* %48, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %6, align 8
  %56 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %6, align 8
  %62 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 %60, i32* %65, align 4
  br label %66

66:                                               ; preds = %41, %30
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %74

68:                                               ; preds = %19
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %13

72:                                               ; preds = %13
  %73 = load i32, i32* @NO_MORE_MNP, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %66
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @memmove(%struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
