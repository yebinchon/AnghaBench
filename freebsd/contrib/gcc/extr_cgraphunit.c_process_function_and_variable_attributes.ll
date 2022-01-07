; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_process_function_and_variable_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_process_function_and_variable_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.TYPE_2__, i32, %struct.cgraph_node* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.cgraph_varpool_node = type { i32, i64, i32, %struct.cgraph_varpool_node* }

@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"externally_visible\00", align 1
@OPT_Wattributes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"%J%<externally_visible%> attribute have effect only on public objects\00", align 1
@cgraph_varpool_nodes = common dso_local global %struct.cgraph_varpool_node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgraph_node*, %struct.cgraph_varpool_node*)* @process_function_and_variable_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_function_and_variable_attributes(%struct.cgraph_node* %0, %struct.cgraph_varpool_node* %1) #0 {
  %3 = alloca %struct.cgraph_node*, align 8
  %4 = alloca %struct.cgraph_varpool_node*, align 8
  %5 = alloca %struct.cgraph_node*, align 8
  %6 = alloca %struct.cgraph_varpool_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cgraph_node* %0, %struct.cgraph_node** %3, align 8
  store %struct.cgraph_varpool_node* %1, %struct.cgraph_varpool_node** %4, align 8
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %9, %struct.cgraph_node** %5, align 8
  br label %10

10:                                               ; preds = %66, %2
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %13 = icmp ne %struct.cgraph_node* %11, %12
  br i1 %13, label %14, label %70

14:                                               ; preds = %10
  %15 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @DECL_ATTRIBUTES(i32 %18)
  %20 = call i64 @lookup_attribute(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @mark_decl_referenced(i32 %23)
  %25 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %26 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %32 = call i32 @cgraph_mark_needed_node(%struct.cgraph_node* %31)
  br label %33

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %33, %14
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @DECL_ATTRIBUTES(i32 %35)
  %37 = call i64 @lookup_attribute(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %41 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @TREE_PUBLIC(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @OPT_Wattributes, align 4
  %47 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %48 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @warning(i32 %46, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %64

51:                                               ; preds = %39
  %52 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %53 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %59 = call i32 @cgraph_mark_needed_node(%struct.cgraph_node* %58)
  br label %60

60:                                               ; preds = %57, %51
  %61 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %62 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %45
  br label %65

65:                                               ; preds = %64, %34
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %68 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %67, i32 0, i32 2
  %69 = load %struct.cgraph_node*, %struct.cgraph_node** %68, align 8
  store %struct.cgraph_node* %69, %struct.cgraph_node** %5, align 8
  br label %10

70:                                               ; preds = %10
  %71 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** @cgraph_varpool_nodes, align 8
  store %struct.cgraph_varpool_node* %71, %struct.cgraph_varpool_node** %6, align 8
  br label %72

72:                                               ; preds = %125, %70
  %73 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %6, align 8
  %74 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %4, align 8
  %75 = icmp ne %struct.cgraph_varpool_node* %73, %74
  br i1 %75, label %76, label %129

76:                                               ; preds = %72
  %77 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %6, align 8
  %78 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @DECL_ATTRIBUTES(i32 %80)
  %82 = call i64 @lookup_attribute(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %76
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @mark_decl_referenced(i32 %85)
  %87 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %6, align 8
  %88 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %6, align 8
  %93 = call i32 @cgraph_varpool_mark_needed_node(%struct.cgraph_varpool_node* %92)
  br label %94

94:                                               ; preds = %91, %84
  br label %95

95:                                               ; preds = %94, %76
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @DECL_ATTRIBUTES(i32 %96)
  %98 = call i64 @lookup_attribute(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %95
  %101 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %6, align 8
  %102 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @TREE_PUBLIC(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* @OPT_Wattributes, align 4
  %108 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %6, align 8
  %109 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @warning(i32 %107, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %123

112:                                              ; preds = %100
  %113 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %6, align 8
  %114 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %6, align 8
  %119 = call i32 @cgraph_varpool_mark_needed_node(%struct.cgraph_varpool_node* %118)
  br label %120

120:                                              ; preds = %117, %112
  %121 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %6, align 8
  %122 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  br label %123

123:                                              ; preds = %120, %106
  br label %124

124:                                              ; preds = %123, %95
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %6, align 8
  %127 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %126, i32 0, i32 3
  %128 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %127, align 8
  store %struct.cgraph_varpool_node* %128, %struct.cgraph_varpool_node** %6, align 8
  br label %72

129:                                              ; preds = %72
  ret void
}

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @DECL_ATTRIBUTES(i32) #1

declare dso_local i32 @mark_decl_referenced(i32) #1

declare dso_local i32 @cgraph_mark_needed_node(%struct.cgraph_node*) #1

declare dso_local i32 @TREE_PUBLIC(i32) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

declare dso_local i32 @cgraph_varpool_mark_needed_node(%struct.cgraph_varpool_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
