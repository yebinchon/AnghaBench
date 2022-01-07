; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_if_convertible_modify_expr_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_if_convertible_modify_expr_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i64 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"-------------------------\0A\00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@MOVE_IMPOSSIBLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"stmt is movable. Don't take risk\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"tree could trap...\0A\00", align 1
@CALL_EXPR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"CALL_EXPR \0A\00", align 1
@SSA_NAME = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"LHS is not var\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, i64, i32)* @if_convertible_modify_expr_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_convertible_modify_expr_p(%struct.loop* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* @dump_file, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load i32, i32* @dump_flags, align 4
  %12 = load i32, i32* @TDF_DETAILS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i64, i64* @dump_file, align 8
  %17 = call i32 @fprintf(i64 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @dump_file, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @TDF_SLIM, align 4
  %21 = call i32 @print_generic_stmt(i64 %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %15, %10, %3
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @movement_possibility(i32 %23)
  %25 = load i64, i64* @MOVE_IMPOSSIBLE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i64, i64* @dump_file, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* @dump_flags, align 4
  %32 = load i32, i32* @TDF_DETAILS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* @dump_file, align 8
  %37 = call i32 @fprintf(i64 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30, %27
  store i32 0, i32* %4, align 4
  br label %114

39:                                               ; preds = %22
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.loop*, %struct.loop** %5, align 8
  %42 = getelementptr inbounds %struct.loop, %struct.loop* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @TREE_OPERAND(i32 %46, i32 1)
  %48 = call i64 @tree_could_trap_p(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load i64, i64* @dump_file, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, i32* @dump_flags, align 4
  %55 = load i32, i32* @TDF_DETAILS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i64, i64* @dump_file, align 8
  %60 = call i32 @fprintf(i64 %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %53, %50
  store i32 0, i32* %4, align 4
  br label %114

62:                                               ; preds = %45, %39
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @TREE_OPERAND(i32 %63, i32 1)
  %65 = call i64 @TREE_CODE(i32 %64)
  %66 = load i64, i64* @CALL_EXPR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load i64, i64* @dump_file, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, i32* @dump_flags, align 4
  %73 = load i32, i32* @TDF_DETAILS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i64, i64* @dump_file, align 8
  %78 = call i32 @fprintf(i64 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %71, %68
  store i32 0, i32* %4, align 4
  br label %114

80:                                               ; preds = %62
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @TREE_OPERAND(i32 %81, i32 0)
  %83 = call i64 @TREE_CODE(i32 %82)
  %84 = load i64, i64* @SSA_NAME, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %113

86:                                               ; preds = %80
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.loop*, %struct.loop** %5, align 8
  %89 = getelementptr inbounds %struct.loop, %struct.loop* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %86
  %93 = load %struct.loop*, %struct.loop** %5, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @bb_with_exit_edge_p(%struct.loop* %93, i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %113, label %97

97:                                               ; preds = %92
  %98 = load i64, i64* @dump_file, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load i32, i32* @dump_flags, align 4
  %102 = load i32, i32* @TDF_DETAILS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load i64, i64* @dump_file, align 8
  %107 = call i32 @fprintf(i64 %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i64, i64* @dump_file, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @TDF_SLIM, align 4
  %111 = call i32 @print_generic_stmt(i64 %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %100, %97
  store i32 0, i32* %4, align 4
  br label %114

113:                                              ; preds = %92, %86, %80
  store i32 1, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %112, %79, %61, %38
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_generic_stmt(i64, i32, i32) #1

declare dso_local i64 @movement_possibility(i32) #1

declare dso_local i64 @tree_could_trap_p(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @bb_with_exit_edge_p(%struct.loop*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
