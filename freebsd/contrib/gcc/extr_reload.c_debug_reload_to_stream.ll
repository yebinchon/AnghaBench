; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_debug_reload_to_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_debug_reload_to_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i8* }

@stderr = common dso_local global i32* null, align 8
@n_reloads = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Reload %d: \00", align 1
@rld = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"reload_in (%s) = \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"reload_out (%s) = \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@reg_class_names = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"%s (opnum = %d)\00", align 1
@reload_when_needed_name = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c", optional\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c", nongroup\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c", inc by %d\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c", can't combine\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c", secondary_reload_p\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0A\09reload_in_reg: \00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"\0A\09reload_out_reg: \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"\0A\09reload_reg_rtx: \00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"%ssecondary_in_reload = %d\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"%ssecondary_out_reload = %d\0A\00", align 1
@CODE_FOR_nothing = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [26 x i8] c"%ssecondary_in_icode = %s\00", align 1
@insn_data = common dso_local global %struct.TYPE_4__* null, align 8
@.str.18 = private unnamed_addr constant [27 x i8] c"%ssecondary_out_icode = %s\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_reload_to_stream(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32*, i32** @stderr, align 8
  store i32* %8, i32** %2, align 8
  br label %9

9:                                                ; preds = %7, %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %308, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @n_reloads, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %311

14:                                               ; preds = %10
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %14
  %26 = load i32*, i32** %2, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 18
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @GET_MODE_NAME(i32 %32)
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @print_inline_rtx(i32* %35, i64 %41, i32 24)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %25, %14
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %45
  %54 = load i32*, i32** %2, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 17
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @GET_MODE_NAME(i32 %60)
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = load i32*, i32** %2, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @print_inline_rtx(i32* %63, i64 %69, i32 24)
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %53, %45
  %74 = load i32*, i32** %2, align 8
  %75 = load i8**, i8*** @reg_class_names, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 16
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %75, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  %87 = load i32*, i32** %2, align 8
  %88 = load i8**, i8*** @reload_when_needed_name, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 15
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %88, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %98, i32 %104)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 14
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %73
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 (i32*, i8*, ...) @fprintf(i32* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %73
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 13
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load i32*, i32** %2, align 8
  %126 = call i32 (i32*, i8*, ...) @fprintf(i32* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %116
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %127
  %136 = load i32*, i32** %2, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32*, i8*, ...) @fprintf(i32* %136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %135, %127
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 12
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = load i32*, i32** %2, align 8
  %154 = call i32 (i32*, i8*, ...) @fprintf(i32* %153, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %144
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %157 = load i32, i32* %3, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 11
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load i32*, i32** %2, align 8
  %165 = call i32 (i32*, i8*, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %155
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %166
  %175 = load i32*, i32** %2, align 8
  %176 = call i32 (i32*, i8*, ...) @fprintf(i32* %175, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %177 = load i32*, i32** %2, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @print_inline_rtx(i32* %177, i64 %183, i32 24)
  br label %185

185:                                              ; preds = %174, %166
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %187 = load i32, i32* %3, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %185
  %194 = load i32*, i32** %2, align 8
  %195 = call i32 (i32*, i8*, ...) @fprintf(i32* %194, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %196 = load i32*, i32** %2, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %198 = load i32, i32* %3, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @print_inline_rtx(i32* %196, i64 %202, i32 24)
  br label %204

204:                                              ; preds = %193, %185
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %206 = load i32, i32* %3, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 6
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %204
  %213 = load i32*, i32** %2, align 8
  %214 = call i32 (i32*, i8*, ...) @fprintf(i32* %213, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %215 = load i32*, i32** %2, align 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %217 = load i32, i32* %3, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 6
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @print_inline_rtx(i32* %215, i64 %221, i32 24)
  br label %223

223:                                              ; preds = %212, %204
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %225 = load i32, i32* %3, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, -1
  br i1 %230, label %231, label %241

231:                                              ; preds = %223
  %232 = load i32*, i32** %2, align 8
  %233 = load i8*, i8** %4, align 8
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %235 = load i32, i32* %3, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 8
  %240 = call i32 (i32*, i8*, ...) @fprintf(i32* %232, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* %233, i32 %239)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8** %4, align 8
  br label %241

241:                                              ; preds = %231, %223
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %243 = load i32, i32* %3, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 8
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, -1
  br i1 %248, label %249, label %259

249:                                              ; preds = %241
  %250 = load i32*, i32** %2, align 8
  %251 = load i8*, i8** %4, align 8
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %253 = load i32, i32* %3, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 4
  %258 = call i32 (i32*, i8*, ...) @fprintf(i32* %250, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* %251, i32 %257)
  br label %259

259:                                              ; preds = %249, %241
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %261 = load i32, i32* %3, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 9
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @CODE_FOR_nothing, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %282

268:                                              ; preds = %259
  %269 = load i32*, i32** %2, align 8
  %270 = load i8*, i8** %4, align 8
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %273 = load i32, i32* %3, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 9
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 (i32*, i8*, ...) @fprintf(i32* %269, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i8* %270, i8* %280)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8** %4, align 8
  br label %282

282:                                              ; preds = %268, %259
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %284 = load i32, i32* %3, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 10
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @CODE_FOR_nothing, align 8
  %290 = icmp ne i64 %288, %289
  br i1 %290, label %291, label %305

291:                                              ; preds = %282
  %292 = load i32*, i32** %2, align 8
  %293 = load i8*, i8** %4, align 8
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rld, align 8
  %296 = load i32, i32* %3, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 10
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 0
  %303 = load i8*, i8** %302, align 8
  %304 = call i32 (i32*, i8*, ...) @fprintf(i32* %292, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* %293, i8* %303)
  br label %305

305:                                              ; preds = %291, %282
  %306 = load i32*, i32** %2, align 8
  %307 = call i32 (i32*, i8*, ...) @fprintf(i32* %306, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %308

308:                                              ; preds = %305
  %309 = load i32, i32* %3, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %3, align 4
  br label %10

311:                                              ; preds = %10
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

declare dso_local i32 @print_inline_rtx(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
