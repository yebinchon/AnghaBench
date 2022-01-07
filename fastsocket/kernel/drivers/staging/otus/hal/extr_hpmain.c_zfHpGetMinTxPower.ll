; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpGetMinTxPower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpGetMinTxPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.zsHpPriv* }
%struct.zsHpPriv = type { i32, i32*, i32*, i32*, i32* }

@wd = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfHpGetMinTxPower(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.zsHpPriv*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @zmw_get_wlan_dev(i32* %5)
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.zsHpPriv*, %struct.zsHpPriv** %8, align 8
  store %struct.zsHpPriv* %9, %struct.zsHpPriv** %3, align 8
  %10 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %11 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 3000
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %21 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 7
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 63
  store i32 %25, i32* %4, align 4
  br label %33

26:                                               ; preds = %14
  %27 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %28 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 7
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 63
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %26, %19
  br label %54

34:                                               ; preds = %1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %41 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 7
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 63
  store i32 %45, i32* %4, align 4
  br label %53

46:                                               ; preds = %34
  %47 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %48 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 7
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 63
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %39
  br label %54

54:                                               ; preds = %53, %33
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
