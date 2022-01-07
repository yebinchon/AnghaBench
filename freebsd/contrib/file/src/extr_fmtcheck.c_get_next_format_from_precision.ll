; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_fmtcheck.c_get_next_format_from_precision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_fmtcheck.c_get_next_format_from_precision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FMTCHECK_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"diouxX\00", align 1
@FMTCHECK_LONG = common dso_local global i32 0, align 4
@FMTCHECK_QUAD = common dso_local global i32 0, align 4
@FMTCHECK_INT = common dso_local global i32 0, align 4
@FMTCHECK_SHORTPOINTER = common dso_local global i32 0, align 4
@FMTCHECK_LONGPOINTER = common dso_local global i32 0, align 4
@FMTCHECK_QUADPOINTER = common dso_local global i32 0, align 4
@FMTCHECK_INTPOINTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"DOU\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"eEfg\00", align 1
@FMTCHECK_LONGDOUBLE = common dso_local global i32 0, align 4
@FMTCHECK_DOUBLE = common dso_local global i32 0, align 4
@FMTCHECK_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @get_next_format_from_precision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_format_from_precision(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %44 [
    i32 104, label %14
    i32 108, label %17
    i32 113, label %38
    i32 76, label %41
  ]

14:                                               ; preds = %1
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %8, align 8
  store i32 1, i32* %4, align 4
  br label %45

17:                                               ; preds = %1
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load i8**, i8*** %3, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* @FMTCHECK_UNKNOWN, align 4
  %27 = call i32 @RETURN(i8** %24, i8* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %17
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 108
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %8, align 8
  store i32 1, i32* %6, align 4
  br label %37

36:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %33
  br label %45

38:                                               ; preds = %1
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  store i32 1, i32* %6, align 4
  br label %45

41:                                               ; preds = %1
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %8, align 8
  store i32 1, i32* %7, align 4
  br label %45

44:                                               ; preds = %1
  br label %45

45:                                               ; preds = %44, %41, %38, %37, %14
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load i8**, i8*** %3, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @FMTCHECK_UNKNOWN, align 4
  %53 = call i32 @RETURN(i8** %50, i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %45
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i8**, i8*** %3, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* @FMTCHECK_UNKNOWN, align 4
  %66 = call i32 @RETURN(i8** %63, i8* %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %59
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i8**, i8*** %3, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* @FMTCHECK_LONG, align 4
  %74 = call i32 @RETURN(i8** %71, i8* %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %67
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i8**, i8*** %3, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* @FMTCHECK_QUAD, align 4
  %82 = call i32 @RETURN(i8** %79, i8* %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %75
  %84 = load i8**, i8*** %3, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* @FMTCHECK_INT, align 4
  %87 = call i32 @RETURN(i8** %84, i8* %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %54
  %89 = load i8*, i8** %8, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 110
  br i1 %92, label %93, label %130

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i8**, i8*** %3, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* @FMTCHECK_UNKNOWN, align 4
  %100 = call i32 @RETURN(i8** %97, i8* %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %93
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i8**, i8*** %3, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* @FMTCHECK_SHORTPOINTER, align 4
  %108 = call i32 @RETURN(i8** %105, i8* %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %101
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i8**, i8*** %3, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* @FMTCHECK_LONGPOINTER, align 4
  %116 = call i32 @RETURN(i8** %113, i8* %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %109
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i8**, i8*** %3, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load i32, i32* @FMTCHECK_QUADPOINTER, align 4
  %124 = call i32 @RETURN(i8** %121, i8* %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i8**, i8*** %3, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load i32, i32* @FMTCHECK_INTPOINTER, align 4
  %129 = call i32 @RETURN(i8** %126, i8* %127, i32 %128)
  br label %130

130:                                              ; preds = %125, %88
  %131 = load i8*, i8** %8, align 8
  %132 = load i8, i8* %131, align 1
  %133 = call i64 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8 signext %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %130
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %135
  %145 = load i8**, i8*** %3, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* @FMTCHECK_UNKNOWN, align 4
  %148 = call i32 @RETURN(i8** %145, i8* %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %135
  %150 = load i8**, i8*** %3, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load i32, i32* @FMTCHECK_LONG, align 4
  %153 = call i32 @RETURN(i8** %150, i8* %151, i32 %152)
  br label %154

154:                                              ; preds = %149, %130
  %155 = load i8*, i8** %8, align 8
  %156 = load i8, i8* %155, align 1
  %157 = call i64 @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8 signext %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %184

159:                                              ; preds = %154
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i8**, i8*** %3, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = load i32, i32* @FMTCHECK_LONGDOUBLE, align 4
  %166 = call i32 @RETURN(i8** %163, i8* %164, i32 %165)
  br label %167

167:                                              ; preds = %162, %159
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %167
  %175 = load i8**, i8*** %3, align 8
  %176 = load i8*, i8** %8, align 8
  %177 = load i32, i32* @FMTCHECK_UNKNOWN, align 4
  %178 = call i32 @RETURN(i8** %175, i8* %176, i32 %177)
  br label %179

179:                                              ; preds = %174, %167
  %180 = load i8**, i8*** %3, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = load i32, i32* @FMTCHECK_DOUBLE, align 4
  %183 = call i32 @RETURN(i8** %180, i8* %181, i32 %182)
  br label %184

184:                                              ; preds = %179, %154
  %185 = load i8*, i8** %8, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 99
  br i1 %188, label %189, label %208

189:                                              ; preds = %184
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %192, %193
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %189
  %199 = load i8**, i8*** %3, align 8
  %200 = load i8*, i8** %8, align 8
  %201 = load i32, i32* @FMTCHECK_UNKNOWN, align 4
  %202 = call i32 @RETURN(i8** %199, i8* %200, i32 %201)
  br label %203

203:                                              ; preds = %198, %189
  %204 = load i8**, i8*** %3, align 8
  %205 = load i8*, i8** %8, align 8
  %206 = load i32, i32* @FMTCHECK_INT, align 4
  %207 = call i32 @RETURN(i8** %204, i8* %205, i32 %206)
  br label %208

208:                                              ; preds = %203, %184
  %209 = load i8*, i8** %8, align 8
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 115
  br i1 %212, label %213, label %232

213:                                              ; preds = %208
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* %5, align 4
  %216 = add nsw i32 %214, %215
  %217 = load i32, i32* %6, align 4
  %218 = add nsw i32 %216, %217
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %213
  %223 = load i8**, i8*** %3, align 8
  %224 = load i8*, i8** %8, align 8
  %225 = load i32, i32* @FMTCHECK_UNKNOWN, align 4
  %226 = call i32 @RETURN(i8** %223, i8* %224, i32 %225)
  br label %227

227:                                              ; preds = %222, %213
  %228 = load i8**, i8*** %3, align 8
  %229 = load i8*, i8** %8, align 8
  %230 = load i32, i32* @FMTCHECK_STRING, align 4
  %231 = call i32 @RETURN(i8** %228, i8* %229, i32 %230)
  br label %232

232:                                              ; preds = %227, %208
  %233 = load i8*, i8** %8, align 8
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 112
  br i1 %236, label %237, label %256

237:                                              ; preds = %232
  %238 = load i32, i32* %4, align 4
  %239 = load i32, i32* %5, align 4
  %240 = add nsw i32 %238, %239
  %241 = load i32, i32* %6, align 4
  %242 = add nsw i32 %240, %241
  %243 = load i32, i32* %7, align 4
  %244 = add nsw i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %237
  %247 = load i8**, i8*** %3, align 8
  %248 = load i8*, i8** %8, align 8
  %249 = load i32, i32* @FMTCHECK_UNKNOWN, align 4
  %250 = call i32 @RETURN(i8** %247, i8* %248, i32 %249)
  br label %251

251:                                              ; preds = %246, %237
  %252 = load i8**, i8*** %3, align 8
  %253 = load i8*, i8** %8, align 8
  %254 = load i32, i32* @FMTCHECK_LONG, align 4
  %255 = call i32 @RETURN(i8** %252, i8* %253, i32 %254)
  br label %256

256:                                              ; preds = %251, %232
  %257 = load i8**, i8*** %3, align 8
  %258 = load i8*, i8** %8, align 8
  %259 = load i32, i32* @FMTCHECK_UNKNOWN, align 4
  %260 = call i32 @RETURN(i8** %257, i8* %258, i32 %259)
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

declare dso_local i32 @RETURN(i8**, i8*, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
