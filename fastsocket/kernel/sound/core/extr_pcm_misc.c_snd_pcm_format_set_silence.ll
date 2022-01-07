; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_misc.c_snd_pcm_format_set_silence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_misc.c_snd_pcm_format_set_silence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32 }

@SNDRV_PCM_FORMAT_LAST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@pcm_formats = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_format_set_silence(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %5, align 8
  %13 = icmp ult i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @SNDRV_PCM_FORMAT_LAST, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %115

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %115

25:                                               ; preds = %21
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcm_formats, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcm_formats, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %115

41:                                               ; preds = %25
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcm_formats, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = icmp sle i32 %49, 8
  br i1 %50, label %51, label %61

51:                                               ; preds = %48, %41
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = mul i32 %52, %53
  %55 = udiv i32 %54, 8
  store i32 %55, i32* %11, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i8, i8* %57, align 1
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @memset(i8* %56, i8 zeroext %58, i32 %59)
  store i32 0, i32* %4, align 4
  br label %115

61:                                               ; preds = %48
  %62 = load i32, i32* %8, align 4
  %63 = sdiv i32 %62, 8
  store i32 %63, i32* %8, align 4
  %64 = load i8*, i8** %6, align 8
  store i8* %64, i8** %9, align 8
  %65 = load i32, i32* %8, align 4
  switch i32 %65, label %114 [
    i32 2, label %66
    i32 3, label %78
    i32 4, label %90
    i32 8, label %102
  ]

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %71, %66
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, -1
  store i32 %69, i32* %7, align 4
  %70 = icmp ne i32 %68, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @memcpy(i8* %72, i8* %73, i32 2)
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  store i8* %76, i8** %9, align 8
  br label %67

77:                                               ; preds = %67
  br label %114

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %83, %78
  %80 = load i32, i32* %7, align 4
  %81 = add i32 %80, -1
  store i32 %81, i32* %7, align 4
  %82 = icmp ne i32 %80, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @memcpy(i8* %84, i8* %85, i32 3)
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 3
  store i8* %88, i8** %9, align 8
  br label %79

89:                                               ; preds = %79
  br label %114

90:                                               ; preds = %61
  br label %91

91:                                               ; preds = %95, %90
  %92 = load i32, i32* %7, align 4
  %93 = add i32 %92, -1
  store i32 %93, i32* %7, align 4
  %94 = icmp ne i32 %92, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @memcpy(i8* %96, i8* %97, i32 4)
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  store i8* %100, i8** %9, align 8
  br label %91

101:                                              ; preds = %91
  br label %114

102:                                              ; preds = %61
  br label %103

103:                                              ; preds = %107, %102
  %104 = load i32, i32* %7, align 4
  %105 = add i32 %104, -1
  store i32 %105, i32* %7, align 4
  %106 = icmp ne i32 %104, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i8*, i8** %9, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 @memcpy(i8* %108, i8* %109, i32 8)
  %111 = load i8*, i8** %9, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 8
  store i8* %112, i8** %9, align 8
  br label %103

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %61, %113, %101, %89, %77
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %51, %38, %24, %18
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @memset(i8*, i8 zeroext, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
