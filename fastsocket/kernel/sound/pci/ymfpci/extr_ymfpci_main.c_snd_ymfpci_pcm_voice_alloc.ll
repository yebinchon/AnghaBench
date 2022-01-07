; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm_voice_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm_voice_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci_pcm = type { %struct.TYPE_6__**, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.snd_ymfpci_pcm*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@YMFPCI_PCM = common dso_local global i32 0, align 4
@snd_ymfpci_pcm_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ymfpci_pcm*, i32)* @snd_ymfpci_pcm_voice_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_pcm_voice_alloc(%struct.snd_ymfpci_pcm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ymfpci_pcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_ymfpci_pcm* %0, %struct.snd_ymfpci_pcm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %8 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %9, i64 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %22, i64 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call i32 @snd_ymfpci_voice_free(%struct.TYPE_5__* %19, %struct.TYPE_6__* %24)
  %26 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %28, i64 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %29, align 8
  br label %30

30:                                               ; preds = %16, %13, %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %35 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %36, i64 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %153

41:                                               ; preds = %33, %30
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %46 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %47, i64 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = icmp ne %struct.TYPE_6__* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %53 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %54, i64 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = icmp ne %struct.TYPE_6__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %153

59:                                               ; preds = %51, %44, %41
  %60 = load i32, i32* %5, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %91

62:                                               ; preds = %59
  %63 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %64 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %65, i64 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %69, label %90

69:                                               ; preds = %62
  %70 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %71 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = icmp eq %struct.TYPE_6__* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %69
  %77 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %78 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %81 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %82, i64 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = call i32 @snd_ymfpci_voice_free(%struct.TYPE_5__* %79, %struct.TYPE_6__* %84)
  %86 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %87 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %89, align 8
  br label %90

90:                                               ; preds = %76, %69, %62
  br label %91

91:                                               ; preds = %90, %59
  %92 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %93 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* @YMFPCI_PCM, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp sgt i32 %96, 1
  %98 = zext i1 %97 to i32
  %99 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %100 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %101, i64 0
  %103 = call i32 @snd_ymfpci_voice_alloc(%struct.TYPE_5__* %94, i32 %95, i32 %98, %struct.TYPE_6__** %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %91
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %153

108:                                              ; preds = %91
  %109 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %110 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %111 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %112, i64 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store %struct.snd_ymfpci_pcm* %109, %struct.snd_ymfpci_pcm** %115, align 8
  %116 = load i32, i32* @snd_ymfpci_pcm_interrupt, align 4
  %117 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %118 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %119, i64 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  store i32 %116, i32* %122, align 8
  %123 = load i32, i32* %5, align 4
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %152

125:                                              ; preds = %108
  %126 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %127 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %132 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %133, i64 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %139
  %141 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %142 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %143, i64 1
  store %struct.TYPE_6__* %140, %struct.TYPE_6__** %144, align 8
  %145 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %146 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %147 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %148, i64 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store %struct.snd_ymfpci_pcm* %145, %struct.snd_ymfpci_pcm** %151, align 8
  br label %152

152:                                              ; preds = %125, %108
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %106, %58, %40
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @snd_ymfpci_voice_free(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @snd_ymfpci_voice_alloc(%struct.TYPE_5__*, i32, i32, %struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
