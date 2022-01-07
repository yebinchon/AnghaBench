; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_ad1843_get_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_ad1843_get_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @ad1843_get_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1843_get_gain(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 1, %12
  %14 = sub nsw i32 %13, 1
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %7, align 2
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ad1843_read_multi(i32* %16, i32 2, %struct.TYPE_5__* %19, i32* %5, i32 %22, i32* %6)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load i16, i16* %7, align 2
  %30 = zext i16 %29 to i32
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = load i16, i16* %7, align 2
  %34 = zext i16 %33 to i32
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %28, %2
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 100
  %40 = load i16, i16* %7, align 2
  %41 = zext i16 %40 to i32
  %42 = ashr i32 %41, 1
  %43 = add nsw i32 %39, %42
  %44 = load i16, i16* %7, align 2
  %45 = zext i16 %44 to i32
  %46 = sdiv i32 %43, %45
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 %47, 100
  %49 = load i16, i16* %7, align 2
  %50 = zext i16 %49 to i32
  %51 = ashr i32 %50, 1
  %52 = add nsw i32 %48, %51
  %53 = load i16, i16* %7, align 2
  %54 = zext i16 %53 to i32
  %55 = sdiv i32 %52, %54
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = shl i32 %56, 0
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 %58, 8
  %60 = or i32 %57, %59
  ret i32 %60
}

declare dso_local i32 @ad1843_read_multi(i32*, i32, %struct.TYPE_5__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
