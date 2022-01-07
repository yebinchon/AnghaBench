; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_ad1843.c_ad1843_set_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_ad1843.c_ad1843_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad1843_gain = type { i32, %struct.TYPE_2__*, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_ad1843 = type { i32 }

@ad1843_gain = common dso_local global %struct.ad1843_gain** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ad1843_set_gain(%struct.snd_ad1843* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ad1843*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ad1843_gain*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_ad1843* %0, %struct.snd_ad1843** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ad1843_gain**, %struct.ad1843_gain*** @ad1843_gain, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ad1843_gain*, %struct.ad1843_gain** %13, i64 %15
  %17 = load %struct.ad1843_gain*, %struct.ad1843_gain** %16, align 8
  store %struct.ad1843_gain* %17, %struct.ad1843_gain** %7, align 8
  %18 = load %struct.ad1843_gain*, %struct.ad1843_gain** %7, align 8
  %19 = getelementptr inbounds %struct.ad1843_gain, %struct.ad1843_gain* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = sub nsw i32 %23, 1
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %8, align 2
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 0
  %28 = load i16, i16* %8, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %27, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 8
  %33 = load i16, i16* %8, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %32, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  store i32 %43, i32* %12, align 4
  %44 = load %struct.ad1843_gain*, %struct.ad1843_gain** %7, align 8
  %45 = getelementptr inbounds %struct.ad1843_gain, %struct.ad1843_gain* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %3
  %49 = load i16, i16* %8, align 2
  %50 = zext i16 %49 to i32
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load i16, i16* %8, align 2
  %54 = zext i16 %53 to i32
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %48, %3
  %58 = load %struct.ad1843_gain*, %struct.ad1843_gain** %7, align 8
  %59 = getelementptr inbounds %struct.ad1843_gain, %struct.ad1843_gain* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = icmp ne %struct.TYPE_2__* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.snd_ad1843*, %struct.snd_ad1843** %4, align 8
  %64 = load %struct.ad1843_gain*, %struct.ad1843_gain** %7, align 8
  %65 = getelementptr inbounds %struct.ad1843_gain, %struct.ad1843_gain* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.ad1843_gain*, %struct.ad1843_gain** %7, align 8
  %69 = getelementptr inbounds %struct.ad1843_gain, %struct.ad1843_gain* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @ad1843_write_multi(%struct.snd_ad1843* %63, i32 2, %struct.TYPE_2__* %66, i32 %67, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %62, %57
  %74 = load %struct.snd_ad1843*, %struct.snd_ad1843** %4, align 8
  %75 = load %struct.ad1843_gain*, %struct.ad1843_gain** %7, align 8
  %76 = getelementptr inbounds %struct.ad1843_gain, %struct.ad1843_gain* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.ad1843_gain*, %struct.ad1843_gain** %7, align 8
  %80 = getelementptr inbounds %struct.ad1843_gain, %struct.ad1843_gain* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @ad1843_write_multi(%struct.snd_ad1843* %74, i32 2, %struct.TYPE_2__* %77, i32 %78, i32 %81, i32 %82)
  %84 = load %struct.snd_ad1843*, %struct.snd_ad1843** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @ad1843_get_gain(%struct.snd_ad1843* %84, i32 %85)
  ret i32 %86
}

declare dso_local i32 @ad1843_write_multi(%struct.snd_ad1843*, i32, %struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @ad1843_get_gain(%struct.snd_ad1843*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
