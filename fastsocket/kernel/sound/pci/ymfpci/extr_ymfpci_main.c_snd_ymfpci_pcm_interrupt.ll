; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.snd_ymfpci_voice = type { %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_pcm* }
%struct.snd_ymfpci_playback_bank = type { i64, i64, i64, i64, i32 }
%struct.snd_ymfpci_pcm = type { i64, i64, i32, i64, %struct.TYPE_4__**, %struct.TYPE_6__*, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.snd_ymfpci_playback_bank* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ymfpci*, %struct.snd_ymfpci_voice*)* @snd_ymfpci_pcm_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ymfpci_pcm_interrupt(%struct.snd_ymfpci* %0, %struct.snd_ymfpci_voice* %1) #0 {
  %3 = alloca %struct.snd_ymfpci*, align 8
  %4 = alloca %struct.snd_ymfpci_voice*, align 8
  %5 = alloca %struct.snd_ymfpci_pcm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_ymfpci_playback_bank*, align 8
  %11 = alloca i64, align 8
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %3, align 8
  store %struct.snd_ymfpci_voice* %1, %struct.snd_ymfpci_voice** %4, align 8
  %12 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %4, align 8
  %13 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %12, i32 0, i32 1
  %14 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %13, align 8
  store %struct.snd_ymfpci_pcm* %14, %struct.snd_ymfpci_pcm** %5, align 8
  %15 = icmp eq %struct.snd_ymfpci_pcm* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %193

17:                                               ; preds = %2
  %18 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %18, i32 0, i32 5
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %193

23:                                               ; preds = %17
  %24 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %25 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %24, i32 0, i32 1
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %28 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %189

31:                                               ; preds = %23
  %32 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %4, align 8
  %33 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %32, i32 0, i32 0
  %34 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %33, align 8
  %35 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %36 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %34, i64 %37
  %39 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @le32_to_cpu(i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %44 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %31
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %50 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %53 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = add nsw i64 %48, %55
  store i64 %56, i64* %7, align 8
  br label %63

57:                                               ; preds = %31
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %60 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %57, %47
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %66 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %64
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %73 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %75 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %78 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = icmp sge i32 %76, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %63
  %82 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %83 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %86 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = srem i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %90 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %89, i32 0, i32 1
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %93 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %92, i32 0, i32 5
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_6__* %94)
  %96 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %97 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %96, i32 0, i32 1
  %98 = call i32 @spin_lock(i32* %97)
  br label %99

99:                                               ; preds = %81, %63
  %100 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %101 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %188

105:                                              ; preds = %99
  %106 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %107 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %106, i32 0, i32 5
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %8, align 4
  %111 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %112 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sub i64 1, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %9, align 4
  %116 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %4, align 8
  %117 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %116, i32 0, i32 0
  %118 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %118, i64 %120
  store %struct.snd_ymfpci_playback_bank* %121, %struct.snd_ymfpci_playback_bank** %10, align 8
  %122 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %123 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %122, i32 0, i32 2
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 15
  %131 = call i64 @cpu_to_le32(i32 %130)
  store i64 %131, i64* %11, align 8
  %132 = load i64, i64* %11, align 8
  %133 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %10, align 8
  %134 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %133, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  %135 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %136 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %105
  %140 = load i64, i64* %11, align 8
  %141 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %10, align 8
  %142 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %141, i32 0, i32 2
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %139, %105
  %144 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %145 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %144, i32 0, i32 4
  %146 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %146, i64 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = icmp ne %struct.TYPE_4__* %148, null
  br i1 %149, label %150, label %161

150:                                              ; preds = %143
  %151 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %152 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %151, i32 0, i32 4
  %153 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %153, i64 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %157, i64 %159
  store %struct.snd_ymfpci_playback_bank* %160, %struct.snd_ymfpci_playback_bank** %10, align 8
  br label %161

161:                                              ; preds = %150, %143
  %162 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %163 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %162, i32 0, i32 2
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 15
  %171 = call i64 @cpu_to_le32(i32 %170)
  store i64 %171, i64* %11, align 8
  %172 = load i64, i64* %11, align 8
  %173 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %10, align 8
  %174 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  %175 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %176 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %161
  %180 = load i64, i64* %11, align 8
  %181 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %10, align 8
  %182 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %179, %161
  %184 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %185 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %183, %99
  br label %189

189:                                              ; preds = %188, %23
  %190 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %191 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %190, i32 0, i32 1
  %192 = call i32 @spin_unlock(i32* %191)
  br label %193

193:                                              ; preds = %189, %22, %16
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_6__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
