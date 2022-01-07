; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_calibrate_mute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_calibrate_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i32, i32*, i32, i32 }

@CS4231_LEFT_INPUT = common dso_local global i64 0, align 8
@CS4231_RIGHT_INPUT = common dso_local global i64 0, align 8
@CS4231_LOOPBACK = common dso_local global i64 0, align 8
@CS4231_AUX1_LEFT_INPUT = common dso_local global i64 0, align 8
@CS4231_AUX1_RIGHT_INPUT = common dso_local global i64 0, align 8
@CS4231_AUX2_LEFT_INPUT = common dso_local global i64 0, align 8
@CS4231_AUX2_RIGHT_INPUT = common dso_local global i64 0, align 8
@CS4231_LEFT_OUTPUT = common dso_local global i64 0, align 8
@CS4231_RIGHT_OUTPUT = common dso_local global i64 0, align 8
@WSS_HW_AD1848_MASK = common dso_local global i32 0, align 4
@CS4231_LEFT_LINE_IN = common dso_local global i64 0, align 8
@CS4231_RIGHT_LINE_IN = common dso_local global i64 0, align 8
@CS4231_MONO_CTRL = common dso_local global i64 0, align 8
@WSS_HW_INTERWAVE = common dso_local global i32 0, align 4
@CS4231_LEFT_MIC_INPUT = common dso_local global i64 0, align 8
@CS4231_RIGHT_MIC_INPUT = common dso_local global i64 0, align 8
@CS4231_LINE_LEFT_OUTPUT = common dso_local global i64 0, align 8
@CS4231_LINE_RIGHT_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_wss*, i32)* @snd_wss_calibrate_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_wss_calibrate_mute(%struct.snd_wss* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_wss*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.snd_wss* %0, %struct.snd_wss** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 128, i32 0
  store i32 %9, i32* %4, align 4
  %10 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %11 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %10, i32 0, i32 3
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %15 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %21 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %20, i32 0, i32 3
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  br label %235

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %24
  %28 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %29 = load i64, i64* @CS4231_LEFT_INPUT, align 8
  %30 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %31 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @CS4231_LEFT_INPUT, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snd_wss_dout(%struct.snd_wss* %28, i64 %29, i32 %35)
  %37 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %38 = load i64, i64* @CS4231_RIGHT_INPUT, align 8
  %39 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %40 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @CS4231_RIGHT_INPUT, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snd_wss_dout(%struct.snd_wss* %37, i64 %38, i32 %44)
  %46 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %47 = load i64, i64* @CS4231_LOOPBACK, align 8
  %48 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %49 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @CS4231_LOOPBACK, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @snd_wss_dout(%struct.snd_wss* %46, i64 %47, i32 %53)
  br label %65

55:                                               ; preds = %24
  %56 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %57 = load i64, i64* @CS4231_LEFT_INPUT, align 8
  %58 = call i32 @snd_wss_dout(%struct.snd_wss* %56, i64 %57, i32 0)
  %59 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %60 = load i64, i64* @CS4231_RIGHT_INPUT, align 8
  %61 = call i32 @snd_wss_dout(%struct.snd_wss* %59, i64 %60, i32 0)
  %62 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %63 = load i64, i64* @CS4231_LOOPBACK, align 8
  %64 = call i32 @snd_wss_dout(%struct.snd_wss* %62, i64 %63, i32 253)
  br label %65

65:                                               ; preds = %55, %27
  %66 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %67 = load i64, i64* @CS4231_AUX1_LEFT_INPUT, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %70 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @CS4231_AUX1_LEFT_INPUT, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %68, %74
  %76 = call i32 @snd_wss_dout(%struct.snd_wss* %66, i64 %67, i32 %75)
  %77 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %78 = load i64, i64* @CS4231_AUX1_RIGHT_INPUT, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %81 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @CS4231_AUX1_RIGHT_INPUT, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %79, %85
  %87 = call i32 @snd_wss_dout(%struct.snd_wss* %77, i64 %78, i32 %86)
  %88 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %89 = load i64, i64* @CS4231_AUX2_LEFT_INPUT, align 8
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %92 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @CS4231_AUX2_LEFT_INPUT, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %90, %96
  %98 = call i32 @snd_wss_dout(%struct.snd_wss* %88, i64 %89, i32 %97)
  %99 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %100 = load i64, i64* @CS4231_AUX2_RIGHT_INPUT, align 8
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %103 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @CS4231_AUX2_RIGHT_INPUT, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %101, %107
  %109 = call i32 @snd_wss_dout(%struct.snd_wss* %99, i64 %100, i32 %108)
  %110 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %111 = load i64, i64* @CS4231_LEFT_OUTPUT, align 8
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %114 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @CS4231_LEFT_OUTPUT, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %112, %118
  %120 = call i32 @snd_wss_dout(%struct.snd_wss* %110, i64 %111, i32 %119)
  %121 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %122 = load i64, i64* @CS4231_RIGHT_OUTPUT, align 8
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %125 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @CS4231_RIGHT_OUTPUT, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %123, %129
  %131 = call i32 @snd_wss_dout(%struct.snd_wss* %121, i64 %122, i32 %130)
  %132 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %133 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @WSS_HW_AD1848_MASK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %176, label %138

138:                                              ; preds = %65
  %139 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %140 = load i64, i64* @CS4231_LEFT_LINE_IN, align 8
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %143 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @CS4231_LEFT_LINE_IN, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %141, %147
  %149 = call i32 @snd_wss_dout(%struct.snd_wss* %139, i64 %140, i32 %148)
  %150 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %151 = load i64, i64* @CS4231_RIGHT_LINE_IN, align 8
  %152 = load i32, i32* %4, align 4
  %153 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %154 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @CS4231_RIGHT_LINE_IN, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %152, %158
  %160 = call i32 @snd_wss_dout(%struct.snd_wss* %150, i64 %151, i32 %159)
  %161 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %162 = load i64, i64* @CS4231_MONO_CTRL, align 8
  %163 = load i32, i32* %4, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %138
  br label %173

166:                                              ; preds = %138
  %167 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %168 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @CS4231_MONO_CTRL, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  br label %173

173:                                              ; preds = %166, %165
  %174 = phi i32 [ 192, %165 ], [ %172, %166 ]
  %175 = call i32 @snd_wss_dout(%struct.snd_wss* %161, i64 %162, i32 %174)
  br label %176

176:                                              ; preds = %173, %65
  %177 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %178 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @WSS_HW_INTERWAVE, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %227

182:                                              ; preds = %176
  %183 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %184 = load i64, i64* @CS4231_LEFT_MIC_INPUT, align 8
  %185 = load i32, i32* %4, align 4
  %186 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %187 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* @CS4231_LEFT_MIC_INPUT, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %185, %191
  %193 = call i32 @snd_wss_dout(%struct.snd_wss* %183, i64 %184, i32 %192)
  %194 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %195 = load i64, i64* @CS4231_RIGHT_MIC_INPUT, align 8
  %196 = load i32, i32* %4, align 4
  %197 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %198 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* @CS4231_RIGHT_MIC_INPUT, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %196, %202
  %204 = call i32 @snd_wss_dout(%struct.snd_wss* %194, i64 %195, i32 %203)
  %205 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %206 = load i64, i64* @CS4231_LINE_LEFT_OUTPUT, align 8
  %207 = load i32, i32* %4, align 4
  %208 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %209 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* @CS4231_LINE_LEFT_OUTPUT, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %207, %213
  %215 = call i32 @snd_wss_dout(%struct.snd_wss* %205, i64 %206, i32 %214)
  %216 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %217 = load i64, i64* @CS4231_LINE_RIGHT_OUTPUT, align 8
  %218 = load i32, i32* %4, align 4
  %219 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %220 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* @CS4231_LINE_RIGHT_OUTPUT, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %218, %224
  %226 = call i32 @snd_wss_dout(%struct.snd_wss* %216, i64 %217, i32 %225)
  br label %227

227:                                              ; preds = %182, %176
  %228 = load i32, i32* %4, align 4
  %229 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %230 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  %231 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %232 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %231, i32 0, i32 3
  %233 = load i64, i64* %5, align 8
  %234 = call i32 @spin_unlock_irqrestore(i32* %232, i64 %233)
  br label %235

235:                                              ; preds = %227, %19
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_wss_dout(%struct.snd_wss*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
