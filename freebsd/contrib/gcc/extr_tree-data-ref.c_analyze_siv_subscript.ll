; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_siv_subscript.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_siv_subscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@dependence_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"(analyze_siv_subscript \0A\00", align 1
@chrec_dont_know = common dso_local global i64 0, align 8
@chrec_known = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"siv test failed: unimplemented.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64*, i64*, i64*)* @analyze_siv_subscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_siv_subscript(i64 %0, i64 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 3), align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 3), align 4
  %13 = load i64, i64* @dump_file, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %5
  %16 = load i32, i32* @dump_flags, align 4
  %17 = load i32, i32* @TDF_DETAILS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i64, i64* @dump_file, align 8
  %22 = call i32 @fprintf(i64 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %15, %5
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @evolution_function_is_constant_p(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @evolution_function_is_affine_p(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64*, i64** %8, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = load i64*, i64** %10, align 8
  %37 = call i32 @analyze_siv_subscript_cst_affine(i64 %32, i64 %33, i64* %34, i64* %35, i64* %36)
  br label %174

38:                                               ; preds = %27, %23
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @evolution_function_is_affine_p(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @evolution_function_is_constant_p(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = load i64*, i64** %10, align 8
  %52 = call i32 @analyze_siv_subscript_cst_affine(i64 %47, i64 %48, i64* %49, i64* %50, i64* %51)
  br label %173

53:                                               ; preds = %42, %38
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @evolution_function_is_affine_p(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %151

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @evolution_function_is_affine_p(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %151

61:                                               ; preds = %57
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @chrec_contains_symbols(i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %106, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @chrec_contains_symbols(i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %106, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64*, i64** %8, align 8
  %73 = load i64*, i64** %9, align 8
  %74 = load i64*, i64** %10, align 8
  %75 = call i32 @analyze_subscript_affine_affine(i64 %70, i64 %71, i64* %72, i64* %73, i64* %74)
  %76 = load i64*, i64** %8, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @chrec_dont_know, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %69
  %81 = load i64*, i64** %9, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @chrec_dont_know, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80, %69
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  br label %105

88:                                               ; preds = %80
  %89 = load i64*, i64** %8, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @chrec_known, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load i64*, i64** %9, align 8
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @chrec_known, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93, %88
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  br label %104

101:                                              ; preds = %93
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %85
  br label %150

106:                                              ; preds = %65, %61
  %107 = call i64 @can_use_analyze_subscript_affine_affine(i64* %6, i64* %7)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %148

109:                                              ; preds = %106
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i64*, i64** %8, align 8
  %113 = load i64*, i64** %9, align 8
  %114 = load i64*, i64** %10, align 8
  %115 = call i32 @analyze_subscript_affine_affine(i64 %110, i64 %111, i64* %112, i64* %113, i64* %114)
  %116 = load i64, i64* @chrec_dont_know, align 8
  %117 = load i64*, i64** %10, align 8
  store i64 %116, i64* %117, align 8
  %118 = load i64*, i64** %8, align 8
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @chrec_dont_know, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %109
  %123 = load i64*, i64** %9, align 8
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @chrec_dont_know, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %122, %109
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  br label %147

130:                                              ; preds = %122
  %131 = load i64*, i64** %8, align 8
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @chrec_known, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load i64*, i64** %9, align 8
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @chrec_known, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %135, %130
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  br label %146

143:                                              ; preds = %135
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  br label %146

146:                                              ; preds = %143, %140
  br label %147

147:                                              ; preds = %146, %127
  br label %149

148:                                              ; preds = %106
  br label %152

149:                                              ; preds = %147
  br label %150

150:                                              ; preds = %149, %105
  br label %172

151:                                              ; preds = %57, %53
  br label %152

152:                                              ; preds = %151, %148
  %153 = load i64, i64* @dump_file, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load i32, i32* @dump_flags, align 4
  %157 = load i32, i32* @TDF_DETAILS, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i64, i64* @dump_file, align 8
  %162 = call i32 @fprintf(i64 %161, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %155, %152
  %164 = load i64, i64* @chrec_dont_know, align 8
  %165 = load i64*, i64** %8, align 8
  store i64 %164, i64* %165, align 8
  %166 = load i64, i64* @chrec_dont_know, align 8
  %167 = load i64*, i64** %9, align 8
  store i64 %166, i64* %167, align 8
  %168 = load i64, i64* @chrec_dont_know, align 8
  %169 = load i64*, i64** %10, align 8
  store i64 %168, i64* %169, align 8
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  br label %172

172:                                              ; preds = %163, %150
  br label %173

173:                                              ; preds = %172, %46
  br label %174

174:                                              ; preds = %173, %31
  %175 = load i64, i64* @dump_file, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load i32, i32* @dump_flags, align 4
  %179 = load i32, i32* @TDF_DETAILS, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i64, i64* @dump_file, align 8
  %184 = call i32 @fprintf(i64 %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %177, %174
  ret void
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i64 @evolution_function_is_constant_p(i64) #1

declare dso_local i64 @evolution_function_is_affine_p(i64) #1

declare dso_local i32 @analyze_siv_subscript_cst_affine(i64, i64, i64*, i64*, i64*) #1

declare dso_local i32 @chrec_contains_symbols(i64) #1

declare dso_local i32 @analyze_subscript_affine_affine(i64, i64, i64*, i64*, i64*) #1

declare dso_local i64 @can_use_analyze_subscript_affine_affine(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
