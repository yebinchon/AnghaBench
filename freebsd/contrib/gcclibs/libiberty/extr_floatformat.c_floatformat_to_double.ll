; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_floatformat.c_floatformat_to_double.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_floatformat.c_floatformat_to_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floatformat = type { i32, i32, i64, i32, i32, i32, i64, i64, i32, i32 }

@NAN = common dso_local global double 0.000000e+00, align 8
@INFINITY = common dso_local global double 0.000000e+00, align 8
@floatformat_intbit_no = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @floatformat_to_double(%struct.floatformat* %0, i8* %1, double* %2) #0 {
  %4 = alloca %struct.floatformat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.floatformat* %0, %struct.floatformat** %4, align 8
  store i8* %1, i8** %5, align 8
  store double* %2, double** %6, align 8
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %19 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %22 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %25 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %28 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @get_field(i8* %17, i32 %20, i32 %23, i32 %26, i32 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %33 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %94

36:                                               ; preds = %3
  %37 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %38 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %41 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %61, %36
  %44 = load i32, i32* %13, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @min(i32 %47, i32 32)
  store i32 %48, i32* %11, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %51 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %54 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @get_field(i8* %49, i32 %52, i32 %55, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  store i32 1, i32* %15, align 4
  br label %68

61:                                               ; preds = %46
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %13, align 4
  %67 = sub i32 %66, %65
  store i32 %67, i32* %13, align 4
  br label %43

68:                                               ; preds = %60, %43
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load double, double* @NAN, align 8
  store double %72, double* %8, align 8
  br label %75

73:                                               ; preds = %68
  %74 = load double, double* @INFINITY, align 8
  store double %74, double* %8, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %78 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %81 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %84 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @get_field(i8* %76, i32 %79, i32 %82, i32 %85, i32 1)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %75
  %89 = load double, double* %8, align 8
  %90 = fneg double %89
  store double %90, double* %8, align 8
  br label %91

91:                                               ; preds = %88, %75
  %92 = load double, double* %8, align 8
  %93 = load double*, double** %6, align 8
  store double %92, double* %93, align 8
  br label %226

94:                                               ; preds = %3
  %95 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %96 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %13, align 4
  %98 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %99 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %12, align 4
  store double 0.000000e+00, double* %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %94
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %106 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br label %109

109:                                              ; preds = %103, %94
  %110 = phi i1 [ true, %94 ], [ %108, %103 ]
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %116 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = sub nsw i64 %118, %117
  store i64 %119, i64* %9, align 8
  br label %120

120:                                              ; preds = %114, %109
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %136, label %123

123:                                              ; preds = %120
  %124 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %125 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @floatformat_intbit_no, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load i64, i64* %9, align 8
  %131 = call double @ldexp(double 1.000000e+00, i64 %130)
  store double %131, double* %8, align 8
  br label %135

132:                                              ; preds = %123
  %133 = load i64, i64* %9, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %9, align 8
  br label %135

135:                                              ; preds = %132, %129
  br label %136

136:                                              ; preds = %135, %120
  br label %137

137:                                              ; preds = %200, %136
  %138 = load i32, i32* %13, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %207

140:                                              ; preds = %137
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @min(i32 %141, i32 32)
  store i32 %142, i32* %11, align 4
  %143 = load i8*, i8** %7, align 8
  %144 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %145 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %148 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i64 @get_field(i8* %143, i32 %146, i32 %149, i32 %150, i32 %151)
  store i64 %152, i64* %10, align 8
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %140
  %156 = load i64, i64* %9, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %182

158:                                              ; preds = %155
  %159 = load i64, i64* %10, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %182

161:                                              ; preds = %158
  %162 = load i64, i64* %10, align 8
  %163 = uitofp i64 %162 to double
  %164 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %165 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %164, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = sub nsw i64 0, %166
  %168 = load i32, i32* %11, align 4
  %169 = zext i32 %168 to i64
  %170 = sub nsw i64 %167, %169
  %171 = load i32, i32* %12, align 4
  %172 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %173 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = sub i32 %171, %174
  %176 = zext i32 %175 to i64
  %177 = sub nsw i64 %170, %176
  %178 = add nsw i64 %177, 1
  %179 = call double @ldexp(double %163, i64 %178)
  %180 = load double, double* %8, align 8
  %181 = fadd double %180, %179
  store double %181, double* %8, align 8
  br label %192

182:                                              ; preds = %158, %155, %140
  %183 = load i64, i64* %10, align 8
  %184 = uitofp i64 %183 to double
  %185 = load i64, i64* %9, align 8
  %186 = load i32, i32* %11, align 4
  %187 = zext i32 %186 to i64
  %188 = sub nsw i64 %185, %187
  %189 = call double @ldexp(double %184, i64 %188)
  %190 = load double, double* %8, align 8
  %191 = fadd double %190, %189
  store double %191, double* %8, align 8
  br label %192

192:                                              ; preds = %182, %161
  %193 = load i64, i64* %9, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load i32, i32* %11, align 4
  %197 = zext i32 %196 to i64
  %198 = load i64, i64* %9, align 8
  %199 = sub nsw i64 %198, %197
  store i64 %199, i64* %9, align 8
  br label %200

200:                                              ; preds = %195, %192
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %12, align 4
  %203 = add i32 %202, %201
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %13, align 4
  %206 = sub i32 %205, %204
  store i32 %206, i32* %13, align 4
  br label %137

207:                                              ; preds = %137
  %208 = load i8*, i8** %7, align 8
  %209 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %210 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %209, i32 0, i32 9
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %213 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %212, i32 0, i32 8
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %216 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = call i64 @get_field(i8* %208, i32 %211, i32 %214, i32 %217, i32 1)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %207
  %221 = load double, double* %8, align 8
  %222 = fneg double %221
  store double %222, double* %8, align 8
  br label %223

223:                                              ; preds = %220, %207
  %224 = load double, double* %8, align 8
  %225 = load double*, double** %6, align 8
  store double %224, double* %225, align 8
  br label %226

226:                                              ; preds = %223, %91
  ret void
}

declare dso_local i64 @get_field(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local double @ldexp(double, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
