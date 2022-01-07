; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_scan_operands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_scan_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i8*, i32, i32, i8*, i8*, i32 }

@max_opno = common dso_local global i32 0, align 4
@MAX_MAX_OPERANDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"maximum number of operands exceeded\00", align 1
@have_error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"repeated operand number %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"scratch_operand\00", align 1
@num_dups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data*, i64, i32, i32)* @scan_operands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_operands(%struct.data* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.data* %0, %struct.data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %393

16:                                               ; preds = %4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @GET_CODE(i64 %17)
  switch i32 %18, label %345 [
    i32 134, label %19
    i32 129, label %128
    i32 133, label %233
    i32 131, label %233
    i32 135, label %334
    i32 132, label %334
    i32 130, label %334
    i32 136, label %337
    i32 128, label %341
  ]

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @XINT(i64 %20, i32 0)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @max_opno, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* @max_opno, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i32, i32* @max_opno, align 4
  %29 = load i32, i32* @MAX_MAX_OPERANDS, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.data*, %struct.data** %5, align 8
  %33 = getelementptr inbounds %struct.data, %struct.data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @message_with_line(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @have_error, align 4
  br label %393

36:                                               ; preds = %27
  %37 = load %struct.data*, %struct.data** %5, align 8
  %38 = getelementptr inbounds %struct.data, %struct.data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load %struct.data*, %struct.data** %5, align 8
  %48 = getelementptr inbounds %struct.data, %struct.data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 (i32, i8*, ...) @message_with_line(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 1, i32* @have_error, align 4
  br label %52

52:                                               ; preds = %46, %36
  %53 = load %struct.data*, %struct.data** %5, align 8
  %54 = getelementptr inbounds %struct.data, %struct.data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i8* @GET_MODE(i64 %60)
  %62 = load %struct.data*, %struct.data** %5, align 8
  %63 = getelementptr inbounds %struct.data, %struct.data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 6
  store i8* %61, i8** %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.data*, %struct.data** %5, align 8
  %71 = getelementptr inbounds %struct.data, %struct.data* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %69, i32* %76, align 4
  %77 = load i64, i64* %6, align 8
  %78 = call i8* @XSTR(i64 %77, i32 1)
  %79 = load %struct.data*, %struct.data** %5, align 8
  %80 = getelementptr inbounds %struct.data, %struct.data* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i8* %78, i8** %85, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i8* @XSTR(i64 %86, i32 2)
  %88 = call i8* @strip_whitespace(i8* %87)
  %89 = load %struct.data*, %struct.data** %5, align 8
  %90 = getelementptr inbounds %struct.data, %struct.data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 5
  store i8* %88, i8** %95, align 8
  %96 = load %struct.data*, %struct.data** %5, align 8
  %97 = getelementptr inbounds %struct.data, %struct.data* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 5
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @n_occurrences(i8 signext 44, i8* %103)
  %105 = add nsw i32 %104, 1
  %106 = load %struct.data*, %struct.data** %5, align 8
  %107 = getelementptr inbounds %struct.data, %struct.data* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 7
  store i32 %105, i32* %112, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.data*, %struct.data** %5, align 8
  %115 = getelementptr inbounds %struct.data, %struct.data* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  store i32 %113, i32* %120, align 8
  %121 = load %struct.data*, %struct.data** %5, align 8
  %122 = getelementptr inbounds %struct.data, %struct.data* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 4
  store i32 1, i32* %127, align 4
  br label %393

128:                                              ; preds = %16
  %129 = load i64, i64* %6, align 8
  %130 = call i32 @XINT(i64 %129, i32 0)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @max_opno, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* @max_opno, align 4
  br label %136

136:                                              ; preds = %134, %128
  %137 = load i32, i32* @max_opno, align 4
  %138 = load i32, i32* @MAX_MAX_OPERANDS, align 4
  %139 = icmp sge i32 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load %struct.data*, %struct.data** %5, align 8
  %142 = getelementptr inbounds %struct.data, %struct.data* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, ...) @message_with_line(i32 %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @have_error, align 4
  br label %393

145:                                              ; preds = %136
  %146 = load %struct.data*, %struct.data** %5, align 8
  %147 = getelementptr inbounds %struct.data, %struct.data* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %145
  %156 = load %struct.data*, %struct.data** %5, align 8
  %157 = getelementptr inbounds %struct.data, %struct.data* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = call i32 (i32, i8*, ...) @message_with_line(i32 %158, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  store i32 1, i32* @have_error, align 4
  br label %161

161:                                              ; preds = %155, %145
  %162 = load %struct.data*, %struct.data** %5, align 8
  %163 = getelementptr inbounds %struct.data, %struct.data* %162, i32 0, i32 0
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  %169 = load i64, i64* %6, align 8
  %170 = call i8* @GET_MODE(i64 %169)
  %171 = load %struct.data*, %struct.data** %5, align 8
  %172 = getelementptr inbounds %struct.data, %struct.data* %171, i32 0, i32 0
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 6
  store i8* %170, i8** %177, align 8
  %178 = load %struct.data*, %struct.data** %5, align 8
  %179 = getelementptr inbounds %struct.data, %struct.data* %178, i32 0, i32 0
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  store i32 0, i32* %184, align 4
  %185 = load %struct.data*, %struct.data** %5, align 8
  %186 = getelementptr inbounds %struct.data, %struct.data* %185, i32 0, i32 0
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %191, align 8
  %192 = load i64, i64* %6, align 8
  %193 = call i8* @XSTR(i64 %192, i32 1)
  %194 = call i8* @strip_whitespace(i8* %193)
  %195 = load %struct.data*, %struct.data** %5, align 8
  %196 = getelementptr inbounds %struct.data, %struct.data* %195, i32 0, i32 0
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 5
  store i8* %194, i8** %201, align 8
  %202 = load %struct.data*, %struct.data** %5, align 8
  %203 = getelementptr inbounds %struct.data, %struct.data* %202, i32 0, i32 0
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 5
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @n_occurrences(i8 signext 44, i8* %209)
  %211 = add nsw i32 %210, 1
  %212 = load %struct.data*, %struct.data** %5, align 8
  %213 = getelementptr inbounds %struct.data, %struct.data* %212, i32 0, i32 0
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 7
  store i32 %211, i32* %218, align 8
  %219 = load %struct.data*, %struct.data** %5, align 8
  %220 = getelementptr inbounds %struct.data, %struct.data* %219, i32 0, i32 0
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 3
  store i32 0, i32* %225, align 8
  %226 = load %struct.data*, %struct.data** %5, align 8
  %227 = getelementptr inbounds %struct.data, %struct.data* %226, i32 0, i32 0
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 4
  store i32 0, i32* %232, align 4
  br label %393

233:                                              ; preds = %16, %16
  %234 = load i64, i64* %6, align 8
  %235 = call i32 @XINT(i64 %234, i32 0)
  store i32 %235, i32* %12, align 4
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* @max_opno, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %233
  %240 = load i32, i32* %12, align 4
  store i32 %240, i32* @max_opno, align 4
  br label %241

241:                                              ; preds = %239, %233
  %242 = load i32, i32* @max_opno, align 4
  %243 = load i32, i32* @MAX_MAX_OPERANDS, align 4
  %244 = icmp sge i32 %242, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %241
  %246 = load %struct.data*, %struct.data** %5, align 8
  %247 = getelementptr inbounds %struct.data, %struct.data* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = call i32 (i32, i8*, ...) @message_with_line(i32 %248, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @have_error, align 4
  br label %393

250:                                              ; preds = %241
  %251 = load %struct.data*, %struct.data** %5, align 8
  %252 = getelementptr inbounds %struct.data, %struct.data* %251, i32 0, i32 0
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** %252, align 8
  %254 = load i32, i32* %12, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %250
  %261 = load %struct.data*, %struct.data** %5, align 8
  %262 = getelementptr inbounds %struct.data, %struct.data* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %12, align 4
  %265 = call i32 (i32, i8*, ...) @message_with_line(i32 %263, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %264)
  store i32 1, i32* @have_error, align 4
  br label %266

266:                                              ; preds = %260, %250
  %267 = load %struct.data*, %struct.data** %5, align 8
  %268 = getelementptr inbounds %struct.data, %struct.data* %267, i32 0, i32 0
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** %268, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 0
  store i32 1, i32* %273, align 8
  %274 = load i64, i64* %6, align 8
  %275 = call i8* @GET_MODE(i64 %274)
  %276 = load %struct.data*, %struct.data** %5, align 8
  %277 = getelementptr inbounds %struct.data, %struct.data* %276, i32 0, i32 0
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** %277, align 8
  %279 = load i32, i32* %12, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 6
  store i8* %275, i8** %282, align 8
  %283 = load %struct.data*, %struct.data** %5, align 8
  %284 = getelementptr inbounds %struct.data, %struct.data* %283, i32 0, i32 0
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** %284, align 8
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 1
  store i32 0, i32* %289, align 4
  %290 = load i64, i64* %6, align 8
  %291 = call i8* @XSTR(i64 %290, i32 1)
  %292 = load %struct.data*, %struct.data** %5, align 8
  %293 = getelementptr inbounds %struct.data, %struct.data* %292, i32 0, i32 0
  %294 = load %struct.TYPE_2__*, %struct.TYPE_2__** %293, align 8
  %295 = load i32, i32* %12, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 2
  store i8* %291, i8** %298, align 8
  %299 = load %struct.data*, %struct.data** %5, align 8
  %300 = getelementptr inbounds %struct.data, %struct.data* %299, i32 0, i32 0
  %301 = load %struct.TYPE_2__*, %struct.TYPE_2__** %300, align 8
  %302 = load i32, i32* %12, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 5
  store i8* null, i8** %305, align 8
  %306 = load %struct.data*, %struct.data** %5, align 8
  %307 = getelementptr inbounds %struct.data, %struct.data* %306, i32 0, i32 0
  %308 = load %struct.TYPE_2__*, %struct.TYPE_2__** %307, align 8
  %309 = load i32, i32* %12, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 3
  store i32 0, i32* %312, align 8
  %313 = load %struct.data*, %struct.data** %5, align 8
  %314 = getelementptr inbounds %struct.data, %struct.data* %313, i32 0, i32 0
  %315 = load %struct.TYPE_2__*, %struct.TYPE_2__** %314, align 8
  %316 = load i32, i32* %12, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 4
  store i32 0, i32* %319, align 4
  store i32 0, i32* %9, align 4
  br label %320

320:                                              ; preds = %330, %266
  %321 = load i32, i32* %9, align 4
  %322 = load i64, i64* %6, align 8
  %323 = call i32 @XVECLEN(i64 %322, i32 2)
  %324 = icmp slt i32 %321, %323
  br i1 %324, label %325, label %333

325:                                              ; preds = %320
  %326 = load %struct.data*, %struct.data** %5, align 8
  %327 = load i64, i64* %6, align 8
  %328 = load i32, i32* %9, align 4
  %329 = call i64 @XVECEXP(i64 %327, i32 2, i32 %328)
  call void @scan_operands(%struct.data* %326, i64 %329, i32 0, i32 0)
  br label %330

330:                                              ; preds = %325
  %331 = load i32, i32* %9, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %9, align 4
  br label %320

333:                                              ; preds = %320
  br label %393

334:                                              ; preds = %16, %16, %16
  %335 = load i32, i32* @num_dups, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* @num_dups, align 4
  br label %346

337:                                              ; preds = %16
  %338 = load %struct.data*, %struct.data** %5, align 8
  %339 = load i64, i64* %6, align 8
  %340 = call i64 @XEXP(i64 %339, i32 0)
  call void @scan_operands(%struct.data* %338, i64 %340, i32 1, i32 0)
  br label %393

341:                                              ; preds = %16
  %342 = load %struct.data*, %struct.data** %5, align 8
  %343 = load i64, i64* %6, align 8
  %344 = call i64 @XEXP(i64 %343, i32 0)
  call void @scan_operands(%struct.data* %342, i64 %344, i32 0, i32 1)
  br label %393

345:                                              ; preds = %16
  br label %346

346:                                              ; preds = %345, %334
  %347 = load i64, i64* %6, align 8
  %348 = call i32 @GET_CODE(i64 %347)
  %349 = call i8* @GET_RTX_FORMAT(i32 %348)
  store i8* %349, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %350

350:                                              ; preds = %390, %346
  %351 = load i32, i32* %9, align 4
  %352 = load i64, i64* %6, align 8
  %353 = call i32 @GET_CODE(i64 %352)
  %354 = call i32 @GET_RTX_LENGTH(i32 %353)
  %355 = icmp slt i32 %351, %354
  br i1 %355, label %356, label %393

356:                                              ; preds = %350
  %357 = load i8*, i8** %11, align 8
  %358 = getelementptr inbounds i8, i8* %357, i32 1
  store i8* %358, i8** %11, align 8
  %359 = load i8, i8* %357, align 1
  %360 = sext i8 %359 to i32
  switch i32 %360, label %389 [
    i32 101, label %361
    i32 117, label %361
    i32 69, label %366
  ]

361:                                              ; preds = %356, %356
  %362 = load %struct.data*, %struct.data** %5, align 8
  %363 = load i64, i64* %6, align 8
  %364 = load i32, i32* %9, align 4
  %365 = call i64 @XEXP(i64 %363, i32 %364)
  call void @scan_operands(%struct.data* %362, i64 %365, i32 0, i32 0)
  br label %389

366:                                              ; preds = %356
  %367 = load i64, i64* %6, align 8
  %368 = load i32, i32* %9, align 4
  %369 = call i32* @XVEC(i64 %367, i32 %368)
  %370 = icmp ne i32* %369, null
  br i1 %370, label %371, label %388

371:                                              ; preds = %366
  store i32 0, i32* %10, align 4
  br label %372

372:                                              ; preds = %384, %371
  %373 = load i32, i32* %10, align 4
  %374 = load i64, i64* %6, align 8
  %375 = load i32, i32* %9, align 4
  %376 = call i32 @XVECLEN(i64 %374, i32 %375)
  %377 = icmp slt i32 %373, %376
  br i1 %377, label %378, label %387

378:                                              ; preds = %372
  %379 = load %struct.data*, %struct.data** %5, align 8
  %380 = load i64, i64* %6, align 8
  %381 = load i32, i32* %9, align 4
  %382 = load i32, i32* %10, align 4
  %383 = call i64 @XVECEXP(i64 %380, i32 %381, i32 %382)
  call void @scan_operands(%struct.data* %379, i64 %383, i32 0, i32 0)
  br label %384

384:                                              ; preds = %378
  %385 = load i32, i32* %10, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %10, align 4
  br label %372

387:                                              ; preds = %372
  br label %388

388:                                              ; preds = %387, %366
  br label %389

389:                                              ; preds = %356, %388, %361
  br label %390

390:                                              ; preds = %389
  %391 = load i32, i32* %9, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %9, align 4
  br label %350

393:                                              ; preds = %15, %31, %52, %140, %161, %245, %333, %337, %341, %350
  ret void
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @XINT(i64, i32) #1

declare dso_local i32 @message_with_line(i32, i8*, ...) #1

declare dso_local i8* @GET_MODE(i64) #1

declare dso_local i8* @XSTR(i64, i32) #1

declare dso_local i8* @strip_whitespace(i8*) #1

declare dso_local i32 @n_occurrences(i8 signext, i8*) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32* @XVEC(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
