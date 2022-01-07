; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_dump_data_dependence_relation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_dump_data_dependence_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_dependence_relation = type { i32 }
%struct.data_reference = type { i32 }
%struct.loop = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"(Data Dep: \0A\00", align 1
@chrec_dont_know = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"    (don't know)\0A\00", align 1
@chrec_known = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"    (no dependence)\0A\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"  access_fn_A: \00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"  access_fn_B: \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"  loop nest: (\00", align 1
@loop_p = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"  distance_vector: \00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"  direction_vector: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_data_dependence_relation(i32* %0, %struct.data_dependence_relation* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.data_dependence_relation*, align 8
  %5 = alloca %struct.data_reference*, align 8
  %6 = alloca %struct.data_reference*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.loop*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.data_dependence_relation* %1, %struct.data_dependence_relation** %4, align 8
  %9 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %4, align 8
  %10 = call %struct.data_reference* @DDR_A(%struct.data_dependence_relation* %9)
  store %struct.data_reference* %10, %struct.data_reference** %5, align 8
  %11 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %4, align 8
  %12 = call %struct.data_reference* @DDR_B(%struct.data_dependence_relation* %11)
  store %struct.data_reference* %12, %struct.data_reference** %6, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %4, align 8
  %16 = call i64 @DDR_ARE_DEPENDENT(%struct.data_dependence_relation* %15)
  %17 = load i64, i64* @chrec_dont_know, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %127

22:                                               ; preds = %2
  %23 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %4, align 8
  %24 = call i64 @DDR_ARE_DEPENDENT(%struct.data_dependence_relation* %23)
  %25 = load i64, i64* @chrec_known, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %126

30:                                               ; preds = %22
  %31 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %4, align 8
  %32 = call i64 @DDR_ARE_DEPENDENT(%struct.data_dependence_relation* %31)
  %33 = load i64, i64* @NULL_TREE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %125

35:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %61, %35
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %4, align 8
  %39 = call i32 @DDR_NUM_SUBSCRIPTS(%struct.data_dependence_relation* %38)
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %36
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @DR_ACCESS_FN(%struct.data_reference* %45, i32 %46)
  %48 = call i32 @print_generic_stmt(i32* %44, i32 %47, i32 0)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @DR_ACCESS_FN(%struct.data_reference* %52, i32 %53)
  %55 = call i32 @print_generic_stmt(i32* %51, i32 %54, i32 0)
  %56 = load i32*, i32** %3, align 8
  %57 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @DDR_SUBSCRIPT(%struct.data_dependence_relation* %57, i32 %58)
  %60 = call i32 @dump_subscript(i32* %56, i32 %59)
  br label %61

61:                                               ; preds = %41
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %36

64:                                               ; preds = %36
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %81, %64
  %68 = load i32, i32* @loop_p, align 4
  %69 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %4, align 8
  %70 = call i32 @DDR_LOOP_NEST(%struct.data_dependence_relation* %69)
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.loop*, %struct.loop** %8, align 8
  %73 = call i64 @VEC_iterate(i32 %68, i32 %70, i32 %71, %struct.loop* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %67
  %76 = load i32*, i32** %3, align 8
  %77 = load %struct.loop*, %struct.loop** %8, align 8
  %78 = getelementptr inbounds %struct.loop, %struct.loop* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %67

84:                                               ; preds = %67
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %102, %84
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %4, align 8
  %90 = call i32 @DDR_NUM_DIST_VECTS(%struct.data_dependence_relation* %89)
  %91 = icmp ult i32 %88, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 (i32*, i8*, ...) @fprintf(i32* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %95 = load i32*, i32** %3, align 8
  %96 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @DDR_DIST_VECT(%struct.data_dependence_relation* %96, i32 %97)
  %99 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %4, align 8
  %100 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %99)
  %101 = call i32 @print_lambda_vector(i32* %95, i32 %98, i32 %100)
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %87

105:                                              ; preds = %87
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %121, %105
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %4, align 8
  %109 = call i32 @DDR_NUM_DIR_VECTS(%struct.data_dependence_relation* %108)
  %110 = icmp ult i32 %107, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %106
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %114 = load i32*, i32** %3, align 8
  %115 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %4, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @DDR_DIR_VECT(%struct.data_dependence_relation* %115, i32 %116)
  %118 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %4, align 8
  %119 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %118)
  %120 = call i32 @print_direction_vector(i32* %114, i32 %117, i32 %119)
  br label %121

121:                                              ; preds = %111
  %122 = load i32, i32* %7, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %106

124:                                              ; preds = %106
  br label %125

125:                                              ; preds = %124, %30
  br label %126

126:                                              ; preds = %125, %27
  br label %127

127:                                              ; preds = %126, %19
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 (i32*, i8*, ...) @fprintf(i32* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local %struct.data_reference* @DDR_A(%struct.data_dependence_relation*) #1

declare dso_local %struct.data_reference* @DDR_B(%struct.data_dependence_relation*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @DDR_ARE_DEPENDENT(%struct.data_dependence_relation*) #1

declare dso_local i32 @DDR_NUM_SUBSCRIPTS(%struct.data_dependence_relation*) #1

declare dso_local i32 @print_generic_stmt(i32*, i32, i32) #1

declare dso_local i32 @DR_ACCESS_FN(%struct.data_reference*, i32) #1

declare dso_local i32 @dump_subscript(i32*, i32) #1

declare dso_local i32 @DDR_SUBSCRIPT(%struct.data_dependence_relation*, i32) #1

declare dso_local i64 @VEC_iterate(i32, i32, i32, %struct.loop*) #1

declare dso_local i32 @DDR_LOOP_NEST(%struct.data_dependence_relation*) #1

declare dso_local i32 @DDR_NUM_DIST_VECTS(%struct.data_dependence_relation*) #1

declare dso_local i32 @print_lambda_vector(i32*, i32, i32) #1

declare dso_local i32 @DDR_DIST_VECT(%struct.data_dependence_relation*, i32) #1

declare dso_local i32 @DDR_NB_LOOPS(%struct.data_dependence_relation*) #1

declare dso_local i32 @DDR_NUM_DIR_VECTS(%struct.data_dependence_relation*) #1

declare dso_local i32 @print_direction_vector(i32*, i32, i32) #1

declare dso_local i32 @DDR_DIR_VECT(%struct.data_dependence_relation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
