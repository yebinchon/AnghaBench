; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_interval_mul.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_interval_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i32, i32, i32, i8*, i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_interval_mul(%struct.snd_interval* %0, %struct.snd_interval* %1, %struct.snd_interval* %2) #0 {
  %4 = alloca %struct.snd_interval*, align 8
  %5 = alloca %struct.snd_interval*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  store %struct.snd_interval* %0, %struct.snd_interval** %4, align 8
  store %struct.snd_interval* %1, %struct.snd_interval** %5, align 8
  store %struct.snd_interval* %2, %struct.snd_interval** %6, align 8
  %7 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %8 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %13 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11, %3
  %17 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %18 = call i32 @snd_interval_none(%struct.snd_interval* %17)
  br label %82

19:                                               ; preds = %11
  %20 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %21 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %23 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %22, i32 0, i32 4
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %26 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %25, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @mul(i8* %24, i8* %27)
  %29 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %30 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %32 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %19
  %36 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %37 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %35, %19
  %41 = phi i1 [ true, %19 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %44 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %46 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %49 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @mul(i8* %47, i8* %50)
  %52 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %53 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %55 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %40
  %59 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %60 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %58, %40
  %64 = phi i1 [ true, %40 ], [ %62, %58 ]
  %65 = zext i1 %64 to i32
  %66 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %67 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %69 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %63
  %73 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %74 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %72, %63
  %78 = phi i1 [ false, %63 ], [ %76, %72 ]
  %79 = zext i1 %78 to i32
  %80 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %81 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %77, %16
  ret void
}

declare dso_local i32 @snd_interval_none(%struct.snd_interval*) #1

declare dso_local i8* @mul(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
