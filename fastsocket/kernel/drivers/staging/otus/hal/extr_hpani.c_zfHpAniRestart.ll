; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpani.c_zfHpAniRestart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpani.c_zfHpAniRestart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zsAniState = type { i64, i64, i64, i64, i64 }
%struct.zsHpPriv = type { i64, %struct.zsAniState* }

@wd = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpAniRestart(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.zsAniState*, align 8
  %4 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @zmw_get_wlan_dev(i32* %5)
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.zsHpPriv*
  store %struct.zsHpPriv* %10, %struct.zsHpPriv** %4, align 8
  %11 = load %struct.zsHpPriv*, %struct.zsHpPriv** %4, align 8
  %12 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %11, i32 0, i32 1
  %13 = load %struct.zsAniState*, %struct.zsAniState** %12, align 8
  store %struct.zsAniState* %13, %struct.zsAniState** %3, align 8
  %14 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %15 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.zsHpPriv*, %struct.zsHpPriv** %4, align 8
  %17 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %22 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %24 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %27 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %29 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
