; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_set_pcm_default_values.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_set_pcm_default_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_pcm_stream = type { %struct.TYPE_2__, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32* }

@hda_pcm_default_open_close = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@hda_pcm_default_prepare = common dso_local global i32* null, align 8
@hda_pcm_default_cleanup = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.hda_pcm_stream*)* @set_pcm_default_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pcm_default_values(%struct.hda_codec* %0, %struct.hda_pcm_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_pcm_stream*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_pcm_stream* %1, %struct.hda_pcm_stream** %5, align 8
  %7 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %8 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %62

11:                                               ; preds = %2
  %12 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %13 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %18 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %62, label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %23 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %24 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %27 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %34

31:                                               ; preds = %21
  %32 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %33 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %32, i32 0, i32 4
  br label %34

34:                                               ; preds = %31, %30
  %35 = phi i32* [ null, %30 ], [ %33, %31 ]
  %36 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %37 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %44

41:                                               ; preds = %34
  %42 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %43 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %42, i32 0, i32 3
  br label %44

44:                                               ; preds = %41, %40
  %45 = phi i32* [ null, %40 ], [ %43, %41 ]
  %46 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %47 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %54

51:                                               ; preds = %44
  %52 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %53 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %52, i32 0, i32 2
  br label %54

54:                                               ; preds = %51, %50
  %55 = phi i32* [ null, %50 ], [ %53, %51 ]
  %56 = call i32 @snd_hda_query_supported_pcm(%struct.hda_codec* %22, i64 %25, i32* %35, i32* %45, i32* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %133

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %16, %2
  %63 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %64 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i8*, i8** @hda_pcm_default_open_close, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %72 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  store i32* %70, i32** %73, align 8
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %76 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i8*, i8** @hda_pcm_default_open_close, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %84 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i32* %82, i32** %85, align 8
  br label %86

86:                                               ; preds = %80, %74
  %87 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %88 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %109

92:                                               ; preds = %86
  %93 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %94 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i64 @snd_BUG_ON(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %133

104:                                              ; preds = %92
  %105 = load i32*, i32** @hda_pcm_default_prepare, align 8
  %106 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %107 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i32* %105, i32** %108, align 8
  br label %109

109:                                              ; preds = %104, %86
  %110 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %111 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %132

115:                                              ; preds = %109
  %116 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %117 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i64 @snd_BUG_ON(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %133

127:                                              ; preds = %115
  %128 = load i32*, i32** @hda_pcm_default_cleanup, align 8
  %129 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %130 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i32* %128, i32** %131, align 8
  br label %132

132:                                              ; preds = %127, %109
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %124, %101, %59
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @snd_hda_query_supported_pcm(%struct.hda_codec*, i64, i32*, i32*, i32*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
