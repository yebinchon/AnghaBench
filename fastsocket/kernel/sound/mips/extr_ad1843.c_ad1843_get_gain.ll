; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_ad1843.c_ad1843_get_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_ad1843.c_ad1843_get_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad1843_gain = type { i32, %struct.TYPE_2__*, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_ad1843 = type { i32 }

@ad1843_gain = common dso_local global %struct.ad1843_gain** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ad1843_get_gain(%struct.snd_ad1843* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ad1843*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ad1843_gain*, align 8
  %10 = alloca i16, align 2
  store %struct.snd_ad1843* %0, %struct.snd_ad1843** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ad1843_gain**, %struct.ad1843_gain*** @ad1843_gain, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ad1843_gain*, %struct.ad1843_gain** %11, i64 %13
  %15 = load %struct.ad1843_gain*, %struct.ad1843_gain** %14, align 8
  store %struct.ad1843_gain* %15, %struct.ad1843_gain** %9, align 8
  %16 = load %struct.ad1843_gain*, %struct.ad1843_gain** %9, align 8
  %17 = getelementptr inbounds %struct.ad1843_gain, %struct.ad1843_gain* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 1, %20
  %22 = sub nsw i32 %21, 1
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %10, align 2
  %24 = load %struct.snd_ad1843*, %struct.snd_ad1843** %3, align 8
  %25 = load %struct.ad1843_gain*, %struct.ad1843_gain** %9, align 8
  %26 = getelementptr inbounds %struct.ad1843_gain, %struct.ad1843_gain* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.ad1843_gain*, %struct.ad1843_gain** %9, align 8
  %29 = getelementptr inbounds %struct.ad1843_gain, %struct.ad1843_gain* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ad1843_read_multi(%struct.snd_ad1843* %24, i32 2, %struct.TYPE_2__* %27, i32* %5, i32 %30, i32* %6)
  %32 = load %struct.ad1843_gain*, %struct.ad1843_gain** %9, align 8
  %33 = getelementptr inbounds %struct.ad1843_gain, %struct.ad1843_gain* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load i16, i16* %10, align 2
  %38 = zext i16 %37 to i32
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %5, align 4
  %41 = load i16, i16* %10, align 2
  %42 = zext i16 %41 to i32
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %36, %2
  %46 = load %struct.ad1843_gain*, %struct.ad1843_gain** %9, align 8
  %47 = getelementptr inbounds %struct.ad1843_gain, %struct.ad1843_gain* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load %struct.snd_ad1843*, %struct.snd_ad1843** %3, align 8
  %52 = load %struct.ad1843_gain*, %struct.ad1843_gain** %9, align 8
  %53 = getelementptr inbounds %struct.ad1843_gain, %struct.ad1843_gain* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.ad1843_gain*, %struct.ad1843_gain** %9, align 8
  %56 = getelementptr inbounds %struct.ad1843_gain, %struct.ad1843_gain* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ad1843_read_multi(%struct.snd_ad1843* %51, i32 2, %struct.TYPE_2__* %54, i32* %7, i32 %57, i32* %8)
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %50
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %62
  br label %67

67:                                               ; preds = %66, %45
  %68 = load i32, i32* %5, align 4
  %69 = shl i32 %68, 0
  %70 = load i32, i32* %6, align 4
  %71 = shl i32 %70, 8
  %72 = or i32 %69, %71
  ret i32 %72
}

declare dso_local i32 @ad1843_read_multi(%struct.snd_ad1843*, i32, %struct.TYPE_2__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
