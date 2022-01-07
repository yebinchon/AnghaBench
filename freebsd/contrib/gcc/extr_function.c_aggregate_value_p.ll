; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_aggregate_value_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_aggregate_value_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i64, i64)* }

@NULL_TREE = common dso_local global i64 0, align 8
@VOID_TYPE = common dso_local global i64 0, align 8
@PARM_DECL = common dso_local global i32 0, align 4
@RESULT_DECL = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@flag_pcc_struct_return = common dso_local global i64 0, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8
@call_used_regs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aggregate_value_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @TYPE_P(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  br label %20

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @TREE_TYPE(i64 %18)
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i64 [ %16, %15 ], [ %19, %17 ]
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* @NULL_TREE, align 8
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @TREE_CODE(i64 %26)
  switch i32 %27, label %45 [
    i32 132, label %28
    i32 131, label %39
    i32 130, label %43
    i32 128, label %43
    i32 129, label %44
  ]

28:                                               ; preds = %25
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @get_callee_fndecl(i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @TREE_TYPE(i64 %34)
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i64 [ %35, %33 ], [ 0, %36 ]
  store i64 %38, i64* %5, align 8
  br label %47

39:                                               ; preds = %25
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @TREE_TYPE(i64 %41)
  store i64 %42, i64* %5, align 8
  br label %47

43:                                               ; preds = %25, %25
  br label %47

44:                                               ; preds = %25
  store i64 0, i64* %5, align 8
  br label %47

45:                                               ; preds = %25
  %46 = call i32 (...) @gcc_unreachable()
  br label %47

47:                                               ; preds = %45, %44, %43, %39, %37
  br label %48

48:                                               ; preds = %47, %20
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @TREE_CODE(i64 %49)
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @VOID_TYPE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %146

55:                                               ; preds = %48
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @TREE_CODE(i64 %56)
  %58 = load i32, i32* @PARM_DECL, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @TREE_CODE(i64 %61)
  %63 = load i32, i32* @RESULT_DECL, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60, %55
  %66 = load i64, i64* %4, align 8
  %67 = call i64 @DECL_BY_REFERENCE(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %146

70:                                               ; preds = %65, %60
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @TREE_CODE(i64 %71)
  %73 = icmp eq i32 %72, 132
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load i64, i64* %11, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i64, i64* %11, align 8
  %79 = call i64 @DECL_RESULT(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @DECL_RESULT(i64 %82)
  %84 = call i64 @DECL_BY_REFERENCE(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %146

87:                                               ; preds = %81, %77, %74, %70
  %88 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i64 %88(i64 %89, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 1, i32* %3, align 4
  br label %146

94:                                               ; preds = %87
  %95 = load i64, i64* %10, align 8
  %96 = call i64 @TREE_ADDRESSABLE(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 1, i32* %3, align 4
  br label %146

99:                                               ; preds = %94
  %100 = load i64, i64* @flag_pcc_struct_return, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i64, i64* %10, align 8
  %104 = call i64 @AGGREGATE_TYPE_P(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 1, i32* %3, align 4
  br label %146

107:                                              ; preds = %102, %99
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @hard_function_value(i64 %108, i32 0, i64 %109, i32 0)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @REG_P(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %146

115:                                              ; preds = %107
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @REGNO(i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32**, i32*** @hard_regno_nregs, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %10, align 8
  %124 = call i64 @TYPE_MODE(i64 %123)
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %142, %115
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %127
  %132 = load i32*, i32** @call_used_regs, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %131
  store i32 1, i32* %3, align 4
  br label %146

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %127

145:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %140, %114, %106, %98, %93, %86, %69, %54
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @get_callee_fndecl(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @DECL_BY_REFERENCE(i64) #1

declare dso_local i64 @DECL_RESULT(i64) #1

declare dso_local i64 @TREE_ADDRESSABLE(i64) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i64) #1

declare dso_local i32 @hard_function_value(i64, i32, i64, i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @TYPE_MODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
