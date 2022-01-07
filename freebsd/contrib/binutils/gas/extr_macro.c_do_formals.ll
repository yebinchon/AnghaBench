; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_do_formals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_do_formals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_17__, %struct.TYPE_19__*, i32 }
%struct.TYPE_17__ = type { i32, i8* }

@macro_mri = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Missing parameter qualifier for `%s' in macro `%s'\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@FORMAL_REQUIRED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"vararg\00", align 1
@FORMAL_VARARG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [63 x i8] c"`%s' is not a valid parameter qualifier for `%s' in macro `%s'\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"Pointless default value for required parameter `%s' in macro `%s'\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"A parameter named `%s' already exists for macro `%s'\00", align 1
@macro_strip_at = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"$NARG\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NARG\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Reserved word `%s' used as parameter in macro `%s'\00", align 1
@NARG_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32, %struct.TYPE_17__*)* @do_formals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_formals(%struct.TYPE_18__* %0, i32 %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_19__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 5
  store %struct.TYPE_19__** %14, %struct.TYPE_19__*** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = call i32 @sb_skip_white(i32 %15, %struct.TYPE_17__* %16)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %268, %3
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %269

24:                                               ; preds = %18
  %25 = call %struct.TYPE_19__* (...) @new_formal()
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %9, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 2
  %30 = call i32 @get_token(i32 %26, %struct.TYPE_17__* %27, %struct.TYPE_17__* %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %24
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %36
  br label %269

45:                                               ; preds = %24
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = call i32 @sb_skip_white(i32 %46, %struct.TYPE_17__* %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 2
  %51 = call i8* @sb_terminate(%struct.TYPE_17__* %50)
  store i8* %51, i8** %8, align 8
  %52 = load i64, i64* @macro_mri, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %158, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %158

60:                                               ; preds = %54
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 58
  br i1 %69, label %70, label %158

70:                                               ; preds = %60
  %71 = call i32 @is_name_beginner(i8 signext 58)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %75, %78
  br i1 %79, label %91, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = call i32 @is_part_of_name(i8 signext %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %158, label %91

91:                                               ; preds = %80, %73, %70
  %92 = call i32 @sb_new(%struct.TYPE_17__* %11)
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %96 = call i32 @sb_skip_white(i32 %94, %struct.TYPE_17__* %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %98 = call i32 @get_token(i32 %96, %struct.TYPE_17__* %97, %struct.TYPE_17__* %11)
  store i32 %98, i32* %5, align 4
  %99 = call i8* @sb_terminate(%struct.TYPE_17__* %11)
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %91
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %111 = load i8*, i8** %8, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 (i32, i32, i32, i8*, i8*, ...) @as_bad_where(i32 %106, i32 %109, i32 %110, i8* %111, i8* %116)
  br label %153

118:                                              ; preds = %91
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i64, i64* @FORMAL_REQUIRED, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %152

127:                                              ; preds = %118
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i64, i64* @FORMAL_VARARG, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %151

136:                                              ; preds = %127
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i32, i32, i32, i8*, i8*, ...) @as_bad_where(i32 %139, i32 %142, i32 %143, i8* %145, i8* %146, i32 %149)
  br label %151

151:                                              ; preds = %136, %132
  br label %152

152:                                              ; preds = %151, %123
  br label %153

153:                                              ; preds = %152, %103
  %154 = call i32 @sb_kill(%struct.TYPE_17__* %11)
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %157 = call i32 @sb_skip_white(i32 %155, %struct.TYPE_17__* %156)
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %153, %80, %60, %54, %45
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %206

164:                                              ; preds = %158
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 61
  br i1 %173, label %174, label %206

174:                                              ; preds = %164
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 4
  %180 = call i32 @get_any_string(i32 %176, %struct.TYPE_17__* %177, i32* %179)
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* %5, align 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %183 = call i32 @sb_skip_white(i32 %181, %struct.TYPE_17__* %182)
  store i32 %183, i32* %5, align 4
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @FORMAL_REQUIRED, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %205

189:                                              ; preds = %174
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 4
  %192 = call i32 @sb_reset(i32* %191)
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %200 = load i8*, i8** %8, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @as_warn_where(i32 %195, i32 %198, i32 %199, i8* %200, i32 %203)
  br label %205

205:                                              ; preds = %189, %174
  br label %206

206:                                              ; preds = %205, %164, %158
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i8*, i8** %8, align 8
  %211 = call i64 @hash_find(i32 %209, i8* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %206
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i8*, i8** %8, align 8
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %219 = call i32 @hash_jam(i32 %216, i8* %217, %struct.TYPE_19__* %218)
  br label %235

220:                                              ; preds = %206
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %228 = load i8*, i8** %8, align 8
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to i8*
  %234 = call i32 (i32, i32, i32, i8*, i8*, ...) @as_bad_where(i32 %223, i32 %226, i32 %227, i8* %228, i8* %233)
  br label %235

235:                                              ; preds = %220, %213
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %238, 1
  store i64 %239, i64* %237, align 8
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 1
  store i64 %238, i64* %241, align 8
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %243 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  store %struct.TYPE_19__* %242, %struct.TYPE_19__** %243, align 8
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 3
  store %struct.TYPE_19__** %245, %struct.TYPE_19__*** %7, align 8
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @FORMAL_VARARG, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %235
  br label %269

252:                                              ; preds = %235
  %253 = load i32, i32* %5, align 4
  store i32 %253, i32* %10, align 4
  %254 = load i32, i32* %5, align 4
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %256 = call i32 @sb_skip_comma(i32 %254, %struct.TYPE_17__* %255)
  store i32 %256, i32* %5, align 4
  %257 = load i32, i32* %5, align 4
  %258 = load i32, i32* %10, align 4
  %259 = icmp ne i32 %257, %258
  br i1 %259, label %260, label %268

260:                                              ; preds = %252
  %261 = load i32, i32* %5, align 4
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp sge i32 %261, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %260
  %267 = load i32, i32* %10, align 4
  store i32 %267, i32* %5, align 4
  br label %269

268:                                              ; preds = %260, %252
  br label %18

269:                                              ; preds = %266, %251, %44, %18
  %270 = load i64, i64* @macro_mri, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %316

272:                                              ; preds = %269
  %273 = call %struct.TYPE_19__* (...) @new_formal()
  store %struct.TYPE_19__* %273, %struct.TYPE_19__** %12, align 8
  %274 = load i64, i64* @macro_strip_at, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %278

277:                                              ; preds = %272
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %278

278:                                              ; preds = %277, %276
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 2
  %281 = load i8*, i8** %8, align 8
  %282 = call i32 @sb_add_string(%struct.TYPE_17__* %280, i8* %281)
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i8*, i8** %8, align 8
  %287 = call i64 @hash_find(i32 %285, i8* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %304

289:                                              ; preds = %278
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  %297 = load i8*, i8** %8, align 8
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = inttoptr i64 %301 to i8*
  %303 = call i32 (i32, i32, i32, i8*, i8*, ...) @as_bad_where(i32 %292, i32 %295, i32 %296, i8* %297, i8* %302)
  br label %304

304:                                              ; preds = %289, %278
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i8*, i8** %8, align 8
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %310 = call i32 @hash_jam(i32 %307, i8* %308, %struct.TYPE_19__* %309)
  %311 = load i64, i64* @NARG_INDEX, align 8
  %312 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %312, i32 0, i32 1
  store i64 %311, i64* %313, align 8
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %315 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  store %struct.TYPE_19__* %314, %struct.TYPE_19__** %315, align 8
  br label %316

316:                                              ; preds = %304, %269
  %317 = load i32, i32* %5, align 4
  ret i32 %317
}

declare dso_local i32 @sb_skip_white(i32, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_19__* @new_formal(...) #1

declare dso_local i32 @get_token(i32, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i8* @sb_terminate(%struct.TYPE_17__*) #1

declare dso_local i32 @is_name_beginner(i8 signext) #1

declare dso_local i32 @is_part_of_name(i8 signext) #1

declare dso_local i32 @sb_new(%struct.TYPE_17__*) #1

declare dso_local i32 @as_bad_where(i32, i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sb_kill(%struct.TYPE_17__*) #1

declare dso_local i32 @get_any_string(i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @sb_reset(i32*) #1

declare dso_local i32 @as_warn_where(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @hash_find(i32, i8*) #1

declare dso_local i32 @hash_jam(i32, i8*, %struct.TYPE_19__*) #1

declare dso_local i32 @sb_skip_comma(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @sb_add_string(%struct.TYPE_17__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
