; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpLedCtrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpLedCtrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zsHpPriv = type { i64* }

@wd = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpLedCtrl(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %61

12:                                               ; preds = %3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.zsHpPriv*
  %17 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %12
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.zsHpPriv*
  %31 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 %26, i64* %35, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.zsHpPriv*
  %40 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.zsHpPriv*
  %48 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = shl i64 %51, 1
  %53 = or i64 %43, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @zfDelayWriteInternalReg(i32* %55, i32 1900804, i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @zfFlushDelayWrite(i32* %58)
  br label %60

60:                                               ; preds = %25, %12
  br label %61

61:                                               ; preds = %60, %3
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfDelayWriteInternalReg(i32*, i32, i32) #1

declare dso_local i32 @zfFlushDelayWrite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
