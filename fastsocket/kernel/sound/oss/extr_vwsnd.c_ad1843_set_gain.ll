; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_ad1843_set_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_ad1843_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32)* @ad1843_set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1843_set_gain(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 1, %15
  %17 = sub nsw i32 %16, 1
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %8, align 2
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 0
  %21 = and i32 %20, 255
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 8
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %27, 100
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %33, 100
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %29, %26, %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %84

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = load i16, i16* %8, align 2
  %41 = zext i16 %40 to i32
  %42 = mul nsw i32 %39, %41
  %43 = load i16, i16* %8, align 2
  %44 = zext i16 %43 to i32
  %45 = ashr i32 %44, 1
  %46 = add nsw i32 %42, %45
  %47 = sdiv i32 %46, 100
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i16, i16* %8, align 2
  %50 = zext i16 %49 to i32
  %51 = mul nsw i32 %48, %50
  %52 = load i16, i16* %8, align 2
  %53 = zext i16 %52 to i32
  %54 = ashr i32 %53, 1
  %55 = add nsw i32 %51, %54
  %56 = sdiv i32 %55, 100
  store i32 %56, i32* %10, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %38
  %62 = load i16, i16* %8, align 2
  %63 = zext i16 %62 to i32
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load i16, i16* %8, align 2
  %67 = zext i16 %66 to i32
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %61, %38
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @ad1843_write_multi(i32* %71, i32 2, %struct.TYPE_6__* %74, i32 %75, i32 %78, i32 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = call i32 @ad1843_get_gain(i32* %81, %struct.TYPE_5__* %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %70, %35
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @ad1843_write_multi(i32*, i32, %struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @ad1843_get_gain(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
