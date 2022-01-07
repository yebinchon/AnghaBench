; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-reassoc.c_get_rank.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-reassoc.c_get_rank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@SSA_NAME = common dso_local global i64 0, align 8
@PARM_DECL = common dso_local global i64 0, align 8
@MODIFY_EXPR = common dso_local global i64 0, align 8
@SSA_OP_VIRTUAL_DEFS = common dso_local global i32 0, align 4
@bb_rank = common dso_local global i32* null, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Rank for \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @get_rank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rank(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @is_gimple_min_invariant(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %144

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @TREE_CODE(i64 %15)
  %17 = load i64, i64* @SSA_NAME, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %143

19:                                               ; preds = %14
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @SSA_NAME_VAR(i64 %20)
  %22 = call i64 @TREE_CODE(i64 %21)
  %23 = load i64, i64* @PARM_DECL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @SSA_NAME_VAR(i64 %27)
  %29 = call i64 @default_def(i64 %28)
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i64, i64* %3, align 8
  %33 = call %struct.TYPE_4__* @find_operand_rank(i64 %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %2, align 4
  br label %144

36:                                               ; preds = %25, %19
  %37 = load i64, i64* %3, align 8
  %38 = call i64 @SSA_NAME_DEF_STMT(i64 %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call %struct.TYPE_5__* @bb_for_stmt(i64 %39)
  %41 = icmp eq %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %144

43:                                               ; preds = %36
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @TREE_CODE(i64 %44)
  %46 = load i64, i64* @MODIFY_EXPR, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %5, align 8
  %50 = load i32, i32* @SSA_OP_VIRTUAL_DEFS, align 4
  %51 = call i32 @ZERO_SSA_OPERANDS(i64 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48, %43
  %54 = load i32*, i32** @bb_rank, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call %struct.TYPE_5__* @bb_for_stmt(i64 %55)
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %2, align 4
  br label %144

61:                                               ; preds = %48
  %62 = load i64, i64* %3, align 8
  %63 = call %struct.TYPE_4__* @find_operand_rank(i64 %62)
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %4, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %2, align 4
  br label %144

70:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  %71 = load i32*, i32** @bb_rank, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call %struct.TYPE_5__* @bb_for_stmt(i64 %72)
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @TREE_OPERAND(i64 %78, i32 1)
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @TREE_CODE(i64 %80)
  %82 = call i32 @TREE_CODE_LENGTH(i64 %81)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %70
  %85 = load i32, i32* %7, align 4
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @get_rank(i64 %86)
  %88 = call i32 @MAX(i32 %85, i32 %87)
  store i32 %88, i32* %7, align 4
  br label %118

89:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %114, %89
  %91 = load i32, i32* %9, align 4
  %92 = load i64, i64* %6, align 8
  %93 = call i64 @TREE_CODE(i64 %92)
  %94 = call i32 @TREE_CODE_LENGTH(i64 %93)
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load i64, i64* %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @TREE_OPERAND(i64 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %102, %103
  br label %105

105:                                              ; preds = %101, %96, %90
  %106 = phi i1 [ false, %96 ], [ false, %90 ], [ %104, %101 ]
  br i1 %106, label %107, label %117

107:                                              ; preds = %105
  %108 = load i32, i32* %7, align 4
  %109 = load i64, i64* %6, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i64 @TREE_OPERAND(i64 %109, i32 %110)
  %112 = call i32 @get_rank(i64 %111)
  %113 = call i32 @MAX(i32 %108, i32 %112)
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %90

117:                                              ; preds = %105
  br label %118

118:                                              ; preds = %117, %84
  %119 = load i64, i64* @dump_file, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %118
  %122 = load i32, i32* @dump_flags, align 4
  %123 = load i32, i32* @TDF_DETAILS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load i64, i64* @dump_file, align 8
  %128 = call i32 (i64, i8*, ...) @fprintf(i64 %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %129 = load i64, i64* @dump_file, align 8
  %130 = load i64, i64* %3, align 8
  %131 = call i32 @print_generic_expr(i64 %129, i64 %130, i32 0)
  %132 = load i64, i64* @dump_file, align 8
  %133 = load i32, i32* %7, align 4
  %134 = add i32 %133, 1
  %135 = call i32 (i64, i8*, ...) @fprintf(i64 %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %126, %121, %118
  %137 = load i64, i64* %3, align 8
  %138 = load i32, i32* %7, align 4
  %139 = add i32 %138, 1
  %140 = call i32 @insert_operand_rank(i64 %137, i32 %139)
  %141 = load i32, i32* %7, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %2, align 4
  br label %144

143:                                              ; preds = %14
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %136, %66, %53, %42, %31, %13
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i64 @is_gimple_min_invariant(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @SSA_NAME_VAR(i64) #1

declare dso_local i64 @default_def(i64) #1

declare dso_local %struct.TYPE_4__* @find_operand_rank(i64) #1

declare dso_local i64 @SSA_NAME_DEF_STMT(i64) #1

declare dso_local %struct.TYPE_5__* @bb_for_stmt(i64) #1

declare dso_local i32 @ZERO_SSA_OPERANDS(i64, i32) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @TREE_CODE_LENGTH(i64) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i64, i64, i32) #1

declare dso_local i32 @insert_operand_rank(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
