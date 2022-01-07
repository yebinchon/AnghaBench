; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpBeginSiteSurvey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpBeginSiteSurvey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.zsHpPriv* }
%struct.zsHpPriv = type { i32, i32*, i64, i32, i64, i64 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_CH_G_14 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpBeginSiteSurvey(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @zmw_get_wlan_dev(i32* %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.zsHpPriv*, %struct.zsHpPriv** %9, align 8
  store %struct.zsHpPriv* %10, %struct.zsHpPriv** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.zsHpPriv*, %struct.zsHpPriv** %5, align 8
  %15 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.zsHpPriv*, %struct.zsHpPriv** %5, align 8
  %18 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.zsHpPriv*, %struct.zsHpPriv** %5, align 8
  %21 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.zsHpPriv*, %struct.zsHpPriv** %5, align 8
  %23 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 392
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %42

29:                                               ; preds = %19
  %30 = load %struct.zsHpPriv*, %struct.zsHpPriv** %5, align 8
  %31 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ZM_CH_G_14, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @zfDelayWriteInternalReg(i32* %36, i32 1870176, i32 39753)
  br label %41

38:                                               ; preds = %29
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @zfDelayWriteInternalReg(i32* %39, i32 1870176, i32 2304)
  br label %41

41:                                               ; preds = %38, %35
  br label %45

42:                                               ; preds = %19
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @zfDelayWriteInternalReg(i32* %43, i32 1870176, i32 39744)
  br label %45

45:                                               ; preds = %42, %41
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @zfFlushDelayWrite(i32* %46)
  %48 = load %struct.zsHpPriv*, %struct.zsHpPriv** %5, align 8
  %49 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.zsHpPriv*, %struct.zsHpPriv** %5, align 8
  %52 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 63
  %55 = shl i32 %54, 20
  %56 = or i32 %55, 335544320
  %57 = call i32 @zfDelayWriteInternalReg(i32* %50, i32 1848980, i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.zsHpPriv*, %struct.zsHpPriv** %5, align 8
  %60 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 63
  %63 = shl i32 %62, 5
  %64 = or i32 %63, 10240
  %65 = load %struct.zsHpPriv*, %struct.zsHpPriv** %5, align 8
  %66 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 63
  %69 = shl i32 %68, 21
  %70 = or i32 %64, %69
  %71 = or i32 %70, 671088640
  %72 = call i32 @zfDelayWriteInternalReg(i32* %58, i32 1850292, i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @zfFlushDelayWrite(i32* %73)
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
