; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dtrace_printf_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dtrace_printf_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i8*, i32*, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i8*, i32 }

@DT_PFCONV_ALT = common dso_local global i32 0, align 4
@DT_PFCONV_ZPAD = common dso_local global i32 0, align 4
@DT_PFCONV_LEFT = common dso_local global i32 0, align 4
@DT_PFCONV_SPOS = common dso_local global i32 0, align 4
@DT_PFCONV_DYNWIDTH = common dso_local global i32 0, align 4
@DT_PFCONV_DYNPREC = common dso_local global i32 0, align 4
@DT_PFCONV_GROUP = common dso_local global i32 0, align 4
@DT_PFCONV_SPACE = common dso_local global i32 0, align 4
@DT_PFCONV_AGG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dtrace_printf_format(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %10, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strlen(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 3, %31
  %33 = add nsw i32 %28, %32
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i8* @alloca(i64 %36)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  store i8* %38, i8** %13, align 8
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %234, %4
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %240

45:                                               ; preds = %39
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %16, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %18, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %19, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %45
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %77, %59
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %13, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %13, align 8
  store i8 %74, i8* %75, align 1
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %60

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80, %45
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %83 = icmp eq %struct.TYPE_4__* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %234

85:                                               ; preds = %81
  %86 = load i8*, i8** %13, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %13, align 8
  store i8 37, i8* %86, align 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DT_PFCONV_ALT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i8*, i8** %13, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %13, align 8
  store i8 35, i8* %95, align 1
  br label %97

97:                                               ; preds = %94, %85
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @DT_PFCONV_ZPAD, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i8*, i8** %13, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %13, align 8
  store i8 48, i8* %105, align 1
  br label %107

107:                                              ; preds = %104, %97
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @DT_PFCONV_LEFT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %13, align 8
  store i8 45, i8* %115, align 1
  br label %117

117:                                              ; preds = %114, %107
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @DT_PFCONV_SPOS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load i8*, i8** %13, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %13, align 8
  store i8 43, i8* %125, align 1
  br label %127

127:                                              ; preds = %124, %117
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @DT_PFCONV_DYNWIDTH, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load i8*, i8** %13, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %13, align 8
  store i8 42, i8* %135, align 1
  br label %137

137:                                              ; preds = %134, %127
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @DT_PFCONV_DYNPREC, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load i8*, i8** %13, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %13, align 8
  store i8 46, i8* %145, align 1
  %147 = load i8*, i8** %13, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %13, align 8
  store i8 42, i8* %147, align 1
  br label %149

149:                                              ; preds = %144, %137
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @DT_PFCONV_GROUP, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load i8*, i8** %13, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %13, align 8
  store i8 39, i8* %157, align 1
  br label %159

159:                                              ; preds = %156, %149
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @DT_PFCONV_SPACE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load i8*, i8** %13, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %13, align 8
  store i8 32, i8* %167, align 1
  br label %169

169:                                              ; preds = %166, %159
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @DT_PFCONV_AGG, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load i8*, i8** %13, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %13, align 8
  store i8 64, i8* %177, align 1
  br label %179

179:                                              ; preds = %176, %169
  %180 = load i32, i32* %18, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load i8*, i8** %13, align 8
  %184 = load i32, i32* %18, align 4
  %185 = call i32 @snprintf(i8* %183, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %184)
  %186 = load i8*, i8** %13, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8* %188, i8** %13, align 8
  br label %189

189:                                              ; preds = %182, %179
  %190 = load i32, i32* %19, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = load i8*, i8** %13, align 8
  %194 = load i32, i32* %19, align 4
  %195 = call i32 @snprintf(i8* %193, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %194)
  %196 = load i8*, i8** %13, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  store i8* %198, i8** %13, align 8
  br label %199

199:                                              ; preds = %192, %189
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @strcmp(i32 %202, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  store i8* %208, i8** %17, align 8
  br label %213

209:                                              ; preds = %199
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 4
  %212 = load i8*, i8** %211, align 8
  store i8* %212, i8** %17, align 8
  br label %213

213:                                              ; preds = %209, %205
  store i32 0, i32* %15, align 4
  br label %214

214:                                              ; preds = %230, %213
  %215 = load i8*, i8** %17, align 8
  %216 = load i32, i32* %15, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %214
  %223 = load i8*, i8** %17, align 8
  %224 = load i32, i32* %15, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = load i8*, i8** %13, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %13, align 8
  store i8 %227, i8* %228, align 1
  br label %230

230:                                              ; preds = %222
  %231 = load i32, i32* %15, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %15, align 4
  br label %214

233:                                              ; preds = %214
  br label %234

234:                                              ; preds = %233, %84
  %235 = load i32, i32* %14, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %14, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 7
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  store %struct.TYPE_6__* %239, %struct.TYPE_6__** %10, align 8
  br label %39

240:                                              ; preds = %39
  %241 = load i8*, i8** %13, align 8
  store i8 0, i8* %241, align 1
  %242 = load i8*, i8** %13, align 8
  %243 = load i8*, i8** %12, align 8
  %244 = load i64, i64* %11, align 8
  %245 = getelementptr inbounds i8, i8* %243, i64 %244
  %246 = icmp ult i8* %242, %245
  %247 = zext i1 %246 to i32
  %248 = call i32 @assert(i32 %247)
  %249 = load i8*, i8** %7, align 8
  %250 = load i8*, i8** %12, align 8
  %251 = load i64, i64* %8, align 8
  %252 = call i32 @strncpy(i8* %249, i8* %250, i64 %251)
  %253 = load i8*, i8** %13, align 8
  %254 = load i8*, i8** %12, align 8
  %255 = ptrtoint i8* %253 to i64
  %256 = ptrtoint i8* %254 to i64
  %257 = sub i64 %255, %256
  ret i64 %257
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
