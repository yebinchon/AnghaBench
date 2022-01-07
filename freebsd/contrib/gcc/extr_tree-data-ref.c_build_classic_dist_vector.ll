; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_build_classic_dist_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_build_classic_dist_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_dependence_relation = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"(build_classic_dist_vector\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"  dist_vector = (\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"  )\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data_dependence_relation*)* @build_classic_dist_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_classic_dist_vector(%struct.data_dependence_relation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.data_dependence_relation*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.data_dependence_relation* %0, %struct.data_dependence_relation** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %12 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %14 = call i64 @DDR_ARE_DEPENDENT(%struct.data_dependence_relation* %13)
  %15 = load i64, i64* @NULL_TREE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %180

18:                                               ; preds = %1
  %19 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %20 = call i64 @same_access_functions(%struct.data_dependence_relation* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %24 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %23)
  %25 = call i32 @lambda_vector_new(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @save_dist_v(%struct.data_dependence_relation* %26, i32 %27)
  %29 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %30 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %29)
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %34 = call i32 @add_other_self_distances(%struct.data_dependence_relation* %33)
  br label %35

35:                                               ; preds = %32, %22
  store i32 1, i32* %2, align 4
  br label %180

36:                                               ; preds = %18
  %37 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %38 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %37)
  %39 = call i32 @lambda_vector_new(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %41 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %42 = call i32 @DDR_A(%struct.data_dependence_relation* %41)
  %43 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %44 = call i32 @DDR_B(%struct.data_dependence_relation* %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @build_classic_dist_vector_1(%struct.data_dependence_relation* %40, i32 %42, i32 %44, i32 %45, i32* %4, i32* %5)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %180

49:                                               ; preds = %36
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %137

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %55 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %54)
  %56 = call i32 @lambda_vector_lexico_pos(i32 %53, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %93, label %58

58:                                               ; preds = %52
  %59 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %60 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %59)
  %61 = call i32 @lambda_vector_new(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %63 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %64 = call i32 @DDR_B(%struct.data_dependence_relation* %63)
  %65 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %66 = call i32 @DDR_A(%struct.data_dependence_relation* %65)
  %67 = call i32 @subscript_dependence_tester_1(%struct.data_dependence_relation* %62, i32 %64, i32 %66)
  %68 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %69 = call i32 @compute_subscript_distance(%struct.data_dependence_relation* %68)
  %70 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %71 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %72 = call i32 @DDR_B(%struct.data_dependence_relation* %71)
  %73 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %74 = call i32 @DDR_A(%struct.data_dependence_relation* %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @build_classic_dist_vector_1(%struct.data_dependence_relation* %70, i32 %72, i32 %74, i32 %75, i32* %4, i32* %5)
  %77 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @save_dist_v(%struct.data_dependence_relation* %77, i32 %78)
  %80 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %81 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %80)
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %92

83:                                               ; preds = %58
  %84 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @add_outer_distances(%struct.data_dependence_relation* %84, i32 %85, i32 %86)
  %88 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @add_outer_distances(%struct.data_dependence_relation* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %83, %58
  br label %136

93:                                               ; preds = %52
  %94 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %95 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %94)
  %96 = call i32 @lambda_vector_new(i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %100 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %99)
  %101 = call i32 @lambda_vector_copy(i32 %97, i32 %98, i32 %100)
  %102 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @save_dist_v(%struct.data_dependence_relation* %102, i32 %103)
  %105 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %106 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %105)
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %135

108:                                              ; preds = %93
  %109 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %110 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %109)
  %111 = call i32 @lambda_vector_new(i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %113 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %114 = call i32 @DDR_B(%struct.data_dependence_relation* %113)
  %115 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %116 = call i32 @DDR_A(%struct.data_dependence_relation* %115)
  %117 = call i32 @subscript_dependence_tester_1(%struct.data_dependence_relation* %112, i32 %114, i32 %116)
  %118 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %119 = call i32 @compute_subscript_distance(%struct.data_dependence_relation* %118)
  %120 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %121 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %122 = call i32 @DDR_B(%struct.data_dependence_relation* %121)
  %123 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %124 = call i32 @DDR_A(%struct.data_dependence_relation* %123)
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @build_classic_dist_vector_1(%struct.data_dependence_relation* %120, i32 %122, i32 %124, i32 %125, i32* %4, i32* %5)
  %127 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @add_outer_distances(%struct.data_dependence_relation* %127, i32 %128, i32 %129)
  %131 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @add_outer_distances(%struct.data_dependence_relation* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %108, %93
  br label %136

136:                                              ; preds = %135, %92
  br label %145

137:                                              ; preds = %49
  %138 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %142 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %141)
  %143 = call i32 @lambda_vector_first_nz(i32 %140, i32 %142, i32 0)
  %144 = call i32 @add_outer_distances(%struct.data_dependence_relation* %138, i32 %139, i32 %143)
  br label %145

145:                                              ; preds = %137, %136
  %146 = load i64, i64* @dump_file, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %179

148:                                              ; preds = %145
  %149 = load i32, i32* @dump_flags, align 4
  %150 = load i32, i32* @TDF_DETAILS, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %179

153:                                              ; preds = %148
  %154 = load i64, i64* @dump_file, align 8
  %155 = call i32 @fprintf(i64 %154, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %156

156:                                              ; preds = %173, %153
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %159 = call i32 @DDR_NUM_DIST_VECTS(%struct.data_dependence_relation* %158)
  %160 = icmp ult i32 %157, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %156
  %162 = load i64, i64* @dump_file, align 8
  %163 = call i32 @fprintf(i64 %162, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %164 = load i64, i64* @dump_file, align 8
  %165 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @DDR_DIST_VECT(%struct.data_dependence_relation* %165, i32 %166)
  %168 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %3, align 8
  %169 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %168)
  %170 = call i32 @print_lambda_vector(i64 %164, i32 %167, i32 %169)
  %171 = load i64, i64* @dump_file, align 8
  %172 = call i32 @fprintf(i64 %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %173

173:                                              ; preds = %161
  %174 = load i32, i32* %10, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %156

176:                                              ; preds = %156
  %177 = load i64, i64* @dump_file, align 8
  %178 = call i32 @fprintf(i64 %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %148, %145
  store i32 1, i32* %2, align 4
  br label %180

180:                                              ; preds = %179, %48, %35, %17
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @DDR_NB_LOOPS(%struct.data_dependence_relation*) #1

declare dso_local i64 @DDR_ARE_DEPENDENT(%struct.data_dependence_relation*) #1

declare dso_local i64 @same_access_functions(%struct.data_dependence_relation*) #1

declare dso_local i32 @lambda_vector_new(i32) #1

declare dso_local i32 @save_dist_v(%struct.data_dependence_relation*, i32) #1

declare dso_local i32 @add_other_self_distances(%struct.data_dependence_relation*) #1

declare dso_local i32 @build_classic_dist_vector_1(%struct.data_dependence_relation*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @DDR_A(%struct.data_dependence_relation*) #1

declare dso_local i32 @DDR_B(%struct.data_dependence_relation*) #1

declare dso_local i32 @lambda_vector_lexico_pos(i32, i32) #1

declare dso_local i32 @subscript_dependence_tester_1(%struct.data_dependence_relation*, i32, i32) #1

declare dso_local i32 @compute_subscript_distance(%struct.data_dependence_relation*) #1

declare dso_local i32 @add_outer_distances(%struct.data_dependence_relation*, i32, i32) #1

declare dso_local i32 @lambda_vector_copy(i32, i32, i32) #1

declare dso_local i32 @lambda_vector_first_nz(i32, i32, i32) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @DDR_NUM_DIST_VECTS(%struct.data_dependence_relation*) #1

declare dso_local i32 @print_lambda_vector(i64, i32, i32) #1

declare dso_local i32 @DDR_DIST_VECT(%struct.data_dependence_relation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
