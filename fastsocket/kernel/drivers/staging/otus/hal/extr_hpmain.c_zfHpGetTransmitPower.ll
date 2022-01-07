; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpGetTransmitPower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpGetTransmitPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.zsHpPriv* }
%struct.zsHpPriv = type { i32, i32*, i32* }

@wd = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfHpGetTransmitPower(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.zsHpPriv*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @zmw_get_wlan_dev(i32* %5)
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load %struct.zsHpPriv*, %struct.zsHpPriv** %8, align 8
  store %struct.zsHpPriv* %9, %struct.zsHpPriv** %3, align 8
  %10 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %11 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 3000
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %16 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 63
  store i32 %20, i32* %4, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 63
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %14
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  br label %36

34:                                               ; preds = %14
  %35 = load i32, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ %33, %30 ], [ %35, %34 ]
  store i32 %37, i32* %4, align 4
  br label %62

38:                                               ; preds = %1
  %39 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %40 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 63
  store i32 %44, i32* %4, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 63
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %38
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  br label %60

58:                                               ; preds = %38
  %59 = load i32, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i32 [ %57, %54 ], [ %59, %58 ]
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %36
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
