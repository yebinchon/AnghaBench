; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_move_wrpointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_move_wrpointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { %struct.TYPE_2__*, %struct.dma_buffparms* }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.dma_buffparms = type { i32, i64, i64, i32, i64, i64, i32, i64*, i64, i32, i32, i32, i32*, i32 }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@DMA_POST = common dso_local global i32 0, align 4
@DMA_DIRTY = common dso_local global i32 0, align 4
@DMA_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DMAbuf_move_wrpointer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_operations*, align 8
  %6 = alloca %struct.dma_buffparms*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %13, i64 %15
  %17 = load %struct.audio_operations*, %struct.audio_operations** %16, align 8
  store %struct.audio_operations* %17, %struct.audio_operations** %5, align 8
  %18 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %19 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %18, i32 0, i32 1
  %20 = load %struct.dma_buffparms*, %struct.dma_buffparms** %19, align 8
  store %struct.dma_buffparms* %20, %struct.dma_buffparms** %6, align 8
  %21 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %22 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %21, i32 0, i32 11
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %26 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DMA_POST, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %31 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %34 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = udiv i64 %32, %35
  %37 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %38 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = mul i64 %36, %39
  store i64 %40, i64* %7, align 8
  %41 = load i32, i32* @DMA_POST, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %44 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %48 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %47, i32 0, i32 3
  store i32 -1, i32* %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %52 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load i32, i32* @DMA_DIRTY, align 4
  %56 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %57 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %61 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %64 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %62, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %2
  %68 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %69 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %12, align 8
  %71 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %72 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %75 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = srem i64 %73, %77
  %79 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %80 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %79, i32 0, i32 4
  store i64 %78, i64* %80, align 8
  %81 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %82 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = sub nsw i64 %84, %83
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %88 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %89, %86
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %67, %2
  %92 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %93 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %96 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = udiv i64 %94, %97
  %99 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %100 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = mul i64 %98, %101
  store i64 %102, i64* %8, align 8
  %103 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %104 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %105, 1
  %107 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %108 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = urem i64 %106, %110
  store i64 %111, i64* %9, align 8
  %112 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %113 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %112, i32 0, i32 12
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %119 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %118, i32 0, i32 13
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %124, %91
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %8, align 8
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %124, label %155

124:                                              ; preds = %120
  %125 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %126 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %129 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %128, i32 0, i32 7
  %130 = load i64*, i64** %129, align 8
  %131 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %132 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %131, i32 0, i32 8
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i64, i64* %130, i64 %133
  store i64 %127, i64* %134, align 8
  %135 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %136 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %135, i32 0, i32 8
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, 1
  %139 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %140 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = urem i64 %138, %142
  %144 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %145 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %144, i32 0, i32 8
  store i64 %143, i64* %145, align 8
  %146 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %147 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %151 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %7, align 8
  %154 = add i64 %153, %152
  store i64 %154, i64* %7, align 8
  br label %120

155:                                              ; preds = %120
  %156 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %157 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %7, align 8
  %160 = sub i64 %158, %159
  %161 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %162 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %161, i32 0, i32 7
  %163 = load i64*, i64** %162, align 8
  %164 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %165 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %164, i32 0, i32 8
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i64, i64* %163, i64 %166
  store i64 %160, i64* %167, align 8
  %168 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %169 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32 (i32)*, i32 (i32)** %171, align 8
  %173 = icmp ne i32 (i32)* %172, null
  br i1 %173, label %174, label %182

174:                                              ; preds = %155
  %175 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %176 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %175, i32 0, i32 0
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32 (i32)*, i32 (i32)** %178, align 8
  %180 = load i32, i32* %3, align 4
  %181 = call i32 %179(i32 %180)
  br label %182

182:                                              ; preds = %174, %155
  %183 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %184 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @DMA_ACTIVE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %216, label %189

189:                                              ; preds = %182
  %190 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %191 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %190, i32 0, i32 10
  %192 = load i32, i32* %191, align 4
  %193 = icmp sgt i32 %192, 1
  br i1 %193, label %211, label %194

194:                                              ; preds = %189
  %195 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %196 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %195, i32 0, i32 10
  %197 = load i32, i32* %196, align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %194
  %200 = load i32, i32* %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %211, label %202

202:                                              ; preds = %199
  %203 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %204 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %203, i32 0, i32 10
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %207 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %206, i32 0, i32 9
  %208 = load i32, i32* %207, align 8
  %209 = sub nsw i32 %208, 1
  %210 = icmp sge i32 %205, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %202, %199, %189
  %212 = load i32, i32* %3, align 4
  %213 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %214 = call i32 @DMAbuf_launch_output(i32 %212, %struct.dma_buffparms* %213)
  br label %215

215:                                              ; preds = %211, %202, %194
  br label %216

216:                                              ; preds = %215, %182
  %217 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %218 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %217, i32 0, i32 11
  %219 = load i64, i64* %11, align 8
  %220 = call i32 @spin_unlock_irqrestore(i32* %218, i64 %219)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DMAbuf_launch_output(i32, %struct.dma_buffparms*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
