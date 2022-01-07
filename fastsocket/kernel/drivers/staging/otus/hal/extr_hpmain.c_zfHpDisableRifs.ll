; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpDisableRifs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpDisableRifs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zsHpPriv = type { i32, i32, i32, i32, i32, i32 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpDisableRifs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @zmw_get_wlan_dev(i32* %3)
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.zsHpPriv*
  %9 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @reg_write(i32 38992, i32 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.zsHpPriv*
  %16 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @reg_write(i32 39004, i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.zsHpPriv*
  %23 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @reg_write(i32 39008, i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.zsHpPriv*
  %30 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @reg_write(i32 39192, i32 %31)
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.zsHpPriv*
  %37 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @reg_write(i32 39404, i32 %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.zsHpPriv*
  %44 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @reg_write(i32 41864, i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @zfFlushDelayWrite(i32* %47)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @reg_write(i32, i32) #1

declare dso_local i32 @zfFlushDelayWrite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
