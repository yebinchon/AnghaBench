; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_convert_floatformat_to_doublest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_convert_floatformat_to_doublest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floatformat = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i32 }

@floatformat_littlebyte_bigword = common dso_local global i32 0, align 4
@convert_floatformat_to_doublest.newfrom = internal global i8* null, align 8
@FLOATFORMAT_CHAR_BIT = common dso_local global i32 0, align 4
@floatformat_intbit_no = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.floatformat*, i8*, double*)* @convert_floatformat_to_doublest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_floatformat_to_doublest(%struct.floatformat* %0, i8* %1, double* %2) #0 {
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
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.floatformat* %0, %struct.floatformat** %4, align 8
  store i8* %1, i8** %5, align 8
  store double* %2, double** %6, align 8
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %7, align 8
  %19 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %20 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @floatformat_littlebyte_bigword, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %92

24:                                               ; preds = %3
  %25 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %26 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = ashr i32 %30, 3
  store i32 %31, i32* %17, align 4
  %32 = load i8*, i8** @convert_floatformat_to_doublest.newfrom, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %36 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @xmalloc(i32 %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** @convert_floatformat_to_doublest.newfrom, align 8
  br label %40

40:                                               ; preds = %34, %24
  %41 = load i8*, i8** @convert_floatformat_to_doublest.newfrom, align 8
  store i8* %41, i8** %16, align 8
  %42 = load i8*, i8** %7, align 8
  store i8* %42, i8** %15, align 8
  %43 = load i8*, i8** @convert_floatformat_to_doublest.newfrom, align 8
  store i8* %43, i8** %7, align 8
  br label %44

44:                                               ; preds = %48, %40
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %17, align 4
  %47 = icmp sgt i32 %45, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %44
  %49 = load i8*, i8** %15, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %16, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %16, align 8
  store i8 %51, i8* %52, align 1
  %54 = load i8*, i8** %15, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 5
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %16, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %16, align 8
  store i8 %56, i8* %57, align 1
  %59 = load i8*, i8** %15, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 6
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %16, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %16, align 8
  store i8 %61, i8* %62, align 1
  %64 = load i8*, i8** %15, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 7
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %16, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %16, align 8
  store i8 %66, i8* %67, align 1
  %69 = load i8*, i8** %15, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %16, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %16, align 8
  store i8 %71, i8* %72, align 1
  %74 = load i8*, i8** %15, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %16, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %16, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i8*, i8** %15, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %16, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %16, align 8
  store i8 %81, i8* %82, align 1
  %84 = load i8*, i8** %15, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %16, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %16, align 8
  store i8 %86, i8* %87, align 1
  %89 = load i8*, i8** %15, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 8
  store i8* %90, i8** %15, align 8
  br label %44

91:                                               ; preds = %44
  br label %92

92:                                               ; preds = %91, %3
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %95 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %98 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %101 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %104 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @get_field(i8* %93, i32 %96, i32 %99, i32 %102, i32 %105)
  store i64 %106, i64* %9, align 8
  %107 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %108 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %13, align 4
  %110 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %111 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %12, align 4
  store double 0.000000e+00, double* %8, align 8
  %113 = load i64, i64* %9, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %92
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %118 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %116, %119
  br label %121

121:                                              ; preds = %115, %92
  %122 = phi i1 [ true, %92 ], [ %120, %115 ]
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %121
  %127 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %128 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = sub nsw i64 %130, %129
  store i64 %131, i64* %9, align 8
  br label %141

132:                                              ; preds = %121
  %133 = load i64, i64* %9, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %137 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %136, i32 0, i32 6
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 1, %138
  store i64 %139, i64* %9, align 8
  br label %140

140:                                              ; preds = %135, %132
  br label %141

141:                                              ; preds = %140, %126
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %157, label %144

144:                                              ; preds = %141
  %145 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %146 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %145, i32 0, i32 7
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @floatformat_intbit_no, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i64, i64* %9, align 8
  %152 = call double @ldexp(double 1.000000e+00, i64 %151)
  store double %152, double* %8, align 8
  br label %156

153:                                              ; preds = %144
  %154 = load i64, i64* %9, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %9, align 8
  br label %156

156:                                              ; preds = %153, %150
  br label %157

157:                                              ; preds = %156, %141
  br label %158

158:                                              ; preds = %161, %157
  %159 = load i32, i32* %13, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %193

161:                                              ; preds = %158
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @min(i32 %162, i32 32)
  store i32 %163, i32* %11, align 4
  %164 = load i8*, i8** %7, align 8
  %165 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %166 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %169 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %11, align 4
  %173 = call i64 @get_field(i8* %164, i32 %167, i32 %170, i32 %171, i32 %172)
  store i64 %173, i64* %10, align 8
  %174 = load i64, i64* %10, align 8
  %175 = uitofp i64 %174 to double
  %176 = load i64, i64* %9, align 8
  %177 = load i32, i32* %11, align 4
  %178 = zext i32 %177 to i64
  %179 = sub nsw i64 %176, %178
  %180 = call double @ldexp(double %175, i64 %179)
  %181 = load double, double* %8, align 8
  %182 = fadd double %181, %180
  store double %182, double* %8, align 8
  %183 = load i32, i32* %11, align 4
  %184 = zext i32 %183 to i64
  %185 = load i64, i64* %9, align 8
  %186 = sub nsw i64 %185, %184
  store i64 %186, i64* %9, align 8
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %12, align 4
  %189 = add i32 %188, %187
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %13, align 4
  %192 = sub i32 %191, %190
  store i32 %192, i32* %13, align 4
  br label %158

193:                                              ; preds = %158
  %194 = load i8*, i8** %7, align 8
  %195 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %196 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %195, i32 0, i32 9
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %199 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %202 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @get_field(i8* %194, i32 %197, i32 %200, i32 %203, i32 1)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %193
  %207 = load double, double* %8, align 8
  %208 = fneg double %207
  store double %208, double* %8, align 8
  br label %209

209:                                              ; preds = %206, %193
  %210 = load double, double* %8, align 8
  %211 = load double*, double** %6, align 8
  store double %210, double* %211, align 8
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @get_field(i8*, i32, i32, i32, i32) #1

declare dso_local double @ldexp(double, i64) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
