; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_lexsup.c_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_lexsup.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8, i64, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i8* }

@.str = private unnamed_addr constant [29 x i8] c"Usage: %s [options] file...\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@OPTION_COUNT = common dso_local global i32 0, align 4
@ld_options = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@FALSE = common dso_local global i64 0, align 8
@NO_HELP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%s-%c\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optional_argument = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TRUE = common dso_local global i64 0, align 8
@TWO_DASHES = common dso_local global i64 0, align 8
@EXACTLY_TWO_DASHES = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"%s-%s%s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"  @FILE\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Read options from FILE\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"%s: supported targets:\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"%s: supported emulations: \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [33 x i8] c"%s: emulation specific options:\0A\00", align 1
@REPORT_BUGS_TO = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [19 x i8] c"Report bugs to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = load i8*, i8** @program_name, align 8
  %10 = call i32 (i8*, ...) @printf(i8* %8, i8* %9)
  %11 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* %11)
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %274, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @OPTION_COUNT, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %277

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %19 = load i32, i32* %1, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %273

25:                                               ; preds = %17
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %5, align 8
  store i32 2, i32* %4, align 4
  %28 = load i32, i32* %1, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %124, %25
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 8
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %109

38:                                               ; preds = %29
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NO_HELP, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %109

47:                                               ; preds = %38
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i8, i8* %56, align 8
  %58 = sext i8 %57 to i32
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %51, i32 %58)
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 2, i32 0
  %64 = add nsw i32 %63, 2
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %107

74:                                               ; preds = %47
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @optional_argument, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %74
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %74
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %90 = load i32, i32* %6, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @_(i8* %94)
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %95)
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %98 = load i32, i32* %6, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @_(i8* %102)
  %104 = call i32 @strlen(i8* %103)
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %88, %47
  %108 = load i64, i64* @TRUE, align 8
  store i64 %108, i64* %5, align 8
  br label %109

109:                                              ; preds = %107, %38, %29
  %110 = load i32, i32* %6, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @OPTION_COUNT, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %118 = load i32, i32* %6, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = icmp eq i8* %122, null
  br label %124

124:                                              ; preds = %116, %112
  %125 = phi i1 [ false, %112 ], [ %123, %116 ]
  br i1 %125, label %29, label %126

126:                                              ; preds = %124
  %127 = load i32, i32* %1, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %248, %126
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %130 = load i32, i32* %6, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %233

137:                                              ; preds = %128
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %139 = load i32, i32* %6, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @NO_HELP, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %233

146:                                              ; preds = %137
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %148 = load i32, i32* %6, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @TWO_DASHES, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %164, label %155

155:                                              ; preds = %146
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %157 = load i32, i32* %6, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @EXACTLY_TWO_DASHES, align 8
  %163 = icmp eq i64 %161, %162
  br label %164

164:                                              ; preds = %155, %146
  %165 = phi i1 [ true, %146 ], [ %163, %155 ]
  %166 = zext i1 %165 to i32
  store i32 %166, i32* %7, align 4
  %167 = load i64, i64* %5, align 8
  %168 = icmp ne i64 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %176 = load i32, i32* %6, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %170, i8* %174, i8* %181)
  %183 = load i64, i64* %5, align 8
  %184 = icmp ne i64 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 2, i32 0
  %187 = add nsw i32 %186, 1
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i32 1, i32 0
  %192 = add nsw i32 %187, %191
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %194 = load i32, i32* %6, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @strlen(i8* %199)
  %201 = add nsw i32 %192, %200
  %202 = load i32, i32* %4, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %4, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %205 = load i32, i32* %6, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 3
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %231

211:                                              ; preds = %164
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %213 = load i32, i32* %6, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 3
  %217 = load i8*, i8** %216, align 8
  %218 = call i8* @_(i8* %217)
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %218)
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %221 = load i32, i32* %6, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 3
  %225 = load i8*, i8** %224, align 8
  %226 = call i8* @_(i8* %225)
  %227 = call i32 @strlen(i8* %226)
  %228 = add nsw i32 1, %227
  %229 = load i32, i32* %4, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %4, align 4
  br label %231

231:                                              ; preds = %211, %164
  %232 = load i64, i64* @TRUE, align 8
  store i64 %232, i64* %5, align 8
  br label %233

233:                                              ; preds = %231, %137, %128
  %234 = load i32, i32* %6, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %6, align 4
  br label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @OPTION_COUNT, align 4
  %239 = icmp ult i32 %237, %238
  br i1 %239, label %240, label %248

240:                                              ; preds = %236
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %242 = load i32, i32* %6, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = icmp eq i8* %246, null
  br label %248

248:                                              ; preds = %240, %236
  %249 = phi i1 [ false, %236 ], [ %247, %240 ]
  br i1 %249, label %128, label %250

250:                                              ; preds = %248
  %251 = load i32, i32* %4, align 4
  %252 = icmp sge i32 %251, 30
  br i1 %252, label %253, label %255

253:                                              ; preds = %250
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %255

255:                                              ; preds = %253, %250
  br label %256

256:                                              ; preds = %261, %255
  %257 = load i32, i32* %4, align 4
  %258 = icmp slt i32 %257, 30
  br i1 %258, label %259, label %264

259:                                              ; preds = %256
  %260 = call i32 @putchar(i8 signext 32)
  br label %261

261:                                              ; preds = %259
  %262 = load i32, i32* %4, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %4, align 4
  br label %256

264:                                              ; preds = %256
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ld_options, align 8
  %266 = load i32, i32* %1, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = call i8* @_(i8* %270)
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %271)
  br label %273

273:                                              ; preds = %264, %17
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %1, align 4
  %276 = add i32 %275, 1
  store i32 %276, i32* %1, align 4
  br label %13

277:                                              ; preds = %13
  %278 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %279 = call i32 (i8*, ...) @printf(i8* %278)
  %280 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  store i32 %280, i32* %4, align 4
  br label %281

281:                                              ; preds = %286, %277
  %282 = load i32, i32* %4, align 4
  %283 = icmp slt i32 %282, 30
  br i1 %283, label %284, label %289

284:                                              ; preds = %281
  %285 = call i32 @putchar(i8 signext 32)
  br label %286

286:                                              ; preds = %284
  %287 = load i32, i32* %4, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %4, align 4
  br label %281

289:                                              ; preds = %281
  %290 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %291 = call i32 (i8*, ...) @printf(i8* %290)
  %292 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %293 = load i8*, i8** @program_name, align 8
  %294 = call i32 (i8*, ...) @printf(i8* %292, i8* %293)
  %295 = call i8** (...) @bfd_target_list()
  store i8** %295, i8*** %2, align 8
  %296 = load i8**, i8*** %2, align 8
  store i8** %296, i8*** %3, align 8
  br label %297

297:                                              ; preds = %305, %289
  %298 = load i8**, i8*** %3, align 8
  %299 = load i8*, i8** %298, align 8
  %300 = icmp ne i8* %299, null
  br i1 %300, label %301, label %308

301:                                              ; preds = %297
  %302 = load i8**, i8*** %3, align 8
  %303 = load i8*, i8** %302, align 8
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %303)
  br label %305

305:                                              ; preds = %301
  %306 = load i8**, i8*** %3, align 8
  %307 = getelementptr inbounds i8*, i8** %306, i32 1
  store i8** %307, i8*** %3, align 8
  br label %297

308:                                              ; preds = %297
  %309 = load i8**, i8*** %2, align 8
  %310 = call i32 @free(i8** %309)
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %312 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  %313 = load i8*, i8** @program_name, align 8
  %314 = call i32 (i8*, ...) @printf(i8* %312, i8* %313)
  %315 = load i32, i32* @stdout, align 4
  %316 = call i32 @ldemul_list_emulations(i32 %315)
  %317 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %318 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  %319 = load i8*, i8** @program_name, align 8
  %320 = call i32 (i8*, ...) @printf(i8* %318, i8* %319)
  %321 = load i32, i32* @stdout, align 4
  %322 = call i32 @ldemul_list_emulation_options(i32 %321)
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %324 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 0
  %326 = load i8, i8* %325, align 1
  %327 = icmp ne i8 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %308
  %329 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  %330 = load i8*, i8** @REPORT_BUGS_TO, align 8
  %331 = call i32 (i8*, ...) @printf(i8* %329, i8* %330)
  br label %332

332:                                              ; preds = %328, %308
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i8** @bfd_target_list(...) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @ldemul_list_emulations(i32) #1

declare dso_local i32 @ldemul_list_emulation_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
