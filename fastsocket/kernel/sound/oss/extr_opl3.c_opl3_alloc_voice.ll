; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_opl3.c_opl3_alloc_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_opl3.c_opl3_alloc_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.sbi_instrument*, %struct.TYPE_3__* }
%struct.sbi_instrument = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.voice_alloc_info = type { i64*, i32* }

@devc = common dso_local global %struct.TYPE_4__* null, align 8
@OPL3_PATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.voice_alloc_info*)* @opl3_alloc_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opl3_alloc_voice(i32 %0, i32 %1, i32 %2, %struct.voice_alloc_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.voice_alloc_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sbi_instrument*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.voice_alloc_info* %3, %struct.voice_alloc_info** %9, align 8
  store i32 2147483647, i32* %15, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 15
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %4
  store i32 0, i32* %18, align 4
  br label %34

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %18, align 4
  br label %34

34:                                               ; preds = %25, %24
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.sbi_instrument*, %struct.sbi_instrument** %36, align 8
  %38 = load i32, i32* %18, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %37, i64 %39
  store %struct.sbi_instrument* %40, %struct.sbi_instrument** %16, align 8
  %41 = load %struct.sbi_instrument*, %struct.sbi_instrument** %16, align 8
  %42 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %34
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 12
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %34
  store i32 0, i32* %17, align 4
  br label %65

51:                                               ; preds = %45
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 12
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.sbi_instrument*, %struct.sbi_instrument** %16, align 8
  %58 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @OPL3_PATCH, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %17, align 4
  br label %64

63:                                               ; preds = %51
  store i32 0, i32* %17, align 4
  br label %64

64:                                               ; preds = %63, %56
  br label %65

65:                                               ; preds = %64, %50
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 6, i32* %14, align 4
  br label %80

69:                                               ; preds = %65
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 12
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 6, i32* %11, align 4
  store i32 6, i32* %13, align 4
  br label %76

75:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %76, %68
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %121, %80
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %124

86:                                               ; preds = %82
  %87 = load %struct.voice_alloc_info*, %struct.voice_alloc_info** %9, align 8
  %88 = getelementptr inbounds %struct.voice_alloc_info, %struct.voice_alloc_info* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %142

97:                                               ; preds = %86
  %98 = load %struct.voice_alloc_info*, %struct.voice_alloc_info** %9, align 8
  %99 = getelementptr inbounds %struct.voice_alloc_info, %struct.voice_alloc_info* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %97
  %108 = load %struct.voice_alloc_info*, %struct.voice_alloc_info** %9, align 8
  %109 = getelementptr inbounds %struct.voice_alloc_info, %struct.voice_alloc_info* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %107, %97
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* %14, align 4
  %120 = srem i32 %118, %119
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %82

124:                                              ; preds = %82
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 0, i32* %12, align 4
  br label %128

128:                                              ; preds = %127, %124
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp sgt i32 %129, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %134, %128
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %95
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
