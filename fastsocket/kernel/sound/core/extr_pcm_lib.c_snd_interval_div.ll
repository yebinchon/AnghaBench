; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_interval_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_interval_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i64, i64, i32, i32, i64, i64 }

@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_interval_div(%struct.snd_interval* %0, %struct.snd_interval* %1, %struct.snd_interval* %2) #0 {
  %4 = alloca %struct.snd_interval*, align 8
  %5 = alloca %struct.snd_interval*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_interval* %0, %struct.snd_interval** %4, align 8
  store %struct.snd_interval* %1, %struct.snd_interval** %5, align 8
  store %struct.snd_interval* %2, %struct.snd_interval** %6, align 8
  %8 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %9 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %14 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %3
  %18 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %19 = call i32 @snd_interval_none(%struct.snd_interval* %18)
  br label %99

20:                                               ; preds = %12
  %21 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %22 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %24 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %27 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @div32(i64 %25, i64 %28, i32* %7)
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %32 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %20
  %36 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %37 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %42 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %40, %35, %20
  %46 = phi i1 [ true, %35 ], [ true, %20 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  %48 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %49 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %51 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %90

54:                                               ; preds = %45
  %55 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %56 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %59 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i8* @div32(i64 %57, i64 %60, i32* %7)
  %62 = ptrtoint i8* %61 to i64
  %63 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %64 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %54
  %68 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %69 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %73 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %72, i32 0, i32 3
  store i32 1, i32* %73, align 4
  br label %89

74:                                               ; preds = %54
  %75 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %76 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %81 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i1 [ true, %74 ], [ %83, %79 ]
  %86 = zext i1 %85 to i32
  %87 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %88 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %84, %67
  br label %96

90:                                               ; preds = %45
  %91 = load i64, i64* @UINT_MAX, align 8
  %92 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %93 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %95 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %94, i32 0, i32 3
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %89
  %97 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %98 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %97, i32 0, i32 4
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %96, %17
  ret void
}

declare dso_local i32 @snd_interval_none(%struct.snd_interval*) #1

declare dso_local i8* @div32(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
