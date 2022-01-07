; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dt_printf_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dt_printf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i64, %struct.TYPE_16__*, %struct.TYPE_14__*, i64 }
%struct.TYPE_16__ = type { i64, i8*, i32, i32, i32, %struct.TYPE_16__*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@EDT_NOMEM = common dso_local global i32 0, align 4
@DT_PFCONV_ZPAD = common dso_local global i32 0, align 4
@DT_PFCONV_LEFT = common dso_local global i32 0, align 4
@DT_PFCONV_ALT = common dso_local global i32 0, align 4
@DT_PFCONV_DYNPREC = common dso_local global i32 0, align 4
@DT_PFCONV_DYNWIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"format conversion #%u has more than one '*' specified for the output %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@EDT_COMPILER = common dso_local global i32 0, align 4
@DT_PFCONV_SPOS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"format conversion #%u has more than one '.' specified\0A\00", align 1
@CTF_MODEL_LP64 = common dso_local global i32 0, align 4
@DT_PFCONV_AGG = common dso_local global i32 0, align 4
@DT_PFCONV_GROUP = common dso_local global i32 0, align 4
@DT_PFCONV_SPACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"format conversion #%u uses unsupported positional format (%%n$)\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"format conversion #%u cannot be combined with other format flags: %%%%\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"format conversion #%u name expected before end of format string\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"format conversion #%u is undefined: %%%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @dt_printf_create(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [8 x i8], align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  %18 = call i8* @malloc(i32 40)
  %19 = bitcast i8* %18 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %8, align 8
  %20 = icmp eq %struct.TYPE_15__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @strdup(i8* %22)
  store i8* %23, i8** %11, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %2
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %27 = call i32 @free(%struct.TYPE_15__* %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = load i32, i32* @EDT_NOMEM, align 4
  %30 = call %struct.TYPE_15__* @dt_printf_error(%struct.TYPE_14__* %28, i32 %29)
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %3, align 8
  br label %401

31:                                               ; preds = %21
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %36, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 3
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %43, align 8
  %44 = load i8*, i8** %11, align 8
  store i8* %44, i8** %10, align 8
  br label %45

45:                                               ; preds = %350, %31
  %46 = load i8*, i8** %10, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 37)
  store i8* %47, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %352

49:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %50 = call i8* @malloc(i32 48)
  %51 = bitcast i8* %50 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %6, align 8
  %52 = icmp eq %struct.TYPE_16__* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %55 = call i32 @dt_printf_destroy(%struct.TYPE_15__* %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = load i32, i32* @EDT_NOMEM, align 4
  %58 = call %struct.TYPE_15__* @dt_printf_error(%struct.TYPE_14__* %56, i32 %57)
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %3, align 8
  br label %401

59:                                               ; preds = %49
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = icmp ne %struct.TYPE_16__* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 5
  store %struct.TYPE_16__* %65, %struct.TYPE_16__** %67, align 8
  br label %72

68:                                               ; preds = %59
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %71, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = call i32 @bzero(%struct.TYPE_16__* %73, i32 48)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %79, %struct.TYPE_16__** %7, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = icmp ugt i8* %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %72
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %83, %72
  br label %95

95:                                               ; preds = %307, %254, %248, %242, %241, %227, %201, %195, %189, %154, %149, %110, %94
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %9, align 8
  %98 = load i8, i8* %97, align 1
  store i8 %98, i8* %16, align 1
  %99 = sext i8 %98 to i32
  switch i32 %99, label %309 [
    i32 48, label %100
    i32 49, label %100
    i32 50, label %100
    i32 51, label %100
    i32 52, label %100
    i32 53, label %100
    i32 54, label %100
    i32 55, label %100
    i32 56, label %100
    i32 57, label %100
    i32 35, label %154
    i32 42, label %160
    i32 43, label %195
    i32 45, label %201
    i32 46, label %213
    i32 63, label %228
    i32 64, label %242
    i32 39, label %248
    i32 32, label %254
    i32 36, label %260
    i32 37, label %270
    i32 0, label %287
    i32 104, label %297
    i32 108, label %297
    i32 76, label %297
    i32 119, label %297
  ]

100:                                              ; preds = %95, %95, %95, %95, %95, %95, %95, %95, %95, %95
  %101 = load i32, i32* %14, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %100
  %104 = load i32, i32* %13, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %103
  %107 = load i8, i8* %16, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 48
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = load i32, i32* @DT_PFCONV_ZPAD, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* @DT_PFCONV_LEFT, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %95

122:                                              ; preds = %106, %103, %100
  store i32 0, i32* %17, align 4
  br label %123

123:                                              ; preds = %134, %122
  %124 = load i8, i8* %16, align 1
  %125 = call i32 @isdigit(i8 signext %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %123
  %128 = load i32, i32* %17, align 4
  %129 = mul nsw i32 %128, 10
  %130 = load i8, i8* %16, align 1
  %131 = sext i8 %130 to i32
  %132 = add nsw i32 %129, %131
  %133 = sub nsw i32 %132, 48
  store i32 %133, i32* %17, align 4
  br label %134

134:                                              ; preds = %127
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %9, align 8
  %137 = load i8, i8* %136, align 1
  store i8 %137, i8* %16, align 1
  br label %123

138:                                              ; preds = %123
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* %17, align 4
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  br label %149

145:                                              ; preds = %138
  %146 = load i32, i32* %17, align 4
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %145, %141
  %150 = load i8*, i8** %9, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 -1
  store i8* %151, i8** %9, align 8
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %95

154:                                              ; preds = %95
  %155 = load i32, i32* @DT_PFCONV_ALT, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %95

160:                                              ; preds = %95
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load i32, i32* @DT_PFCONV_DYNPREC, align 4
  br label %167

165:                                              ; preds = %160
  %166 = load i32, i32* @DT_PFCONV_DYNWIDTH, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  store i32 %168, i32* %17, align 4
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %17, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %167
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %17, align 4
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %183 = call i32 (i8*, i64, ...) @yywarn(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %178, i8* %182)
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %185 = call i32 @dt_printf_destroy(%struct.TYPE_15__* %184)
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %187 = load i32, i32* @EDT_COMPILER, align 4
  %188 = call %struct.TYPE_15__* @dt_printf_error(%struct.TYPE_14__* %186, i32 %187)
  store %struct.TYPE_15__* %188, %struct.TYPE_15__** %3, align 8
  br label %401

189:                                              ; preds = %167
  %190 = load i32, i32* %17, align 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %95

195:                                              ; preds = %95
  %196 = load i32, i32* @DT_PFCONV_SPOS, align 4
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %95

201:                                              ; preds = %95
  %202 = load i32, i32* @DT_PFCONV_LEFT, align 4
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  %207 = load i32, i32* @DT_PFCONV_ZPAD, align 4
  %208 = xor i32 %207, -1
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %95

213:                                              ; preds = %95
  %214 = load i32, i32* %14, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %14, align 4
  %216 = icmp ne i32 %214, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %213
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = call i32 (i8*, i64, ...) @yywarn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %220)
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %223 = call i32 @dt_printf_destroy(%struct.TYPE_15__* %222)
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %225 = load i32, i32* @EDT_COMPILER, align 4
  %226 = call %struct.TYPE_15__* @dt_printf_error(%struct.TYPE_14__* %224, i32 %225)
  store %struct.TYPE_15__* %226, %struct.TYPE_15__** %3, align 8
  br label %401

227:                                              ; preds = %213
  store i32 0, i32* %13, align 4
  br label %95

228:                                              ; preds = %95
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @CTF_MODEL_LP64, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 4
  store i32 16, i32* %237, align 8
  br label %241

238:                                              ; preds = %228
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 4
  store i32 8, i32* %240, align 8
  br label %241

241:                                              ; preds = %238, %235
  br label %95

242:                                              ; preds = %95
  %243 = load i32, i32* @DT_PFCONV_AGG, align 4
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  br label %95

248:                                              ; preds = %95
  %249 = load i32, i32* @DT_PFCONV_GROUP, align 4
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 8
  br label %95

254:                                              ; preds = %95
  %255 = load i32, i32* @DT_PFCONV_SPACE, align 4
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 8
  br label %95

260:                                              ; preds = %95
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = call i32 (i8*, i64, ...) @yywarn(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i64 %263)
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %266 = call i32 @dt_printf_destroy(%struct.TYPE_15__* %265)
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %268 = load i32, i32* @EDT_COMPILER, align 4
  %269 = call %struct.TYPE_15__* @dt_printf_error(%struct.TYPE_14__* %267, i32 %268)
  store %struct.TYPE_15__* %269, %struct.TYPE_15__** %3, align 8
  br label %401

270:                                              ; preds = %95
  %271 = load i8*, i8** %9, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 -1
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %274, 37
  br i1 %275, label %276, label %277

276:                                              ; preds = %270
  br label %308

277:                                              ; preds = %270
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = call i32 (i8*, i64, ...) @yywarn(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), i64 %280)
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %283 = call i32 @dt_printf_destroy(%struct.TYPE_15__* %282)
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %285 = load i32, i32* @EDT_COMPILER, align 4
  %286 = call %struct.TYPE_15__* @dt_printf_error(%struct.TYPE_14__* %284, i32 %285)
  store %struct.TYPE_15__* %286, %struct.TYPE_15__** %3, align 8
  br label %401

287:                                              ; preds = %95
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = call i32 (i8*, i64, ...) @yywarn(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i64 %290)
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %293 = call i32 @dt_printf_destroy(%struct.TYPE_15__* %292)
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %295 = load i32, i32* @EDT_COMPILER, align 4
  %296 = call %struct.TYPE_15__* @dt_printf_error(%struct.TYPE_14__* %294, i32 %295)
  store %struct.TYPE_15__* %296, %struct.TYPE_15__** %3, align 8
  br label %401

297:                                              ; preds = %95, %95, %95, %95
  %298 = load i32, i32* %12, align 4
  %299 = sext i32 %298 to i64
  %300 = icmp ult i64 %299, 6
  br i1 %300, label %301, label %307

301:                                              ; preds = %297
  %302 = load i8, i8* %16, align 1
  %303 = load i32, i32* %12, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %12, align 4
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 %305
  store i8 %302, i8* %306, align 1
  br label %307

307:                                              ; preds = %301, %297
  br label %95

308:                                              ; preds = %276
  br label %309

309:                                              ; preds = %95, %308
  %310 = load i8, i8* %16, align 1
  %311 = load i32, i32* %12, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %12, align 4
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 %313
  store i8 %310, i8* %314, align 1
  %315 = load i32, i32* %12, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 %316
  store i8 0, i8* %317, align 1
  br label %318

318:                                              ; preds = %309
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %320 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %321 = call i32* @dt_pfdict_lookup(%struct.TYPE_14__* %319, i8* %320)
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 6
  store i32* %321, i32** %323, align 8
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 6
  %326 = load i32*, i32** %325, align 8
  %327 = icmp eq i32* %326, null
  br i1 %327, label %328, label %339

328:                                              ; preds = %318
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %333 = call i32 (i8*, i64, ...) @yywarn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %331, i8* %332)
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %335 = call i32 @dt_printf_destroy(%struct.TYPE_15__* %334)
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %337 = load i32, i32* @EDT_COMPILER, align 4
  %338 = call %struct.TYPE_15__* @dt_printf_error(%struct.TYPE_14__* %336, i32 %337)
  store %struct.TYPE_15__* %338, %struct.TYPE_15__** %3, align 8
  br label %401

339:                                              ; preds = %318
  br label %340

340:                                              ; preds = %339
  %341 = load i8*, i8** %9, align 8
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %340
  %346 = load i8*, i8** %9, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 1
  br label %350

348:                                              ; preds = %340
  %349 = load i8*, i8** %9, align 8
  br label %350

350:                                              ; preds = %348, %345
  %351 = phi i8* [ %347, %345 ], [ %349, %348 ]
  store i8* %351, i8** %10, align 8
  br label %45

352:                                              ; preds = %45
  %353 = load i8*, i8** %10, align 8
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %362, label %357

357:                                              ; preds = %352
  %358 = load i8*, i8** %11, align 8
  %359 = load i8, i8* %358, align 1
  %360 = sext i8 %359 to i32
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %399

362:                                              ; preds = %357, %352
  %363 = call i8* @malloc(i32 48)
  %364 = bitcast i8* %363 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %364, %struct.TYPE_16__** %6, align 8
  %365 = icmp eq %struct.TYPE_16__* %364, null
  br i1 %365, label %366, label %372

366:                                              ; preds = %362
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %368 = call i32 @dt_printf_destroy(%struct.TYPE_15__* %367)
  %369 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %370 = load i32, i32* @EDT_NOMEM, align 4
  %371 = call %struct.TYPE_15__* @dt_printf_error(%struct.TYPE_14__* %369, i32 %370)
  store %struct.TYPE_15__* %371, %struct.TYPE_15__** %3, align 8
  br label %401

372:                                              ; preds = %362
  %373 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %373, i32 0, i32 2
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %374, align 8
  %376 = icmp ne %struct.TYPE_16__* %375, null
  br i1 %376, label %377, label %381

377:                                              ; preds = %372
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %379 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i32 0, i32 5
  store %struct.TYPE_16__* %378, %struct.TYPE_16__** %380, align 8
  br label %385

381:                                              ; preds = %372
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %383 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i32 0, i32 2
  store %struct.TYPE_16__* %382, %struct.TYPE_16__** %384, align 8
  br label %385

385:                                              ; preds = %381, %377
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %387 = call i32 @bzero(%struct.TYPE_16__* %386, i32 48)
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = add nsw i64 %390, 1
  store i64 %391, i64* %389, align 8
  %392 = load i8*, i8** %10, align 8
  %393 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %393, i32 0, i32 1
  store i8* %392, i8** %394, align 8
  %395 = load i8*, i8** %10, align 8
  %396 = call i64 @strlen(i8* %395)
  %397 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %397, i32 0, i32 0
  store i64 %396, i64* %398, align 8
  br label %399

399:                                              ; preds = %385, %357
  %400 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %400, %struct.TYPE_15__** %3, align 8
  br label %401

401:                                              ; preds = %399, %366, %328, %287, %277, %260, %217, %175, %53, %25
  %402 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %402
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @dt_printf_error(%struct.TYPE_14__*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @dt_printf_destroy(%struct.TYPE_15__*) #1

declare dso_local i32 @bzero(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @yywarn(i8*, i64, ...) #1

declare dso_local i32* @dt_pfdict_lookup(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
