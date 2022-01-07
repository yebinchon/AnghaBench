; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_load_dsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_load_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32*, i32, i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"DSP is already loaded!\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"load_dsp: Set bad_board to TRUE\0A\00", align 1
@DSP_VC_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"LoadDsp: send_vector DSP_VC_RESET failed, Critical Failure\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CHI32_STATUS_REG = common dso_local global i32 0, align 4
@CHI32_STATUS_REG_HF3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"load_dsp: Timeout waiting for CHI32_STATUS_REG_HF3\0A\00", align 1
@CHI32_CONTROL_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"load_dsp: failed to write number of DSP words\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"load_dsp: failed to write DSP address\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"load_dsp: failed to write DSP memory type\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"load_dsp: failed to write DSP data\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"load_dsp: Failed to write final zero\0A\00", align 1
@CHI32_STATUS_REG_HF4 = common dso_local global i32 0, align 4
@DSP_FNC_SET_COMMPAGE_ADDR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [53 x i8] c"load_dsp: Failed to write DSP_FNC_SET_COMMPAGE_ADDR\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"load_dsp: Failed to write comm page address\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"load_dsp: Failed to read serial number\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"load_dsp: OK!\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"load_dsp: DSP load timed out waiting for HF4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32*)* @load_dsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_dsp(%struct.echoaudio* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %14 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @DE_INIT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %251

20:                                               ; preds = %2
  %21 = load i8*, i8** @TRUE, align 8
  %22 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %23 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %25 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load i8*, i8** @FALSE, align 8
  %27 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %28 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = call i32 @DE_INIT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %31 = load i32, i32* @DSP_VC_RESET, align 4
  %32 = call i64 @send_vector(%struct.echoaudio* %30, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = call i32 @DE_INIT(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %251

38:                                               ; preds = %20
  %39 = call i32 @udelay(i32 10)
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %53, %38
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 1000
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %45 = load i32, i32* @CHI32_STATUS_REG, align 4
  %46 = call i32 @get_dsp_register(%struct.echoaudio* %44, i32 %45)
  %47 = load i32, i32* @CHI32_STATUS_REG_HF3, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %56

51:                                               ; preds = %43
  %52 = call i32 @udelay(i32 10)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %40

56:                                               ; preds = %50, %40
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 1000
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = call i32 @DE_INIT(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %251

63:                                               ; preds = %56
  %64 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %65 = load i32, i32* @CHI32_CONTROL_REG, align 4
  %66 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %67 = load i32, i32* @CHI32_CONTROL_REG, align 4
  %68 = call i32 @get_dsp_register(%struct.echoaudio* %66, i32 %67)
  %69 = or i32 %68, 2304
  %70 = call i32 @set_dsp_register(%struct.echoaudio* %64, i32 %65, i32 %69)
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %178, %63
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %179

85:                                               ; preds = %74
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %12, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %85
  br label %179

103:                                              ; preds = %85
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 16
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %109, %115
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 2
  store i32 %118, i32* %8, align 4
  %119 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i64 @write_dsp(%struct.echoaudio* %119, i32 %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %103
  %124 = call i32 @DE_INIT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %251

127:                                              ; preds = %103
  %128 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i64 @write_dsp(%struct.echoaudio* %128, i32 %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = call i32 @DE_INIT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %251

136:                                              ; preds = %127
  %137 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i64 @write_dsp(%struct.echoaudio* %137, i32 %138)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = call i32 @DE_INIT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %143 = load i32, i32* @EIO, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %251

145:                                              ; preds = %136
  store i32 0, i32* %10, align 4
  br label %146

146:                                              ; preds = %173, %145
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %178

150:                                              ; preds = %146
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 16
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %156, %162
  store i32 %163, i32* %7, align 4
  %164 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i64 @write_dsp(%struct.echoaudio* %164, i32 %165)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %150
  %169 = call i32 @DE_INIT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %170 = load i32, i32* @EIO, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %251

172:                                              ; preds = %150
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 2
  store i32 %177, i32* %8, align 4
  br label %146

178:                                              ; preds = %146
  br label %74

179:                                              ; preds = %102, %84
  %180 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %181 = call i64 @write_dsp(%struct.echoaudio* %180, i32 0)
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = call i32 @DE_INIT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %185 = load i32, i32* @EIO, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %3, align 4
  br label %251

187:                                              ; preds = %179
  %188 = call i32 @udelay(i32 10)
  store i32 0, i32* %10, align 4
  br label %189

189:                                              ; preds = %244, %187
  %190 = load i32, i32* %10, align 4
  %191 = icmp slt i32 %190, 5000
  br i1 %191, label %192, label %247

192:                                              ; preds = %189
  %193 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %194 = load i32, i32* @CHI32_STATUS_REG, align 4
  %195 = call i32 @get_dsp_register(%struct.echoaudio* %193, i32 %194)
  %196 = load i32, i32* @CHI32_STATUS_REG_HF4, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %242

199:                                              ; preds = %192
  %200 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %201 = load i32, i32* @CHI32_CONTROL_REG, align 4
  %202 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %203 = load i32, i32* @CHI32_CONTROL_REG, align 4
  %204 = call i32 @get_dsp_register(%struct.echoaudio* %202, i32 %203)
  %205 = and i32 %204, -6913
  %206 = call i32 @set_dsp_register(%struct.echoaudio* %200, i32 %201, i32 %205)
  %207 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %208 = load i32, i32* @DSP_FNC_SET_COMMPAGE_ADDR, align 4
  %209 = call i64 @write_dsp(%struct.echoaudio* %207, i32 %208)
  %210 = icmp slt i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %199
  %212 = call i32 @DE_INIT(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0))
  %213 = load i32, i32* @EIO, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %3, align 4
  br label %251

215:                                              ; preds = %199
  %216 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %217 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %218 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = call i64 @write_dsp(%struct.echoaudio* %216, i32 %219)
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %215
  %223 = call i32 @DE_INIT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %224 = load i32, i32* @EIO, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %3, align 4
  br label %251

226:                                              ; preds = %215
  %227 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %228 = call i64 @read_sn(%struct.echoaudio* %227)
  %229 = icmp slt i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = call i32 @DE_INIT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %232 = load i32, i32* @EIO, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %3, align 4
  br label %251

234:                                              ; preds = %226
  %235 = load i32*, i32** %5, align 8
  %236 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %237 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %236, i32 0, i32 0
  store i32* %235, i32** %237, align 8
  %238 = load i8*, i8** @FALSE, align 8
  %239 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %240 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %239, i32 0, i32 2
  store i8* %238, i8** %240, align 8
  %241 = call i32 @DE_INIT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %251

242:                                              ; preds = %192
  %243 = call i32 @udelay(i32 100)
  br label %244

244:                                              ; preds = %242
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %10, align 4
  br label %189

247:                                              ; preds = %189
  %248 = call i32 @DE_INIT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0))
  %249 = load i32, i32* @EIO, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %247, %234, %230, %222, %211, %183, %168, %141, %132, %123, %59, %34, %18
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i32 @DE_INIT(i8*) #1

declare dso_local i64 @send_vector(%struct.echoaudio*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @get_dsp_register(%struct.echoaudio*, i32) #1

declare dso_local i32 @set_dsp_register(%struct.echoaudio*, i32, i32) #1

declare dso_local i64 @write_dsp(%struct.echoaudio*, i32) #1

declare dso_local i64 @read_sn(%struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
