; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa.c_verify_flow_sensitive_alias_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa.c_verify_flow_sensitive_alias_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.ptr_info_def = type { i64, i64, i32*, i64 }

@num_ssa_names = common dso_local global i64 0, align 8
@RESULT_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"dereferenced pointers should have a name or a symbol tag\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"pointers with a memory tag, should have points-to sets\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"pointer escapes but its name tag is not call-clobbered\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"verify_flow_sensitive_alias_info failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @verify_flow_sensitive_alias_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_flow_sensitive_alias_info() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.ptr_info_def*, align 8
  store i64 1, i64* %1, align 8
  br label %6

6:                                                ; preds = %100, %0
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @num_ssa_names, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %103

10:                                               ; preds = %6
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @ssa_name(i64 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %100

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @TREE_TYPE(i32 %17)
  %19 = call i32 @POINTER_TYPE_P(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @TREE_VISITED(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %16
  br label %100

26:                                               ; preds = %21
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @SSA_NAME_VAR(i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @TREE_CODE(i32 %29)
  %31 = load i64, i64* @RESULT_DECL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @is_gimple_reg(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %100

38:                                               ; preds = %33, %26
  %39 = load i32, i32* %2, align 4
  %40 = call %struct.ptr_info_def* @SSA_NAME_PTR_INFO(i32 %39)
  store %struct.ptr_info_def* %40, %struct.ptr_info_def** %5, align 8
  %41 = load %struct.ptr_info_def*, %struct.ptr_info_def** %5, align 8
  %42 = icmp eq %struct.ptr_info_def* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %100

44:                                               ; preds = %38
  %45 = load i32, i32* %3, align 4
  %46 = call %struct.TYPE_3__* @var_ann(i32 %45)
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %4, align 8
  %47 = load %struct.ptr_info_def*, %struct.ptr_info_def** %5, align 8
  %48 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load %struct.ptr_info_def*, %struct.ptr_info_def** %5, align 8
  %53 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = call i32 @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %104

63:                                               ; preds = %56, %51, %44
  %64 = load %struct.ptr_info_def*, %struct.ptr_info_def** %5, align 8
  %65 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load %struct.ptr_info_def*, %struct.ptr_info_def** %5, align 8
  %70 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load %struct.ptr_info_def*, %struct.ptr_info_def** %5, align 8
  %75 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = call i64 @bitmap_empty_p(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73, %68
  %80 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %104

81:                                               ; preds = %73, %63
  %82 = load %struct.ptr_info_def*, %struct.ptr_info_def** %5, align 8
  %83 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load %struct.ptr_info_def*, %struct.ptr_info_def** %5, align 8
  %88 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.ptr_info_def*, %struct.ptr_info_def** %5, align 8
  %93 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @is_call_clobbered(i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %104

99:                                               ; preds = %91, %86, %81
  br label %100

100:                                              ; preds = %99, %43, %37, %25, %15
  %101 = load i64, i64* %1, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %1, align 8
  br label %6

103:                                              ; preds = %6
  br label %108

104:                                              ; preds = %97, %79, %61
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @debug_variable(i32 %105)
  %107 = call i32 @internal_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %104, %103
  ret void
}

declare dso_local i32 @ssa_name(i64) #1

declare dso_local i32 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_VISITED(i32) #1

declare dso_local i32 @SSA_NAME_VAR(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @is_gimple_reg(i32) #1

declare dso_local %struct.ptr_info_def* @SSA_NAME_PTR_INFO(i32) #1

declare dso_local %struct.TYPE_3__* @var_ann(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @bitmap_empty_p(i32*) #1

declare dso_local i32 @is_call_clobbered(i64) #1

declare dso_local i32 @debug_variable(i32) #1

declare dso_local i32 @internal_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
