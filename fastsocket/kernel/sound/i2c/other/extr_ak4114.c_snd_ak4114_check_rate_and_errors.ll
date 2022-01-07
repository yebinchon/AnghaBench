; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4114.c_snd_ak4114_check_rate_and_errors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4114.c_snd_ak4114_check_rate_and_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4114 = type { i8, i32, %struct.TYPE_5__*, i32 (%struct.ak4114*, i8, i8)*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@AK4114_REG_RCS1 = common dso_local global i32 0, align 4
@AK4114_CHECK_NO_STAT = common dso_local global i32 0, align 4
@AK4114_REG_RCS0 = common dso_local global i32 0, align 4
@AK4114_PAR = common dso_local global i8 0, align 1
@AK4114_V = common dso_local global i8 0, align 1
@AK4114_CCRC = common dso_local global i8 0, align 1
@AK4114_QCRC = common dso_local global i8 0, align 1
@AK4114_QINT = common dso_local global i8 0, align 1
@AK4114_CINT = common dso_local global i8 0, align 1
@AK4114_PEM = common dso_local global i8 0, align 1
@AK4114_AUDION = common dso_local global i8 0, align 1
@AK4114_AUTO = common dso_local global i8 0, align 1
@AK4114_UNLCK = common dso_local global i8 0, align 1
@AK4114_CHECK_NO_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_DRAINING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ak4114_check_rate_and_errors(%struct.ak4114* %0, i32 %1) #0 {
  %3 = alloca %struct.ak4114*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.ak4114* %0, %struct.ak4114** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %13 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %18 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %16
  %24 = phi %struct.snd_pcm_runtime* [ %21, %16 ], [ null, %22 ]
  store %struct.snd_pcm_runtime* %24, %struct.snd_pcm_runtime** %5, align 8
  store i32 0, i32* %7, align 4
  %25 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %26 = load i32, i32* @AK4114_REG_RCS1, align 4
  %27 = call zeroext i8 @reg_read(%struct.ak4114* %25, i32 %26)
  store i8 %27, i8* %9, align 1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @AK4114_CHECK_NO_STAT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %188

33:                                               ; preds = %23
  %34 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %35 = load i32, i32* @AK4114_REG_RCS0, align 4
  %36 = call zeroext i8 @reg_read(%struct.ak4114* %34, i32 %35)
  store i8 %36, i8* %8, align 1
  %37 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %38 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %37, i32 0, i32 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load i8, i8* %8, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @AK4114_PAR, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %33
  %48 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %49 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %33
  %53 = load i8, i8* %9, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* @AK4114_V, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %61 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %52
  %65 = load i8, i8* %9, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @AK4114_CCRC, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %73 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %64
  %77 = load i8, i8* %9, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* @AK4114_QCRC, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %85 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %76
  %89 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %90 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %89, i32 0, i32 0
  %91 = load i8, i8* %90, align 8
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @AK4114_QINT, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* @AK4114_CINT, align 1
  %96 = zext i8 %95 to i32
  %97 = or i32 %94, %96
  %98 = load i8, i8* @AK4114_PEM, align 1
  %99 = zext i8 %98 to i32
  %100 = or i32 %97, %99
  %101 = load i8, i8* @AK4114_AUDION, align 1
  %102 = zext i8 %101 to i32
  %103 = or i32 %100, %102
  %104 = load i8, i8* @AK4114_AUTO, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %103, %105
  %107 = load i8, i8* @AK4114_UNLCK, align 1
  %108 = zext i8 %107 to i32
  %109 = or i32 %106, %108
  %110 = and i32 %92, %109
  %111 = load i8, i8* %8, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* @AK4114_QINT, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* @AK4114_CINT, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %114, %116
  %118 = load i8, i8* @AK4114_PEM, align 1
  %119 = zext i8 %118 to i32
  %120 = or i32 %117, %119
  %121 = load i8, i8* @AK4114_AUDION, align 1
  %122 = zext i8 %121 to i32
  %123 = or i32 %120, %122
  %124 = load i8, i8* @AK4114_AUTO, align 1
  %125 = zext i8 %124 to i32
  %126 = or i32 %123, %125
  %127 = load i8, i8* @AK4114_UNLCK, align 1
  %128 = zext i8 %127 to i32
  %129 = or i32 %126, %128
  %130 = and i32 %112, %129
  %131 = xor i32 %110, %130
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %10, align 1
  %133 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %134 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 240
  %137 = load i8, i8* %9, align 1
  %138 = zext i8 %137 to i32
  %139 = and i32 %138, 240
  %140 = xor i32 %136, %139
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %11, align 1
  %142 = load i8, i8* %8, align 1
  %143 = zext i8 %142 to i32
  %144 = load i8, i8* @AK4114_QINT, align 1
  %145 = zext i8 %144 to i32
  %146 = load i8, i8* @AK4114_CINT, align 1
  %147 = zext i8 %146 to i32
  %148 = or i32 %145, %147
  %149 = xor i32 %148, -1
  %150 = and i32 %143, %149
  %151 = trunc i32 %150 to i8
  %152 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %153 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %152, i32 0, i32 0
  store i8 %151, i8* %153, align 8
  %154 = load i8, i8* %9, align 1
  %155 = zext i8 %154 to i32
  %156 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %157 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %159 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %158, i32 0, i32 4
  %160 = load i64, i64* %6, align 8
  %161 = call i32 @spin_unlock_irqrestore(i32* %159, i64 %160)
  %162 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %163 = load i8, i8* %8, align 1
  %164 = load i8, i8* %9, align 1
  %165 = load i8, i8* %10, align 1
  %166 = load i8, i8* %11, align 1
  %167 = call i32 @ak4114_notify(%struct.ak4114* %162, i8 zeroext %163, i8 zeroext %164, i8 zeroext %165, i8 zeroext %166)
  %168 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %169 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %168, i32 0, i32 3
  %170 = load i32 (%struct.ak4114*, i8, i8)*, i32 (%struct.ak4114*, i8, i8)** %169, align 8
  %171 = icmp ne i32 (%struct.ak4114*, i8, i8)* %170, null
  br i1 %171, label %172, label %187

172:                                              ; preds = %88
  %173 = load i8, i8* %10, align 1
  %174 = zext i8 %173 to i32
  %175 = load i8, i8* %11, align 1
  %176 = zext i8 %175 to i32
  %177 = or i32 %174, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %172
  %180 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %181 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %180, i32 0, i32 3
  %182 = load i32 (%struct.ak4114*, i8, i8)*, i32 (%struct.ak4114*, i8, i8)** %181, align 8
  %183 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %184 = load i8, i8* %10, align 1
  %185 = load i8, i8* %11, align 1
  %186 = call i32 %182(%struct.ak4114* %183, i8 zeroext %184, i8 zeroext %185)
  br label %187

187:                                              ; preds = %179, %172, %88
  br label %188

188:                                              ; preds = %187, %32
  %189 = load i8, i8* %9, align 1
  %190 = call i32 @external_rate(i8 zeroext %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @AK4114_CHECK_NO_RATE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %227, label %195

195:                                              ; preds = %188
  %196 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %197 = icmp ne %struct.snd_pcm_runtime* %196, null
  br i1 %197, label %198, label %227

198:                                              ; preds = %195
  %199 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %200 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %7, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %227

204:                                              ; preds = %198
  %205 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %206 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %205, i32 0, i32 2
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = load i64, i64* %6, align 8
  %209 = call i32 @snd_pcm_stream_lock_irqsave(%struct.TYPE_5__* %207, i64 %208)
  %210 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %211 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %210, i32 0, i32 2
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = call i64 @snd_pcm_running(%struct.TYPE_5__* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %204
  %216 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %217 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %216, i32 0, i32 2
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = load i32, i32* @SNDRV_PCM_STATE_DRAINING, align 4
  %220 = call i32 @snd_pcm_stop(%struct.TYPE_5__* %218, i32 %219)
  store i32 1, i32* %7, align 4
  br label %221

221:                                              ; preds = %215, %204
  %222 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %223 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %222, i32 0, i32 2
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %223, align 8
  %225 = load i64, i64* %6, align 8
  %226 = call i32 @snd_pcm_stream_unlock_irqrestore(%struct.TYPE_5__* %224, i64 %225)
  br label %227

227:                                              ; preds = %221, %198, %195, %188
  %228 = load i32, i32* %7, align 4
  ret i32 %228
}

declare dso_local zeroext i8 @reg_read(%struct.ak4114*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ak4114_notify(%struct.ak4114*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @external_rate(i8 zeroext) #1

declare dso_local i32 @snd_pcm_stream_lock_irqsave(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @snd_pcm_running(%struct.TYPE_5__*) #1

declare dso_local i32 @snd_pcm_stop(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @snd_pcm_stream_unlock_irqrestore(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
