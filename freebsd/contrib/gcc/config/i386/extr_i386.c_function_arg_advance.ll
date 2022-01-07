; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_function_arg_advance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_function_arg_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@UNITS_PER_WORD = common dso_local global i32 0, align 4
@TARGET_DEBUG_ARG = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"function_adv (sz=%d, wds=%2d, nregs=%d, ssenregs=%d, mode=%s, named=%d)\0A\0A\00", align 1
@TARGET_64BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @function_arg_advance(%struct.TYPE_3__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 145
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @int_size_in_bytes(i64 %16)
  br label %22

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @GET_MODE_SIZE(i32 %19)
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i32 [ %17, %15 ], [ %21, %18 ]
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @UNITS_PER_WORD, align 4
  %26 = add nsw i32 %24, %25
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* @UNITS_PER_WORD, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @type_natural_mode(i64 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %22
  %36 = load i64, i64* @TARGET_DEBUG_ARG, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i8* @GET_MODE_NAME(i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %46, i32 %49, i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %38, %35
  %55 = load i64, i64* @TARGET_64BIT, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %109

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @examine_argument(i32 %58, i64 %59, i32 0, i32* %11, i32* %12)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %108

68:                                               ; preds = %57
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp sle i32 %69, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %68
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sle i32 %75, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %74
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %107

101:                                              ; preds = %74, %68
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %80
  br label %108

108:                                              ; preds = %107, %62
  br label %222

109:                                              ; preds = %54
  %110 = load i32, i32* %6, align 4
  switch i32 %110, label %111 [
    i32 145, label %112
    i32 143, label %117
    i32 139, label %117
    i32 142, label %117
    i32 141, label %117
    i32 144, label %143
    i32 140, label %150
    i32 138, label %157
    i32 137, label %157
    i32 129, label %157
    i32 130, label %157
    i32 135, label %157
    i32 131, label %157
    i32 136, label %157
    i32 128, label %189
    i32 132, label %189
    i32 133, label %189
    i32 134, label %189
  ]

111:                                              ; preds = %109
  br label %221

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %221

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %109, %109, %109, %109, %116
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp sle i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %117
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  store i32 0, i32* %139, align 4
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  store i32 0, i32* %141, align 4
  br label %142

142:                                              ; preds = %137, %117
  br label %221

143:                                              ; preds = %109
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %221

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %109, %149
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %221

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %109, %109, %109, %109, %109, %109, %109, %156
  %158 = load i64, i64* %7, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i64, i64* %7, align 8
  %162 = call i32 @AGGREGATE_TYPE_P(i64 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %188, label %164

164:                                              ; preds = %160, %157
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp sle i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %164
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 2
  store i32 0, i32* %184, align 4
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 4
  store i32 0, i32* %186, align 4
  br label %187

187:                                              ; preds = %182, %164
  br label %188

188:                                              ; preds = %187, %160
  br label %221

189:                                              ; preds = %109, %109, %109, %109
  %190 = load i64, i64* %7, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load i64, i64* %7, align 8
  %194 = call i32 @AGGREGATE_TYPE_P(i64 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %220, label %196

196:                                              ; preds = %192, %189
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 8
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 9
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 8
  %212 = load i32, i32* %211, align 4
  %213 = icmp sle i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %196
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 8
  store i32 0, i32* %216, align 4
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 9
  store i32 0, i32* %218, align 4
  br label %219

219:                                              ; preds = %214, %196
  br label %220

220:                                              ; preds = %219, %192
  br label %221

221:                                              ; preds = %220, %188, %155, %148, %142, %115, %111
  br label %222

222:                                              ; preds = %221, %108
  ret void
}

declare dso_local i32 @int_size_in_bytes(i64) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @type_natural_mode(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

declare dso_local i32 @examine_argument(i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @AGGREGATE_TYPE_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
