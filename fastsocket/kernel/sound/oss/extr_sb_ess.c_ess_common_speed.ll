; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_ess.c_ess_common_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_ess.c_ess_common_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@SUBMDL_ES1888 = common dso_local global i64 0, align 8
@SB_CAP_ES18XX_RATE = common dso_local global i32 0, align 4
@ES18XX_CLOCK1 = common dso_local global i32 0, align 4
@ES18XX_CLOCK2 = common dso_local global i32 0, align 4
@ES1688_CLOCK1 = common dso_local global i32 0, align 4
@ES1688_CLOCK2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*)* @ess_common_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ess_common_speed(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SUBMDL_ES1888, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ess_calc_div(i32 795500, i32 256, i32* %20, i32* %7)
  %22 = or i32 128, %21
  store i32 %22, i32* %8, align 4
  br label %27

23:                                               ; preds = %13
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @ess_calc_div(i32 795500, i32 128, i32* %24, i32* %7)
  %26 = or i32 128, %25
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %23, %19
  br label %66

28:                                               ; preds = %3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SB_CAP_ES18XX_RATE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SUBMDL_ES1888, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @ess_calc_best_speed(i32 397700, i32 128, i32 795500, i32 256, i32* %8, i32* %42)
  br label %49

44:                                               ; preds = %35
  %45 = load i32, i32* @ES18XX_CLOCK1, align 4
  %46 = load i32, i32* @ES18XX_CLOCK2, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @ess_calc_best_speed(i32 %45, i32 128, i32 %46, i32 256, i32* %8, i32* %47)
  br label %49

49:                                               ; preds = %44, %41
  br label %65

50:                                               ; preds = %28
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 22000
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @ES1688_CLOCK1, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @ess_calc_div(i32 %55, i32 256, i32* %56, i32* %7)
  %58 = or i32 128, %57
  store i32 %58, i32* %8, align 4
  br label %64

59:                                               ; preds = %50
  %60 = load i32, i32* @ES1688_CLOCK2, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @ess_calc_div(i32 %60, i32 128, i32* %61, i32* %7)
  %63 = or i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %49
  br label %66

66:                                               ; preds = %65, %27
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  ret void
}

declare dso_local i32 @ess_calc_div(i32, i32, i32*, i32*) #1

declare dso_local i32 @ess_calc_best_speed(i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
