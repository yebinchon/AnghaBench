; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_fm801.c_snd_fm801_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_fm801.c_snd_fm801_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801 = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@IRQ_STATUS = common dso_local global i32 0, align 4
@FM801_IRQ_PLAYBACK = common dso_local global i16 0, align 2
@FM801_IRQ_CAPTURE = common dso_local global i16 0, align 2
@FM801_IRQ_MPU = common dso_local global i16 0, align 2
@FM801_IRQ_VOLUME = common dso_local global i16 0, align 2
@IRQ_NONE = common dso_local global i32 0, align 4
@PLY_BUF1 = common dso_local global i32 0, align 4
@PLY_BUF2 = common dso_local global i32 0, align 4
@CAP_BUF1 = common dso_local global i32 0, align 4
@CAP_BUF2 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_fm801_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_fm801_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fm801*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.fm801*
  store %struct.fm801* %10, %struct.fm801** %6, align 8
  %11 = load %struct.fm801*, %struct.fm801** %6, align 8
  %12 = load i32, i32* @IRQ_STATUS, align 4
  %13 = call i32 @FM801_REG(%struct.fm801* %11, i32 %12)
  %14 = call zeroext i16 @inw(i32 %13)
  store i16 %14, i16* %7, align 2
  %15 = load i16, i16* @FM801_IRQ_PLAYBACK, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @FM801_IRQ_CAPTURE, align 2
  %18 = zext i16 %17 to i32
  %19 = or i32 %16, %18
  %20 = load i16, i16* @FM801_IRQ_MPU, align 2
  %21 = zext i16 %20 to i32
  %22 = or i32 %19, %21
  %23 = load i16, i16* @FM801_IRQ_VOLUME, align 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %22, %24
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, %25
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %7, align 2
  %30 = load i16, i16* %7, align 2
  %31 = icmp ne i16 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %229

34:                                               ; preds = %2
  %35 = load i16, i16* %7, align 2
  %36 = load %struct.fm801*, %struct.fm801** %6, align 8
  %37 = load i32, i32* @IRQ_STATUS, align 4
  %38 = call i32 @FM801_REG(%struct.fm801* %36, i32 %37)
  %39 = call i32 @outw(i16 zeroext %35, i32 %38)
  %40 = load %struct.fm801*, %struct.fm801** %6, align 8
  %41 = getelementptr inbounds %struct.fm801, %struct.fm801* %40, i32 0, i32 12
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %119

44:                                               ; preds = %34
  %45 = load i16, i16* %7, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* @FM801_IRQ_PLAYBACK, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %119

51:                                               ; preds = %44
  %52 = load %struct.fm801*, %struct.fm801** %6, align 8
  %53 = getelementptr inbounds %struct.fm801, %struct.fm801* %52, i32 0, i32 13
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %119

56:                                               ; preds = %51
  %57 = load %struct.fm801*, %struct.fm801** %6, align 8
  %58 = getelementptr inbounds %struct.fm801, %struct.fm801* %57, i32 0, i32 10
  %59 = call i32 @spin_lock(i32* %58)
  %60 = load %struct.fm801*, %struct.fm801** %6, align 8
  %61 = getelementptr inbounds %struct.fm801, %struct.fm801* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.fm801*, %struct.fm801** %6, align 8
  %65 = getelementptr inbounds %struct.fm801, %struct.fm801* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.fm801*, %struct.fm801** %6, align 8
  %68 = getelementptr inbounds %struct.fm801, %struct.fm801* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.fm801*, %struct.fm801** %6, align 8
  %72 = getelementptr inbounds %struct.fm801, %struct.fm801* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fm801*, %struct.fm801** %6, align 8
  %75 = getelementptr inbounds %struct.fm801, %struct.fm801* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = urem i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.fm801*, %struct.fm801** %6, align 8
  %79 = getelementptr inbounds %struct.fm801, %struct.fm801* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fm801*, %struct.fm801** %6, align 8
  %82 = getelementptr inbounds %struct.fm801, %struct.fm801* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = add i32 %80, %83
  store i32 %84, i32* %8, align 4
  %85 = load %struct.fm801*, %struct.fm801** %6, align 8
  %86 = getelementptr inbounds %struct.fm801, %struct.fm801* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = urem i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load %struct.fm801*, %struct.fm801** %6, align 8
  %91 = getelementptr inbounds %struct.fm801, %struct.fm801* %90, i32 0, i32 14
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = load %struct.fm801*, %struct.fm801** %6, align 8
  %97 = getelementptr inbounds %struct.fm801, %struct.fm801* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %56
  %102 = load %struct.fm801*, %struct.fm801** %6, align 8
  %103 = load i32, i32* @PLY_BUF1, align 4
  %104 = call i32 @FM801_REG(%struct.fm801* %102, i32 %103)
  br label %109

105:                                              ; preds = %56
  %106 = load %struct.fm801*, %struct.fm801** %6, align 8
  %107 = load i32, i32* @PLY_BUF2, align 4
  %108 = call i32 @FM801_REG(%struct.fm801* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %101
  %110 = phi i32 [ %104, %101 ], [ %108, %105 ]
  %111 = call i32 @outl(i64 %95, i32 %110)
  %112 = load %struct.fm801*, %struct.fm801** %6, align 8
  %113 = getelementptr inbounds %struct.fm801, %struct.fm801* %112, i32 0, i32 10
  %114 = call i32 @spin_unlock(i32* %113)
  %115 = load %struct.fm801*, %struct.fm801** %6, align 8
  %116 = getelementptr inbounds %struct.fm801, %struct.fm801* %115, i32 0, i32 13
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @snd_pcm_period_elapsed(i64 %117)
  br label %119

119:                                              ; preds = %109, %51, %44, %34
  %120 = load %struct.fm801*, %struct.fm801** %6, align 8
  %121 = getelementptr inbounds %struct.fm801, %struct.fm801* %120, i32 0, i32 12
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %199

124:                                              ; preds = %119
  %125 = load i16, i16* %7, align 2
  %126 = zext i16 %125 to i32
  %127 = load i16, i16* @FM801_IRQ_CAPTURE, align 2
  %128 = zext i16 %127 to i32
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %199

131:                                              ; preds = %124
  %132 = load %struct.fm801*, %struct.fm801** %6, align 8
  %133 = getelementptr inbounds %struct.fm801, %struct.fm801* %132, i32 0, i32 9
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %199

136:                                              ; preds = %131
  %137 = load %struct.fm801*, %struct.fm801** %6, align 8
  %138 = getelementptr inbounds %struct.fm801, %struct.fm801* %137, i32 0, i32 10
  %139 = call i32 @spin_lock(i32* %138)
  %140 = load %struct.fm801*, %struct.fm801** %6, align 8
  %141 = getelementptr inbounds %struct.fm801, %struct.fm801* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  %144 = load %struct.fm801*, %struct.fm801** %6, align 8
  %145 = getelementptr inbounds %struct.fm801, %struct.fm801* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.fm801*, %struct.fm801** %6, align 8
  %148 = getelementptr inbounds %struct.fm801, %struct.fm801* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = add i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load %struct.fm801*, %struct.fm801** %6, align 8
  %152 = getelementptr inbounds %struct.fm801, %struct.fm801* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.fm801*, %struct.fm801** %6, align 8
  %155 = getelementptr inbounds %struct.fm801, %struct.fm801* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = urem i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load %struct.fm801*, %struct.fm801** %6, align 8
  %159 = getelementptr inbounds %struct.fm801, %struct.fm801* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.fm801*, %struct.fm801** %6, align 8
  %162 = getelementptr inbounds %struct.fm801, %struct.fm801* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = add i32 %160, %163
  store i32 %164, i32* %8, align 4
  %165 = load %struct.fm801*, %struct.fm801** %6, align 8
  %166 = getelementptr inbounds %struct.fm801, %struct.fm801* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %8, align 4
  %169 = urem i32 %168, %167
  store i32 %169, i32* %8, align 4
  %170 = load %struct.fm801*, %struct.fm801** %6, align 8
  %171 = getelementptr inbounds %struct.fm801, %struct.fm801* %170, i32 0, i32 11
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = zext i32 %173 to i64
  %175 = add nsw i64 %172, %174
  %176 = load %struct.fm801*, %struct.fm801** %6, align 8
  %177 = getelementptr inbounds %struct.fm801, %struct.fm801* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, 1
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %136
  %182 = load %struct.fm801*, %struct.fm801** %6, align 8
  %183 = load i32, i32* @CAP_BUF1, align 4
  %184 = call i32 @FM801_REG(%struct.fm801* %182, i32 %183)
  br label %189

185:                                              ; preds = %136
  %186 = load %struct.fm801*, %struct.fm801** %6, align 8
  %187 = load i32, i32* @CAP_BUF2, align 4
  %188 = call i32 @FM801_REG(%struct.fm801* %186, i32 %187)
  br label %189

189:                                              ; preds = %185, %181
  %190 = phi i32 [ %184, %181 ], [ %188, %185 ]
  %191 = call i32 @outl(i64 %175, i32 %190)
  %192 = load %struct.fm801*, %struct.fm801** %6, align 8
  %193 = getelementptr inbounds %struct.fm801, %struct.fm801* %192, i32 0, i32 10
  %194 = call i32 @spin_unlock(i32* %193)
  %195 = load %struct.fm801*, %struct.fm801** %6, align 8
  %196 = getelementptr inbounds %struct.fm801, %struct.fm801* %195, i32 0, i32 9
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @snd_pcm_period_elapsed(i64 %197)
  br label %199

199:                                              ; preds = %189, %131, %124, %119
  %200 = load %struct.fm801*, %struct.fm801** %6, align 8
  %201 = getelementptr inbounds %struct.fm801, %struct.fm801* %200, i32 0, i32 8
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = icmp ne %struct.TYPE_2__* %202, null
  br i1 %203, label %204, label %219

204:                                              ; preds = %199
  %205 = load i16, i16* %7, align 2
  %206 = zext i16 %205 to i32
  %207 = load i16, i16* @FM801_IRQ_MPU, align 2
  %208 = zext i16 %207 to i32
  %209 = and i32 %206, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %204
  %212 = load i32, i32* %4, align 4
  %213 = load %struct.fm801*, %struct.fm801** %6, align 8
  %214 = getelementptr inbounds %struct.fm801, %struct.fm801* %213, i32 0, i32 8
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @snd_mpu401_uart_interrupt(i32 %212, i32 %217)
  br label %219

219:                                              ; preds = %211, %204, %199
  %220 = load i16, i16* %7, align 2
  %221 = zext i16 %220 to i32
  %222 = load i16, i16* @FM801_IRQ_VOLUME, align 2
  %223 = zext i16 %222 to i32
  %224 = and i32 %221, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %219
  br label %227

227:                                              ; preds = %226, %219
  %228 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %227, %32
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local zeroext i16 @inw(i32) #1

declare dso_local i32 @FM801_REG(%struct.fm801*, i32) #1

declare dso_local i32 @outw(i16 zeroext, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outl(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
