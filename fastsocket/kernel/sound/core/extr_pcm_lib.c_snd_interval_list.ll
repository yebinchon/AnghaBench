; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_interval_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_interval_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_interval_list(%struct.snd_interval* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_interval, align 8
  store %struct.snd_interval* %0, %struct.snd_interval** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %16 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %73

19:                                               ; preds = %4
  %20 = call i32 @snd_interval_any(%struct.snd_interval* %11)
  %21 = load i32, i32* @UINT_MAX, align 4
  %22 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 1
  store i64 0, i64* %23, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %67, %19
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %67

38:                                               ; preds = %31, %28
  %39 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snd_interval_test(%struct.snd_interval* %39, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %67

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @min(i32 %50, i32 %55)
  %57 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @max(i64 %59, i32 %64)
  %66 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 1
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %48, %47, %37
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %24

70:                                               ; preds = %24
  %71 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %72 = call i32 @snd_interval_refine(%struct.snd_interval* %71, %struct.snd_interval* %11)
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %14
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @snd_interval_any(%struct.snd_interval*) #1

declare dso_local i32 @snd_interval_test(%struct.snd_interval*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
