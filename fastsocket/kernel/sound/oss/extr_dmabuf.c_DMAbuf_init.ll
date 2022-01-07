; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32* }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@.str = private unnamed_addr constant [32 x i8] c"OSS: audio_devs[%d]->d == NULL\0A\00", align 1
@DMA_DUPLEX = common dso_local global i32 0, align 4
@sound_dmap_flag = common dso_local global i64 0, align 8
@DMAP_KEEP_ON_CLOSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DMAbuf_init(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.audio_operations*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %9, i64 %11
  %13 = load %struct.audio_operations*, %struct.audio_operations** %12, align 8
  store %struct.audio_operations* %13, %struct.audio_operations** %7, align 8
  %14 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %15 = icmp ne %struct.audio_operations* %14, null
  br i1 %15, label %16, label %120

16:                                               ; preds = %3
  %17 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %18 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp eq %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %120

21:                                               ; preds = %16
  %22 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %23 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %31 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %36 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %39, i64 %41
  %43 = load %struct.audio_operations*, %struct.audio_operations** %42, align 8
  %44 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %47 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %46, i32 0, i32 2
  store %struct.TYPE_2__* %45, %struct.TYPE_2__** %47, align 8
  %48 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %48, i64 %50
  %52 = load %struct.audio_operations*, %struct.audio_operations** %51, align 8
  %53 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %56 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %55, i32 0, i32 3
  store %struct.TYPE_2__* %54, %struct.TYPE_2__** %56, align 8
  br label %90

57:                                               ; preds = %29
  %58 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %59 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 0
  %62 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %63 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %62, i32 0, i32 3
  store %struct.TYPE_2__* %61, %struct.TYPE_2__** %63, align 8
  %64 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %65 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %64, i32 0, i32 2
  store %struct.TYPE_2__* %61, %struct.TYPE_2__** %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %68 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %72 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DMA_DUPLEX, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %57
  %78 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %79 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %78, i32 0, i32 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 1
  %82 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %83 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %82, i32 0, i32 3
  store %struct.TYPE_2__* %81, %struct.TYPE_2__** %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %86 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 8
  br label %89

89:                                               ; preds = %77, %57
  br label %90

90:                                               ; preds = %89, %34
  %91 = load i64, i64* @sound_dmap_flag, align 8
  %92 = load i64, i64* @DMAP_KEEP_ON_CLOSE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %90
  %95 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %96 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %103 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = call i32 @sound_alloc_dmap(%struct.TYPE_2__* %104)
  br label %106

106:                                              ; preds = %101, %94
  %107 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %108 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %115 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = call i32 @sound_alloc_dmap(%struct.TYPE_2__* %116)
  br label %118

118:                                              ; preds = %113, %106
  br label %119

119:                                              ; preds = %118, %90
  br label %120

120:                                              ; preds = %119, %16, %3
  ret void
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @sound_alloc_dmap(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
