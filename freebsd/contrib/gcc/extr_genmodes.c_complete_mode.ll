; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genmodes.c_complete_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genmodes.c_complete_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_data = type { i8*, i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.mode_data*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.mode_data* }

@.str = private unnamed_addr constant [25 x i8] c"%s:%d: mode with no name\00", align 1
@MAX_MODE_CLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s:%d: %smode has no mode class\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"VOID\00", align 1
@void_mode = common dso_local global %struct.mode_data* null, align 8
@UNSET = common dso_local global i32 0, align 4
@OPTIONAL = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mode_data*)* @complete_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_mode(%struct.mode_data* %0) #0 {
  %2 = alloca %struct.mode_data*, align 8
  %3 = alloca i32, align 4
  store %struct.mode_data* %0, %struct.mode_data** %2, align 8
  %4 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %5 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %4, i32 0, i32 8
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %10 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %13 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i8*, i32, i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %14)
  br label %234

16:                                               ; preds = %1
  %17 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %18 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MAX_MODE_CLASS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %24 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %27 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %30 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, i32, i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %25, i8* %28, i32 %31)
  br label %234

33:                                               ; preds = %16
  %34 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %35 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %187 [
    i32 130, label %37
    i32 137, label %61
    i32 132, label %75
    i32 133, label %75
    i32 134, label %75
    i32 131, label %96
    i32 135, label %115
    i32 136, label %115
    i32 128, label %149
    i32 129, label %149
  ]

37:                                               ; preds = %33
  %38 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %39 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @strcmp(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  store %struct.mode_data* %44, %struct.mode_data** @void_mode, align 8
  br label %45

45:                                               ; preds = %43, %37
  %46 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %47 = load i32, i32* @UNSET, align 4
  %48 = load i32, i32* @UNSET, align 4
  %49 = load i32, i32* @UNSET, align 4
  %50 = load i32, i32* @UNSET, align 4
  %51 = load i32, i32* @UNSET, align 4
  %52 = call i32 @validate_mode(%struct.mode_data* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %54 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %53, i32 0, i32 2
  store i32 0, i32* %54, align 4
  %55 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %56 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %55, i32 0, i32 3
  store i32 0, i32* %56, align 8
  %57 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %58 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %57, i32 0, i32 4
  store i32 0, i32* %58, align 4
  %59 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %60 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %59, i32 0, i32 6
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %60, align 8
  br label %189

61:                                               ; preds = %33
  %62 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %63 = load i32, i32* @UNSET, align 4
  %64 = load i32, i32* @UNSET, align 4
  %65 = load i32, i32* @UNSET, align 4
  %66 = load i32, i32* @UNSET, align 4
  %67 = load i32, i32* @UNSET, align 4
  %68 = call i32 @validate_mode(%struct.mode_data* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %70 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %69, i32 0, i32 3
  store i32 4, i32* %70, align 8
  %71 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %72 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %71, i32 0, i32 4
  store i32 1, i32* %72, align 4
  %73 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %74 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %73, i32 0, i32 6
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %74, align 8
  br label %189

75:                                               ; preds = %33, %33, %33
  %76 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %77 = load i32, i32* @OPTIONAL, align 4
  %78 = load i32, i32* @SET, align 4
  %79 = load i32, i32* @UNSET, align 4
  %80 = load i32, i32* @UNSET, align 4
  %81 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %82 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 132
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @SET, align 4
  br label %89

87:                                               ; preds = %75
  %88 = load i32, i32* @UNSET, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = call i32 @validate_mode(%struct.mode_data* %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %90)
  %92 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %93 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %92, i32 0, i32 4
  store i32 1, i32* %93, align 4
  %94 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %95 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %94, i32 0, i32 6
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %95, align 8
  br label %189

96:                                               ; preds = %33
  %97 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %98 = load i32, i32* @OPTIONAL, align 4
  %99 = load i32, i32* @UNSET, align 4
  %100 = load i32, i32* @SET, align 4
  %101 = load i32, i32* @UNSET, align 4
  %102 = load i32, i32* @UNSET, align 4
  %103 = call i32 @validate_mode(%struct.mode_data* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %105 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %104, i32 0, i32 6
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %110 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %112 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %111, i32 0, i32 4
  store i32 1, i32* %112, align 4
  %113 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %114 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %113, i32 0, i32 6
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %114, align 8
  br label %189

115:                                              ; preds = %33, %33
  %116 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %117 = load i32, i32* @UNSET, align 4
  %118 = load i32, i32* @UNSET, align 4
  %119 = load i32, i32* @SET, align 4
  %120 = load i32, i32* @UNSET, align 4
  %121 = load i32, i32* @UNSET, align 4
  %122 = call i32 @validate_mode(%struct.mode_data* %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %124 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %123, i32 0, i32 4
  store i32 2, i32* %124, align 4
  %125 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %126 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %125, i32 0, i32 6
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, -1
  br i1 %130, label %131, label %140

131:                                              ; preds = %115
  %132 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %133 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %132, i32 0, i32 6
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = mul i32 2, %136
  %138 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %139 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %131, %115
  %141 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %142 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %141, i32 0, i32 6
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 2, %145
  %147 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %148 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 8
  br label %189

149:                                              ; preds = %33, %33
  %150 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %151 = load i32, i32* @UNSET, align 4
  %152 = load i32, i32* @UNSET, align 4
  %153 = load i32, i32* @SET, align 4
  %154 = load i32, i32* @SET, align 4
  %155 = load i32, i32* @UNSET, align 4
  %156 = call i32 @validate_mode(%struct.mode_data* %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155)
  %157 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %158 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %157, i32 0, i32 6
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, -1
  br i1 %162, label %163, label %175

163:                                              ; preds = %149
  %164 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %165 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %168 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %167, i32 0, i32 6
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = mul i32 %166, %171
  %173 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %174 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %163, %149
  %176 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %177 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %180 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %179, i32 0, i32 6
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = mul nsw i32 %178, %183
  %185 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %186 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 8
  br label %189

187:                                              ; preds = %33
  %188 = call i32 (...) @gcc_unreachable()
  br label %189

189:                                              ; preds = %187, %175, %140, %96, %89, %61, %45
  %190 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %191 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = icmp eq i32 %192, 135
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  %195 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %196 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 136
  br i1 %198, label %199, label %205

199:                                              ; preds = %194, %189
  %200 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %201 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %200, i32 0, i32 6
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %3, align 4
  br label %209

205:                                              ; preds = %194
  %206 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %207 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %205, %199
  %210 = load i32, i32* %3, align 4
  %211 = load i32, i32* %3, align 4
  %212 = xor i32 %211, -1
  %213 = add i32 %212, 1
  %214 = and i32 %210, %213
  %215 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %216 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %215, i32 0, i32 5
  store i32 %214, i32* %216, align 8
  %217 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %218 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %217, i32 0, i32 6
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = icmp ne %struct.TYPE_2__* %219, null
  br i1 %220, label %221, label %234

221:                                              ; preds = %209
  %222 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %223 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %222, i32 0, i32 6
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 2
  %226 = load %struct.mode_data*, %struct.mode_data** %225, align 8
  %227 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %228 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %227, i32 0, i32 7
  store %struct.mode_data* %226, %struct.mode_data** %228, align 8
  %229 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %230 = load %struct.mode_data*, %struct.mode_data** %2, align 8
  %231 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %230, i32 0, i32 6
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 2
  store %struct.mode_data* %229, %struct.mode_data** %233, align 8
  br label %234

234:                                              ; preds = %8, %22, %221, %209
  ret void
}

declare dso_local i32 @error(i8*, i32, i8*, ...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @validate_mode(%struct.mode_data*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
