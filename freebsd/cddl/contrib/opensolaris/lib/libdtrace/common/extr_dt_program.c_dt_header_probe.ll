; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_program.c_dt_header_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_program.c_dt_header_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i32, i32, i32* }

@.str = private unnamed_addr constant [15 x i8] c"#define\09%s_%s(\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c") \\\0A\09\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"__dtrace_%s___%s(\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.6 = private unnamed_addr constant [137 x i8] c"#ifndef\09__sparc\0A#define\09%s_%s_ENABLED() \\\0A\09__dtraceenabled_%s___%s()\0A#else\0A#define\09%s_%s_ENABLED() \\\0A\09__dtraceenabled_%s___%s(0)\0A#endif\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"#define\09%s_%s_ENABLED() (0)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i8*)* @dt_header_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_header_probe(i32* %0, %struct.TYPE_6__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %8, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %10, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %13, align 8
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %33, %3
  %27 = load i8*, i8** %13, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 45)
  store i8* %28, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i8*, i8** %13, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %13, align 8
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %14, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %14, align 4
  br label %26

36:                                               ; preds = %26
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = add nsw i64 %40, 1
  %42 = call i8* @alloca(i64 %41)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @dt_header_fmt_macro(i8* %43, i8* %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strlen(i8* %50)
  %52 = add nsw i64 %51, 1
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i8* @alloca(i64 %55)
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @dt_header_fmt_func(i8* %57, i8* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i64 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %67, i8* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %36
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 @dt_set_errno(i32* %72, i32 %73)
  store i32 %74, i32* %4, align 4
  br label %241

75:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %111, %75
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %76
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i64 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* @errno, align 4
  %92 = call i32 @dt_set_errno(i32* %90, i32 %91)
  store i32 %92, i32* %4, align 4
  br label %241

93:                                               ; preds = %82
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %95, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %93
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i64 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* @errno, align 4
  %109 = call i32 @dt_set_errno(i32* %107, i32 %108)
  store i32 %109, i32* %4, align 4
  br label %241

110:                                              ; preds = %100, %93
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %14, align 4
  br label %76

114:                                              ; preds = %76
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %183, label %119

119:                                              ; preds = %114
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i64 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* @errno, align 4
  %128 = call i32 @dt_set_errno(i32* %126, i32 %127)
  store i32 %128, i32* %4, align 4
  br label %241

129:                                              ; preds = %119
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = call i64 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %135, i8* %136)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* @errno, align 4
  %142 = call i32 @dt_set_errno(i32* %140, i32 %141)
  store i32 %142, i32* %4, align 4
  br label %241

143:                                              ; preds = %129
  store i32 0, i32* %14, align 4
  br label %144

144:                                              ; preds = %179, %143
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %182

150:                                              ; preds = %144
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = call i64 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %154)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load i32*, i32** %9, align 8
  %159 = load i32, i32* @errno, align 4
  %160 = call i32 @dt_set_errno(i32* %158, i32 %159)
  store i32 %160, i32* %4, align 4
  br label %241

161:                                              ; preds = %150
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 1
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %163, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %161
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i64 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* @errno, align 4
  %177 = call i32 @dt_set_errno(i32* %175, i32 %176)
  store i32 %177, i32* %4, align 4
  br label %241

178:                                              ; preds = %168, %161
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  br label %144

182:                                              ; preds = %144
  br label %183

183:                                              ; preds = %182, %114
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i64 (i32, i8*, ...) @fprintf(i32 %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load i32*, i32** %9, align 8
  %191 = load i32, i32* @errno, align 4
  %192 = call i32 @dt_set_errno(i32* %190, i32 %191)
  store i32 %192, i32* %4, align 4
  br label %241

193:                                              ; preds = %183
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %225, label %198

198:                                              ; preds = %193
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load i8*, i8** %11, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = load i8*, i8** %12, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load i8*, i8** %11, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = load i8*, i8** %12, align 8
  %218 = call i64 (i32, i8*, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.6, i64 0, i64 0), i8* %204, i8* %205, i8* %208, i8* %209, i8* %212, i8* %213, i8* %216, i8* %217)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %198
  %221 = load i32*, i32** %9, align 8
  %222 = load i32, i32* @errno, align 4
  %223 = call i32 @dt_set_errno(i32* %221, i32 %222)
  store i32 %223, i32* %4, align 4
  br label %241

224:                                              ; preds = %198
  br label %240

225:                                              ; preds = %193
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = load i8*, i8** %11, align 8
  %233 = call i64 (i32, i8*, ...) @fprintf(i32 %228, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %231, i8* %232)
  %234 = icmp slt i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %225
  %236 = load i32*, i32** %9, align 8
  %237 = load i32, i32* @errno, align 4
  %238 = call i32 @dt_set_errno(i32* %236, i32 %237)
  store i32 %238, i32* %4, align 4
  br label %241

239:                                              ; preds = %225
  br label %240

240:                                              ; preds = %239, %224
  store i32 0, i32* %4, align 4
  br label %241

241:                                              ; preds = %240, %235, %220, %189, %174, %157, %139, %125, %106, %89, %71
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dt_header_fmt_macro(i8*, i8*) #1

declare dso_local i32 @dt_header_fmt_func(i8*, i8*) #1

declare dso_local i64 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @dt_set_errno(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
