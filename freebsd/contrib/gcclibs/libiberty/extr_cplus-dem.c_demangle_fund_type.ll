; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_demangle_fund_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_demangle_fund_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32 }
%struct.TYPE_14__ = type { i32 }

@INTBUF_SIZE = common dso_local global i32 0, align 4
@tk_integral = common dso_local global i64 0, align 8
@PRINT_ANSI_QUALIFIERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"__complex\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@tk_bool = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@tk_char = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@tk_real = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"int%u_t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_stuff*, i8**, %struct.TYPE_14__*)* @demangle_fund_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demangle_fund_type(%struct.work_stuff* %0, i8** %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.work_stuff*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__, align 4
  %16 = alloca %struct.TYPE_14__, align 4
  store %struct.work_stuff* %0, %struct.work_stuff** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %17 = load i32, i32* @INTBUF_SIZE, align 4
  %18 = add nsw i32 %17, 5
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load i64, i64* @tk_integral, align 8
  store i64 %22, i64* %12, align 8
  br label %23

23:                                               ; preds = %78, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %79

27:                                               ; preds = %23
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %77 [
    i32 67, label %32
    i32 86, label %32
    i32 117, label %32
    i32 85, label %53
    i32 83, label %61
    i32 74, label %69
  ]

32:                                               ; preds = %27, %27, %27
  %33 = load i32, i32* @PRINT_ANSI_QUALIFIERS, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = call i32 @STRING_EMPTY(%struct.TYPE_14__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = call i32 @string_prepend(%struct.TYPE_14__* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %35
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i8* @demangle_qualifier(i8 signext %46)
  %48 = call i32 @string_prepend(%struct.TYPE_14__* %43, i8* %47)
  br label %49

49:                                               ; preds = %42, %32
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %50, align 8
  br label %78

53:                                               ; preds = %27
  %54 = load i8**, i8*** %5, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %54, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = call i32 @string_append(%struct.TYPE_14__* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %78

61:                                               ; preds = %27
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %62, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = call i32 @string_append(%struct.TYPE_14__* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %78

69:                                               ; preds = %27
  %70 = load i8**, i8*** %5, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %70, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %74 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = call i32 @string_append(%struct.TYPE_14__* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %78

77:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  br label %78

78:                                               ; preds = %77, %69, %61, %53, %49
  br label %23

79:                                               ; preds = %23
  %80 = load i8**, i8*** %5, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  switch i32 %83, label %300 [
    i32 0, label %84
    i32 95, label %84
    i32 118, label %85
    i32 120, label %93
    i32 108, label %101
    i32 105, label %109
    i32 115, label %117
    i32 98, label %125
    i32 99, label %134
    i32 119, label %143
    i32 114, label %152
    i32 100, label %161
    i32 102, label %170
    i32 71, label %179
    i32 73, label %190
    i32 48, label %270
    i32 49, label %270
    i32 50, label %270
    i32 51, label %270
    i32 52, label %270
    i32 53, label %270
    i32 54, label %270
    i32 55, label %270
    i32 56, label %270
    i32 57, label %270
    i32 116, label %292
  ]

84:                                               ; preds = %79, %79
  br label %301

85:                                               ; preds = %79
  %86 = load i8**, i8*** %5, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %86, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %89)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = call i32 @string_append(%struct.TYPE_14__* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %301

93:                                               ; preds = %79
  %94 = load i8**, i8*** %5, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %94, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %98 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %97)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = call i32 @string_append(%struct.TYPE_14__* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %301

101:                                              ; preds = %79
  %102 = load i8**, i8*** %5, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %102, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %106 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %105)
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = call i32 @string_append(%struct.TYPE_14__* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %301

109:                                              ; preds = %79
  %110 = load i8**, i8*** %5, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %110, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %114 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %113)
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = call i32 @string_append(%struct.TYPE_14__* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %301

117:                                              ; preds = %79
  %118 = load i8**, i8*** %5, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %118, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %122 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %121)
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = call i32 @string_append(%struct.TYPE_14__* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %301

125:                                              ; preds = %79
  %126 = load i8**, i8*** %5, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %126, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %130 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %132 = call i32 @string_append(%struct.TYPE_14__* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %133 = load i64, i64* @tk_bool, align 8
  store i64 %133, i64* %12, align 8
  br label %301

134:                                              ; preds = %79
  %135 = load i8**, i8*** %5, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %135, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %139 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %138)
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %141 = call i32 @string_append(%struct.TYPE_14__* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %142 = load i64, i64* @tk_char, align 8
  store i64 %142, i64* %12, align 8
  br label %301

143:                                              ; preds = %79
  %144 = load i8**, i8*** %5, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %144, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %148 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %147)
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %150 = call i32 @string_append(%struct.TYPE_14__* %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %151 = load i64, i64* @tk_char, align 8
  store i64 %151, i64* %12, align 8
  br label %301

152:                                              ; preds = %79
  %153 = load i8**, i8*** %5, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %153, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %157 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %156)
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %159 = call i32 @string_append(%struct.TYPE_14__* %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %160 = load i64, i64* @tk_real, align 8
  store i64 %160, i64* %12, align 8
  br label %301

161:                                              ; preds = %79
  %162 = load i8**, i8*** %5, align 8
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %162, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %166 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %165)
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %168 = call i32 @string_append(%struct.TYPE_14__* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %169 = load i64, i64* @tk_real, align 8
  store i64 %169, i64* %12, align 8
  br label %301

170:                                              ; preds = %79
  %171 = load i8**, i8*** %5, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %171, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %175 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %174)
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %177 = call i32 @string_append(%struct.TYPE_14__* %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %178 = load i64, i64* @tk_real, align 8
  store i64 %178, i64* %12, align 8
  br label %301

179:                                              ; preds = %79
  %180 = load i8**, i8*** %5, align 8
  %181 = load i8*, i8** %180, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %180, align 8
  %183 = load i8**, i8*** %5, align 8
  %184 = load i8*, i8** %183, align 8
  %185 = load i8, i8* %184, align 1
  %186 = call i32 @ISDIGIT(i8 zeroext %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %179
  store i32 0, i32* %8, align 4
  br label %301

189:                                              ; preds = %179
  br label %190

190:                                              ; preds = %79, %189
  %191 = load i8**, i8*** %5, align 8
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %191, align 8
  %194 = load i8**, i8*** %5, align 8
  %195 = load i8*, i8** %194, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 95
  br i1 %198, label %199, label %249

199:                                              ; preds = %190
  %200 = load i8**, i8*** %5, align 8
  %201 = load i8*, i8** %200, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %200, align 8
  store i32 0, i32* %13, align 4
  br label %203

203:                                              ; preds = %229, %199
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = sub nsw i64 %19, 1
  %207 = icmp slt i64 %205, %206
  br i1 %207, label %208, label %220

208:                                              ; preds = %203
  %209 = load i8**, i8*** %5, align 8
  %210 = load i8*, i8** %209, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %208
  %215 = load i8**, i8*** %5, align 8
  %216 = load i8*, i8** %215, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp ne i32 %218, 95
  br label %220

220:                                              ; preds = %214, %208, %203
  %221 = phi i1 [ false, %208 ], [ false, %203 ], [ %219, %214 ]
  br i1 %221, label %222, label %235

222:                                              ; preds = %220
  %223 = load i8**, i8*** %5, align 8
  %224 = load i8*, i8** %223, align 8
  %225 = load i8, i8* %224, align 1
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %21, i64 %227
  store i8 %225, i8* %228, align 1
  br label %229

229:                                              ; preds = %222
  %230 = load i8**, i8*** %5, align 8
  %231 = load i8*, i8** %230, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %230, align 8
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %13, align 4
  br label %203

235:                                              ; preds = %220
  %236 = load i8**, i8*** %5, align 8
  %237 = load i8*, i8** %236, align 8
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp ne i32 %239, 95
  br i1 %240, label %241, label %242

241:                                              ; preds = %235
  store i32 0, i32* %8, align 4
  br label %301

242:                                              ; preds = %235
  %243 = load i32, i32* %13, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %21, i64 %244
  store i8 0, i8* %245, align 1
  %246 = load i8**, i8*** %5, align 8
  %247 = load i8*, i8** %246, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %246, align 8
  br label %262

249:                                              ; preds = %190
  %250 = load i8**, i8*** %5, align 8
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @strncpy(i8* %21, i8* %251, i32 2)
  %253 = getelementptr inbounds i8, i8* %21, i64 2
  store i8 0, i8* %253, align 2
  %254 = load i8**, i8*** %5, align 8
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @strlen(i8* %255)
  %257 = call i32 @min(i32 %256, i32 2)
  %258 = load i8**, i8*** %5, align 8
  %259 = load i8*, i8** %258, align 8
  %260 = sext i32 %257 to i64
  %261 = getelementptr inbounds i8, i8* %259, i64 %260
  store i8* %261, i8** %258, align 8
  br label %262

262:                                              ; preds = %249, %242
  %263 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %11)
  %264 = load i32, i32* %11, align 4
  %265 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %264)
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %267 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %266)
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %269 = call i32 @string_append(%struct.TYPE_14__* %268, i8* %21)
  br label %301

270:                                              ; preds = %79, %79, %79, %79, %79, %79, %79, %79, %79, %79
  %271 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %272 = call i32 @register_Btype(%struct.work_stuff* %271)
  store i32 %272, i32* %14, align 4
  %273 = call i32 @string_init(%struct.TYPE_14__* %15)
  %274 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %275 = load i8**, i8*** %5, align 8
  %276 = call i32 @demangle_class_name(%struct.work_stuff* %274, i8** %275, %struct.TYPE_14__* %15)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %289

278:                                              ; preds = %270
  %279 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @LEN_STRING(%struct.TYPE_14__* %15)
  %283 = load i32, i32* %14, align 4
  %284 = call i32 @remember_Btype(%struct.work_stuff* %279, i32 %281, i32 %282, i32 %283)
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %286 = call i32 @APPEND_BLANK(%struct.TYPE_14__* %285)
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %288 = call i32 @string_appends(%struct.TYPE_14__* %287, %struct.TYPE_14__* %15)
  br label %290

289:                                              ; preds = %270
  store i32 0, i32* %8, align 4
  br label %290

290:                                              ; preds = %289, %278
  %291 = call i32 @string_delete(%struct.TYPE_14__* %15)
  br label %301

292:                                              ; preds = %79
  %293 = call i32 @string_init(%struct.TYPE_14__* %16)
  %294 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %295 = load i8**, i8*** %5, align 8
  %296 = call i32 @demangle_template(%struct.work_stuff* %294, i8** %295, %struct.TYPE_14__* %16, i32 0, i32 1, i32 1)
  store i32 %296, i32* %8, align 4
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %298 = call i32 @string_appends(%struct.TYPE_14__* %297, %struct.TYPE_14__* %16)
  %299 = call i32 @string_delete(%struct.TYPE_14__* %16)
  br label %301

300:                                              ; preds = %79
  store i32 0, i32* %8, align 4
  br label %301

301:                                              ; preds = %300, %292, %290, %262, %241, %188, %170, %161, %152, %143, %134, %125, %117, %109, %101, %93, %85, %84
  %302 = load i32, i32* %8, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load i64, i64* %12, align 8
  %306 = trunc i64 %305 to i32
  br label %308

307:                                              ; preds = %301
  br label %308

308:                                              ; preds = %307, %304
  %309 = phi i32 [ %306, %304 ], [ 0, %307 ]
  %310 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %310)
  ret i32 %309
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @STRING_EMPTY(%struct.TYPE_14__*) #2

declare dso_local i32 @string_prepend(%struct.TYPE_14__*, i8*) #2

declare dso_local i8* @demangle_qualifier(i8 signext) #2

declare dso_local i32 @APPEND_BLANK(%struct.TYPE_14__*) #2

declare dso_local i32 @string_append(%struct.TYPE_14__*, i8*) #2

declare dso_local i32 @ISDIGIT(i8 zeroext) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @register_Btype(%struct.work_stuff*) #2

declare dso_local i32 @string_init(%struct.TYPE_14__*) #2

declare dso_local i32 @demangle_class_name(%struct.work_stuff*, i8**, %struct.TYPE_14__*) #2

declare dso_local i32 @remember_Btype(%struct.work_stuff*, i32, i32, i32) #2

declare dso_local i32 @LEN_STRING(%struct.TYPE_14__*) #2

declare dso_local i32 @string_appends(%struct.TYPE_14__*, %struct.TYPE_14__*) #2

declare dso_local i32 @string_delete(%struct.TYPE_14__*) #2

declare dso_local i32 @demangle_template(%struct.work_stuff*, i8**, %struct.TYPE_14__*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
