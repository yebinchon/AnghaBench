; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpCheckDoHeavyClip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpCheckDoHeavyClip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.zsHpPriv* }
%struct.zsHpPriv = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@wd = common dso_local global %struct.TYPE_5__* null, align 8
@ZM_CH_G_14 = common dso_local global i64 0, align 8
@AR5416_NUM_BAND_EDGES = common dso_local global i64 0, align 8
@AR5416_BCHAN_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfHpCheckDoHeavyClip(i32* %0, i64 %1, %struct.TYPE_4__* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @zmw_get_wlan_dev(i32* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wd, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.zsHpPriv*, %struct.zsHpPriv** %16, align 8
  store %struct.zsHpPriv* %17, %struct.zsHpPriv** %12, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @ZM_CH_G_14, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %23

22:                                               ; preds = %4
  store i64 1, i64* %11, align 8
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* %9, align 8
  %28 = or i64 %27, 240
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %26, %23
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %66, %29
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @AR5416_NUM_BAND_EDGES, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AR5416_BCHAN_UNUSED, align 8
  %41 = icmp ne i64 %39, %40
  br label %42

42:                                               ; preds = %34, %30
  %43 = phi i1 [ false, %30 ], [ %41, %34 ]
  br i1 %43, label %44, label %69

44:                                               ; preds = %42
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i64 @fbin2freq(i64 %50, i64 %51)
  %53 = icmp eq i64 %45, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %44
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i64, i64* %9, align 8
  %63 = or i64 %62, 15
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %61, %54
  br label %69

65:                                               ; preds = %44
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %30

69:                                               ; preds = %64, %42
  %70 = load i64, i64* %9, align 8
  ret i64 %70
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i64 @fbin2freq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
