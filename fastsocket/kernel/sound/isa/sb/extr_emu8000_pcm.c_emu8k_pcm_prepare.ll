; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64, i32, %struct.snd_emu8k_pcm* }
%struct.snd_emu8k_pcm = type { i32, i32*, i32, %struct.TYPE_7__*, i64, i64*, i64, i32, i64, i64, i64 }
%struct.TYPE_7__ = type { i32 }

@LOOP_BLANK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @emu8k_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu8k_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_emu8k_pcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  %12 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %11, align 8
  store %struct.snd_emu8k_pcm* %12, %struct.snd_emu8k_pcm** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @calc_rate_offset(i32 %17)
  %19 = add nsw i64 57344, %18
  %20 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %21 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %20, i32 0, i32 10
  store i64 %19, i64* %21, align 8
  %22 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %23 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %22, i32 0, i32 9
  store i64 0, i64* %23, align 8
  %24 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %25 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %24, i32 0, i32 8
  store i64 0, i64* %25, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %32 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %31, i32 0, i32 4
  store i64 %30, i64* %32, align 8
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %39 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %46 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %48 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @LOOP_BLANK_SIZE, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %54 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %53, i32 0, i32 5
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  store i64 %52, i64* %56, align 8
  %57 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %58 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %78

61:                                               ; preds = %1
  %62 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %63 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %62, i32 0, i32 5
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %68 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load i32, i32* @LOOP_BLANK_SIZE, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %75 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %74, i32 0, i32 5
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %61, %1
  %79 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %80 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %85 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 255, i32* %87, align 4
  %88 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %89 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 0, i32* %91, align 4
  br label %97

92:                                               ; preds = %78
  %93 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %94 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 128, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %83
  %98 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %99 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %185, label %102

102:                                              ; preds = %97
  %103 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %104 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %103, i32 0, i32 3
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @snd_emux_terminate_all(i32 %107)
  %109 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %110 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %109, i32 0, i32 3
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %113 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @emu8k_open_dram_for_pcm(%struct.TYPE_7__* %111, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %102
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %196

119:                                              ; preds = %102
  %120 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %121 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %120, i32 0, i32 2
  store i32 1, i32* %121, align 8
  %122 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %123 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %122, i32 0, i32 3
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = call i32 @snd_emu8000_write_wait(%struct.TYPE_7__* %124, i32 0)
  %126 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %127 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %126, i32 0, i32 3
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %130 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @EMU8000_SMALW_WRITE(%struct.TYPE_7__* %128, i64 %131)
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %142, %119
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @LOOP_BLANK_SIZE, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %139 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %138, i32 0, i32 3
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = call i32 @EMU8000_SMLD_WRITE(%struct.TYPE_7__* %140, i32 0)
  br label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %133

145:                                              ; preds = %133
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %181, %145
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %149 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %184

152:                                              ; preds = %146
  %153 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %154 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %153, i32 0, i32 3
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %157 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %156, i32 0, i32 5
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %164 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %162, %165
  %167 = call i32 @EMU8000_SMALW_WRITE(%struct.TYPE_7__* %155, i64 %166)
  store i32 0, i32* %6, align 4
  br label %168

168:                                              ; preds = %177, %152
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @LOOP_BLANK_SIZE, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %168
  %173 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %174 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %173, i32 0, i32 3
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = call i32 @EMU8000_SMLD_WRITE(%struct.TYPE_7__* %175, i32 0)
  br label %177

177:                                              ; preds = %172
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %168

180:                                              ; preds = %168
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %146

184:                                              ; preds = %146
  br label %185

185:                                              ; preds = %184, %97
  %186 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %187 = call i32 @setup_voice(%struct.snd_emu8k_pcm* %186, i32 0)
  %188 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %189 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp sgt i32 %190, 1
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %4, align 8
  %194 = call i32 @setup_voice(%struct.snd_emu8k_pcm* %193, i32 1)
  br label %195

195:                                              ; preds = %192, %185
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %195, %117
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i64 @calc_rate_offset(i32) #1

declare dso_local i32 @snd_emux_terminate_all(i32) #1

declare dso_local i32 @emu8k_open_dram_for_pcm(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @snd_emu8000_write_wait(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @EMU8000_SMALW_WRITE(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @EMU8000_SMLD_WRITE(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @setup_voice(%struct.snd_emu8k_pcm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
