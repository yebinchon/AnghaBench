; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_rtl819x_TSProc.c_MakeTSEntry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_rtl819x_TSProc.c_MakeTSEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64, i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MakeTSEntry(%struct.TYPE_3__* %0, i64* %1, i32* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  br label %57

17:                                               ; preds = %6
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = call i32 @memcpy(i64* %20, i64* %21, i32 6)
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = bitcast i32* %27 to i64*
  %29 = load i32*, i32** %9, align 8
  %30 = bitcast i32* %29 to i64*
  %31 = call i32 @memcpy(i64* %28, i64* %30, i32 4)
  br label %32

32:                                               ; preds = %25, %17
  store i64 0, i64* %13, align 8
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = bitcast i32* %42 to i64*
  %44 = load i64, i64* %10, align 8
  %45 = inttoptr i64 %44 to i64*
  %46 = call i32 @memcpy(i64* %43, i64* %45, i32 4)
  br label %47

47:                                               ; preds = %37
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %13, align 8
  br label %33

50:                                               ; preds = %33
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %50, %16
  ret void
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
