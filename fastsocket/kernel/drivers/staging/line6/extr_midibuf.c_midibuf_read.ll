; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midibuf.c_midibuf_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midibuf.c_midibuf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MidiBuffer = type { i32, i64, i32*, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midibuf_read(%struct.MidiBuffer* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.MidiBuffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.MidiBuffer* %0, %struct.MidiBuffer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %267

21:                                               ; preds = %3
  %22 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %23 = call i64 @midibuf_is_empty(%struct.MidiBuffer* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %267

26:                                               ; preds = %21
  %27 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %28 = call i32 @midibuf_bytes_used(%struct.MidiBuffer* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %36 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %40 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %45 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %48 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, 128
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %34
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @midibuf_message_length(i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %60 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  br label %80

61:                                               ; preds = %34
  %62 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %63 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %68 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @midibuf_message_length(i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %15, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %77

76:                                               ; preds = %66
  store i32 -1, i32* %12, align 4
  br label %77

77:                                               ; preds = %76, %73
  br label %79

78:                                               ; preds = %61
  store i32 -1, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %77
  br label %80

80:                                               ; preds = %79, %55
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %177

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %83
  store i32 1, i32* %14, align 4
  br label %88

88:                                               ; preds = %108, %87
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %88
  %93 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %94 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %97 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 %98, %100
  %102 = getelementptr inbounds i32, i32* %95, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 128
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  br label %111

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %88

111:                                              ; preds = %106, %88
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %12, align 4
  br label %171

113:                                              ; preds = %83
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %9, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %10, align 4
  store i32 1, i32* %14, align 4
  br label %117

117:                                              ; preds = %137, %113
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %117
  %122 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %123 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %126 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = add i64 %127, %129
  %131 = getelementptr inbounds i32, i32* %124, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 128
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %121
  br label %140

136:                                              ; preds = %121
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %14, align 4
  br label %117

140:                                              ; preds = %135, %117
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* %14, align 4
  store i32 %145, i32* %12, align 4
  br label %170

146:                                              ; preds = %140
  store i32 0, i32* %14, align 4
  br label %147

147:                                              ; preds = %163, %146
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %166

151:                                              ; preds = %147
  %152 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %153 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 128
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %151
  br label %166

162:                                              ; preds = %151
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %147

166:                                              ; preds = %161, %147
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %167, %168
  store i32 %169, i32* %12, align 4
  br label %170

170:                                              ; preds = %166, %144
  br label %171

171:                                              ; preds = %170, %111
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i32 -1, i32* %12, align 4
  br label %176

176:                                              ; preds = %175, %171
  br label %177

177:                                              ; preds = %176, %80
  %178 = load i32, i32* %12, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %182 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %180
  store i32 0, i32* %4, align 4
  br label %267

186:                                              ; preds = %180
  br label %194

187:                                              ; preds = %177
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  store i32 0, i32* %4, align 4
  br label %267

192:                                              ; preds = %187
  %193 = load i32, i32* %12, align 4
  store i32 %193, i32* %7, align 4
  br label %194

194:                                              ; preds = %192, %186
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %218

198:                                              ; preds = %194
  %199 = load i8*, i8** %6, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %204 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %207 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @memcpy(i8* %202, i32* %209, i32 %210)
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %215 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = add i64 %216, %213
  store i64 %217, i64* %215, align 8
  br label %251

218:                                              ; preds = %194
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* %9, align 4
  %221 = sub nsw i32 %219, %220
  store i32 %221, i32* %10, align 4
  %222 = load i8*, i8** %6, align 8
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  %226 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %227 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %230 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @memcpy(i8* %225, i32* %232, i32 %233)
  %235 = load i8*, i8** %6, align 8
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %235, i64 %237
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  %242 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %243 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @memcpy(i8* %241, i32* %244, i32 %245)
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %250 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %249, i32 0, i32 1
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %218, %198
  %252 = load i32, i32* %13, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %251
  %255 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %256 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = trunc i32 %257 to i8
  %259 = load i8*, i8** %6, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 0
  store i8 %258, i8* %260, align 1
  br label %261

261:                                              ; preds = %254, %251
  %262 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %263 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %262, i32 0, i32 4
  store i64 0, i64* %263, align 8
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %264, %265
  store i32 %266, i32* %4, align 4
  br label %267

267:                                              ; preds = %261, %191, %185, %25, %18
  %268 = load i32, i32* %4, align 4
  ret i32 %268
}

declare dso_local i64 @midibuf_is_empty(%struct.MidiBuffer*) #1

declare dso_local i32 @midibuf_bytes_used(%struct.MidiBuffer*) #1

declare dso_local i32 @midibuf_message_length(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
