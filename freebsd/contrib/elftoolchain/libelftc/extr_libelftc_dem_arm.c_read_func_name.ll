; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_arm.c_read_func_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_arm.c_read_func_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i8*, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8** }

@.str = private unnamed_addr constant [23 x i8] c"d->p (org str) is NULL\00", align 1
@ENCODE_OP = common dso_local global i64 0, align 8
@ENCODE_OP_CT = common dso_local global i64 0, align 8
@ENCODE_OP_DT = common dso_local global i64 0, align 8
@ENCODE_OP_USER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demangle_data*)* @read_func_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_func_name(%struct.demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.demangle_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.demangle_data* %0, %struct.demangle_data** %3, align 8
  %7 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %8 = icmp eq %struct.demangle_data* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %239

10:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %11 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %12 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %10
  %17 = phi i1 [ false, %10 ], [ true, %15 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %21 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 95
  br i1 %25, label %26, label %231

26:                                               ; preds = %16
  %27 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %28 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 95
  br i1 %33, label %34, label %231

34:                                               ; preds = %26
  %35 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %36 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8* %38, i8** %36, align 8
  %39 = load i64, i64* @ENCODE_OP, align 8
  %40 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %41 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %43 = call i32 @read_op(%struct.demangle_data* %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %239

46:                                               ; preds = %34
  %47 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %48 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ENCODE_OP_CT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %54 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ENCODE_OP_DT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %60 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ENCODE_OP_USER, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %52, %46
  store i32 1, i32* %2, align 4
  br label %239

65:                                               ; preds = %58
  %66 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %67 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  store i8* %69, i8** %67, align 8
  %70 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %71 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 81
  br i1 %75, label %76, label %155

76:                                               ; preds = %65
  %77 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %78 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @ELFTC_ISDIGIT(i8 signext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %155

84:                                               ; preds = %76
  %85 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %86 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %86, align 8
  %89 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %90 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %97 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i8**, i8*** %98, align 8
  %100 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %101 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %99, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @strlen(i8* %107)
  store i64 %108, i64* %4, align 8
  %109 = load i64, i64* %4, align 8
  %110 = add i64 %109, 1
  %111 = mul i64 1, %110
  %112 = trunc i64 %111 to i32
  %113 = call i8* @malloc(i32 %112)
  store i8* %113, i8** %6, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %84
  store i32 0, i32* %2, align 4
  br label %239

116:                                              ; preds = %84
  %117 = load i8*, i8** %6, align 8
  %118 = load i64, i64* %4, align 8
  %119 = add i64 %118, 1
  %120 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %121 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i8**, i8*** %122, align 8
  %124 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %125 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %123, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @snprintf(i8* %117, i64 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %131)
  %133 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %134 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %133, i32 0, i32 2
  %135 = call i32 @vector_str_pop(%struct.TYPE_4__* %134)
  %136 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %137 = call i32 @read_qual_name(%struct.demangle_data* %136)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %116
  br label %235

140:                                              ; preds = %116
  %141 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %142 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %141, i32 0, i32 2
  %143 = call i32 @VEC_PUSH_STR(%struct.TYPE_4__* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %235

146:                                              ; preds = %140
  %147 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %148 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %147, i32 0, i32 2
  %149 = load i8*, i8** %6, align 8
  %150 = load i64, i64* %4, align 8
  %151 = call i32 @vector_str_push(%struct.TYPE_4__* %148, i8* %149, i64 %150)
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %235

154:                                              ; preds = %146
  store i32 1, i32* %5, align 4
  br label %230

155:                                              ; preds = %76, %65
  %156 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %157 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = load i8, i8* %158, align 1
  %160 = call i64 @ELFTC_ISDIGIT(i8 signext %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %229

162:                                              ; preds = %155
  %163 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %164 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sgt i32 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %171 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i8**, i8*** %172, align 8
  %174 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %175 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %173, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = call i64 @strlen(i8* %181)
  store i64 %182, i64* %4, align 8
  %183 = load i64, i64* %4, align 8
  %184 = add i64 %183, 1
  %185 = mul i64 1, %184
  %186 = trunc i64 %185 to i32
  %187 = call i8* @malloc(i32 %186)
  store i8* %187, i8** %6, align 8
  %188 = icmp eq i8* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %162
  store i32 0, i32* %2, align 4
  br label %239

190:                                              ; preds = %162
  %191 = load i8*, i8** %6, align 8
  %192 = load i64, i64* %4, align 8
  %193 = add i64 %192, 1
  %194 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %195 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i8**, i8*** %196, align 8
  %198 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %199 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %197, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @snprintf(i8* %191, i64 %193, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %205)
  %207 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %208 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %207, i32 0, i32 2
  %209 = call i32 @vector_str_pop(%struct.TYPE_4__* %208)
  %210 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %211 = call i32 @read_class(%struct.demangle_data* %210)
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %190
  br label %235

214:                                              ; preds = %190
  %215 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %216 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %215, i32 0, i32 2
  %217 = call i32 @VEC_PUSH_STR(%struct.TYPE_4__* %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  br label %235

220:                                              ; preds = %214
  %221 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %222 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %221, i32 0, i32 2
  %223 = load i8*, i8** %6, align 8
  %224 = load i64, i64* %4, align 8
  %225 = call i32 @vector_str_push(%struct.TYPE_4__* %222, i8* %223, i64 %224)
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  br label %235

228:                                              ; preds = %220
  store i32 1, i32* %5, align 4
  br label %229

229:                                              ; preds = %228, %155
  br label %230

230:                                              ; preds = %229, %154
  br label %234

231:                                              ; preds = %26, %16
  %232 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %233 = call i32 @read_func(%struct.demangle_data* %232)
  store i32 %233, i32* %2, align 4
  br label %239

234:                                              ; preds = %230
  br label %235

235:                                              ; preds = %234, %227, %219, %213, %153, %145, %139
  %236 = load i8*, i8** %6, align 8
  %237 = call i32 @free(i8* %236)
  %238 = load i32, i32* %5, align 4
  store i32 %238, i32* %2, align 4
  br label %239

239:                                              ; preds = %235, %231, %189, %115, %64, %45, %9
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_op(%struct.demangle_data*) #1

declare dso_local i64 @ELFTC_ISDIGIT(i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @vector_str_pop(%struct.TYPE_4__*) #1

declare dso_local i32 @read_qual_name(%struct.demangle_data*) #1

declare dso_local i32 @VEC_PUSH_STR(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @vector_str_push(%struct.TYPE_4__*, i8*, i64) #1

declare dso_local i32 @read_class(%struct.demangle_data*) #1

declare dso_local i32 @read_func(%struct.demangle_data*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
