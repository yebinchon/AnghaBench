; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.snd_ymfpci_pcm* }
%struct.snd_ymfpci_pcm = type { i32, %struct.TYPE_8__**, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.snd_ymfpci = type { i32, i32, i8**, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.snd_kcontrol* }
%struct.snd_kcontrol = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_ymfpci_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ymfpci*, align 8
  %6 = alloca %struct.snd_ymfpci_pcm*, align 8
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_ymfpci* %10, %struct.snd_ymfpci** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %14, align 8
  store %struct.snd_ymfpci_pcm* %15, %struct.snd_ymfpci_pcm** %6, align 8
  store %struct.snd_kcontrol* null, %struct.snd_kcontrol** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %20 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %166

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %162 [
    i32 130, label %30
    i32 132, label %30
    i32 131, label %30
    i32 129, label %88
    i32 133, label %120
    i32 128, label %120
  ]

30:                                               ; preds = %28, %28, %28
  %31 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %32 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %33, i64 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %40 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %39, i32 0, i32 2
  %41 = load i8**, i8*** %40, align 8
  %42 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %43 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %44, i64 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %41, i64 %50
  store i8* %38, i8** %51, align 8
  %52 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %53 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = icmp ne %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %85

58:                                               ; preds = %30
  %59 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %60 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %85, label %63

63:                                               ; preds = %58
  %64 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %65 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %66, i64 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @cpu_to_le32(i32 %70)
  %72 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %73 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %72, i32 0, i32 2
  %74 = load i8**, i8*** %73, align 8
  %75 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %76 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %77, i64 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %74, i64 %83
  store i8* %71, i8** %84, align 8
  br label %85

85:                                               ; preds = %63, %58, %30
  %86 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %87 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %165

88:                                               ; preds = %28
  %89 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %93 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %119

96:                                               ; preds = %88
  %97 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %98 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %119, label %101

101:                                              ; preds = %96
  %102 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %103 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %102, i32 0, i32 3
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %109, align 8
  store %struct.snd_kcontrol* %110, %struct.snd_kcontrol** %7, align 8
  %111 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %112 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %113 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %111
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %101, %96, %88
  br label %120

120:                                              ; preds = %28, %28, %119
  %121 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %122 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %121, i32 0, i32 2
  %123 = load i8**, i8*** %122, align 8
  %124 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %125 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %124, i32 0, i32 1
  %126 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %126, i64 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %123, i64 %132
  store i8* null, i8** %133, align 8
  %134 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %135 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %136, i64 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = icmp ne %struct.TYPE_8__* %138, null
  br i1 %139, label %140, label %159

140:                                              ; preds = %120
  %141 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %142 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %159, label %145

145:                                              ; preds = %140
  %146 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %147 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %146, i32 0, i32 2
  %148 = load i8**, i8*** %147, align 8
  %149 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %150 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %149, i32 0, i32 1
  %151 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %151, i64 1
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %148, i64 %157
  store i8* null, i8** %158, align 8
  br label %159

159:                                              ; preds = %145, %140, %120
  %160 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %161 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  br label %165

162:                                              ; preds = %28
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %162, %159, %85
  br label %166

166:                                              ; preds = %165, %25
  %167 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %168 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %167, i32 0, i32 1
  %169 = call i32 @spin_unlock(i32* %168)
  %170 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %171 = icmp ne %struct.snd_kcontrol* %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %166
  %173 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %174 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %177 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %178 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %177, i32 0, i32 0
  %179 = call i32 @snd_ctl_notify(i32 %175, i32 %176, i32* %178)
  br label %180

180:                                              ; preds = %172, %166
  %181 = load i32, i32* %8, align 4
  ret i32 %181
}

declare dso_local %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
