; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-unswitch.c_tree_unswitch_single_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-unswitch.c_tree_unswitch_single_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32 }
%struct.loop = type { i32, i64 }

@NULL_TREE = common dso_local global i32 0, align 4
@PARAM_MAX_UNSWITCH_LEVEL = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c";; Not unswitching anymore, hit max level\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c";; Not unswitching, not innermost loop\0A\00", align 1
@PARAM_MAX_UNSWITCH_INSNS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c";; Not unswitching, loop too big\0A\00", align 1
@boolean_true_node = common dso_local global i32 0, align 4
@boolean_false_node = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c";; Unswitching loop\0A\00", align 1
@TODO_update_ssa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loops*, %struct.loop*, i32)* @tree_unswitch_single_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_unswitch_single_loop(%struct.loops* %0, %struct.loop* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.loops*, align 8
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.loop*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.loops* %0, %struct.loops** %5, align 8
  store %struct.loop* %1, %struct.loop** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @NULL_TREE, align 4
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @PARAM_MAX_UNSWITCH_LEVEL, align 4
  %19 = call i32 @PARAM_VALUE(i32 %18)
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load i64, i64* @dump_file, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* @dump_flags, align 4
  %26 = load i32, i32* @TDF_DETAILS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* @dump_file, align 8
  %31 = call i32 @fprintf(i64 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %24, %21
  store i32 0, i32* %4, align 4
  br label %175

33:                                               ; preds = %3
  %34 = load %struct.loop*, %struct.loop** %6, align 8
  %35 = getelementptr inbounds %struct.loop, %struct.loop* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i64, i64* @dump_file, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* @dump_flags, align 4
  %43 = load i32, i32* @TDF_DETAILS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i64, i64* @dump_file, align 8
  %48 = call i32 @fprintf(i64 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %41, %38
  store i32 0, i32* %4, align 4
  br label %175

50:                                               ; preds = %33
  %51 = load %struct.loop*, %struct.loop** %6, align 8
  %52 = call i32 @tree_num_loop_insns(%struct.loop* %51)
  %53 = load i32, i32* @PARAM_MAX_UNSWITCH_INSNS, align 4
  %54 = call i32 @PARAM_VALUE(i32 %53)
  %55 = icmp ugt i32 %52, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load i64, i64* @dump_file, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* @dump_flags, align 4
  %61 = load i32, i32* @TDF_DETAILS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i64, i64* @dump_file, align 8
  %66 = call i32 @fprintf(i64 %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59, %56
  store i32 0, i32* %4, align 4
  br label %175

68:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  %69 = load %struct.loop*, %struct.loop** %6, align 8
  %70 = call i32* @get_loop_body(%struct.loop* %69)
  store i32* %70, i32** %8, align 8
  br label %71

71:                                               ; preds = %68, %125
  br label %72

72:                                               ; preds = %89, %71
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.loop*, %struct.loop** %6, align 8
  %75 = getelementptr inbounds %struct.loop, %struct.loop* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ult i32 %73, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.loop*, %struct.loop** %6, align 8
  %85 = call i32 @tree_may_unswitch_on(i32 %83, %struct.loop* %84)
  store i32 %85, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %92

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %72

92:                                               ; preds = %87, %72
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.loop*, %struct.loop** %6, align 8
  %95 = getelementptr inbounds %struct.loop, %struct.loop* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @free(i32* %99)
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %4, align 4
  br label %175

102:                                              ; preds = %92
  %103 = load %struct.loop*, %struct.loop** %6, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @simplify_using_entry_checks(%struct.loop* %103, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %10, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @last_stmt(i32 %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i64 @integer_nonzerop(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %102
  %116 = load i32, i32* @boolean_true_node, align 4
  store i32 %116, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %125

117:                                              ; preds = %102
  %118 = load i32, i32* %11, align 4
  %119 = call i64 @integer_zerop(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @boolean_false_node, align 4
  store i32 %122, i32* %15, align 4
  store i32 1, i32* %13, align 4
  br label %124

123:                                              ; preds = %117
  br label %130

124:                                              ; preds = %121
  br label %125

125:                                              ; preds = %124, %115
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @update_stmt(i32 %126)
  %128 = load i32, i32* %10, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %71

130:                                              ; preds = %123
  %131 = load i64, i64* @dump_file, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load i32, i32* @dump_flags, align 4
  %135 = load i32, i32* @TDF_DETAILS, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i64, i64* @dump_file, align 8
  %140 = call i32 @fprintf(i64 %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %141

141:                                              ; preds = %138, %133, %130
  %142 = call i32 (...) @initialize_original_copy_tables()
  %143 = load %struct.loops*, %struct.loops** %5, align 8
  %144 = load %struct.loop*, %struct.loop** %6, align 8
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %10, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %11, align 4
  %151 = call %struct.loop* @tree_unswitch_loop(%struct.loops* %143, %struct.loop* %144, i32 %149, i32 %150)
  store %struct.loop* %151, %struct.loop** %9, align 8
  %152 = load %struct.loop*, %struct.loop** %9, align 8
  %153 = icmp ne %struct.loop* %152, null
  br i1 %153, label %159, label %154

154:                                              ; preds = %141
  %155 = call i32 (...) @free_original_copy_tables()
  %156 = load i32*, i32** %8, align 8
  %157 = call i32 @free(i32* %156)
  %158 = load i32, i32* %13, align 4
  store i32 %158, i32* %4, align 4
  br label %175

159:                                              ; preds = %141
  %160 = load i32, i32* @TODO_update_ssa, align 4
  %161 = call i32 @update_ssa(i32 %160)
  %162 = call i32 (...) @free_original_copy_tables()
  %163 = load %struct.loops*, %struct.loops** %5, align 8
  %164 = load %struct.loop*, %struct.loop** %9, align 8
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  %167 = call i32 @tree_unswitch_single_loop(%struct.loops* %163, %struct.loop* %164, i32 %166)
  %168 = load %struct.loops*, %struct.loops** %5, align 8
  %169 = load %struct.loop*, %struct.loop** %6, align 8
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  %172 = call i32 @tree_unswitch_single_loop(%struct.loops* %168, %struct.loop* %169, i32 %171)
  %173 = load i32*, i32** %8, align 8
  %174 = call i32 @free(i32* %173)
  store i32 1, i32* %4, align 4
  br label %175

175:                                              ; preds = %159, %154, %98, %67, %49, %32
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @PARAM_VALUE(i32) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @tree_num_loop_insns(%struct.loop*) #1

declare dso_local i32* @get_loop_body(%struct.loop*) #1

declare dso_local i32 @tree_may_unswitch_on(i32, %struct.loop*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @simplify_using_entry_checks(%struct.loop*, i32) #1

declare dso_local i32 @last_stmt(i32) #1

declare dso_local i64 @integer_nonzerop(i32) #1

declare dso_local i64 @integer_zerop(i32) #1

declare dso_local i32 @update_stmt(i32) #1

declare dso_local i32 @initialize_original_copy_tables(...) #1

declare dso_local %struct.loop* @tree_unswitch_loop(%struct.loops*, %struct.loop*, i32, i32) #1

declare dso_local i32 @free_original_copy_tables(...) #1

declare dso_local i32 @update_ssa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
