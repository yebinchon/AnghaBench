; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sh_dac_audio.c_dac_audio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sh_dac_audio.c_dac_audio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@buffer_begin = common dso_local global i64 0, align 8
@buffer_end = common dso_local global i64 0, align 8
@BUFFER_SIZE = common dso_local global i32 0, align 4
@empty = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@data_buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i64, i32*)* @dac_audio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dac_audio_write(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ult i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub i64 0, %15
  store i64 %16, i64* %5, align 8
  br label %135

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 (...) @dac_audio_sync()
  store i64 0, i64* %5, align 8
  br label %135

22:                                               ; preds = %17
  %23 = load i64, i64* @buffer_begin, align 8
  %24 = load i64, i64* @buffer_end, align 8
  %25 = sub nsw i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @BUFFER_SIZE, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i64, i64* @empty, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @BUFFER_SIZE, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %36, %33
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i64, i64* @buffer_begin, align 8
  %51 = load i64, i64* @buffer_end, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i64, i64* @buffer_end, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @copy_from_user(i8* %55, i8* %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i64, i64* @EFAULT, align 8
  %62 = sub i64 0, %61
  store i64 %62, i64* %5, align 8
  br label %135

63:                                               ; preds = %53
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @buffer_end, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* @buffer_end, align 8
  br label %128

67:                                               ; preds = %49
  %68 = load i64, i64* @data_buffer, align 8
  %69 = load i32, i32* @BUFFER_SIZE, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load i64, i64* @buffer_end, align 8
  %73 = sub nsw i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %8, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %67
  %80 = load i64, i64* @buffer_end, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i64 @copy_from_user(i8* %81, i8* %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i64, i64* @EFAULT, align 8
  %88 = sub i64 0, %87
  store i64 %88, i64* %5, align 8
  br label %135

89:                                               ; preds = %79
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @buffer_end, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* @buffer_end, align 8
  br label %127

93:                                               ; preds = %67
  %94 = load i64, i64* @buffer_end, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = call i64 @copy_from_user(i8* %95, i8* %96, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i64, i64* @EFAULT, align 8
  %103 = sub i64 0, %102
  store i64 %103, i64* %5, align 8
  br label %135

104:                                              ; preds = %93
  %105 = load i64, i64* @data_buffer, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i64, i64* %8, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = sub i64 %111, %113
  %115 = call i64 @copy_from_user(i8* %106, i8* %110, i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %104
  %118 = load i64, i64* @EFAULT, align 8
  %119 = sub i64 0, %118
  store i64 %119, i64* %5, align 8
  br label %135

120:                                              ; preds = %104
  %121 = load i64, i64* @data_buffer, align 8
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %121, %122
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = sub i64 %123, %125
  store i64 %126, i64* @buffer_end, align 8
  br label %127

127:                                              ; preds = %120, %89
  br label %128

128:                                              ; preds = %127, %63
  %129 = load i64, i64* @empty, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  store i64 0, i64* @empty, align 8
  %132 = call i32 (...) @dac_audio_start_timer()
  br label %133

133:                                              ; preds = %131, %128
  %134 = load i64, i64* %8, align 8
  store i64 %134, i64* %5, align 8
  br label %135

135:                                              ; preds = %133, %117, %101, %86, %60, %20, %14
  %136 = load i64, i64* %5, align 8
  ret i64 %136
}

declare dso_local i32 @dac_audio_sync(...) #1

declare dso_local i64 @copy_from_user(i8*, i8*, i64) #1

declare dso_local i32 @dac_audio_start_timer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
