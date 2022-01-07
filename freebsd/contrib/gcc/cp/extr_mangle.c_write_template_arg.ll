; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_template_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_template_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"template-arg\00", align 1
@TREE_LIST = common dso_local global i32 0, align 4
@NOP_EXPR = common dso_local global i64 0, align 8
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@G = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TEMPLATE_DECL = common dso_local global i32 0, align 4
@tcc_constant = common dso_local global i64 0, align 8
@PTRMEM_CST = common dso_local global i32 0, align 4
@CONST_DECL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"_Z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @write_template_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_template_arg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @TREE_CODE(i32 %4)
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @MANGLE_TRACE_TREE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @TREE_LIST, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @TREE_VALUE(i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @DECL_P(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @TREE_TYPE(i32 %19)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %12
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32, i32* %2, align 4
  %27 = call i64 @TREE_CODE(i32 %26)
  %28 = load i64, i64* @NOP_EXPR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @TREE_TYPE(i32 %31)
  %33 = call i64 @TREE_CODE(i32 %32)
  %34 = load i64, i64* @REFERENCE_TYPE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @TREE_OPERAND(i32 %37, i32 0)
  %39 = call i64 @TREE_CODE(i32 %38)
  %40 = load i64, i64* @ADDR_EXPR, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @gcc_assert(i32 %42)
  %44 = call i64 @abi_version_at_least(i32 2)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @TREE_OPERAND(i32 %47, i32 0)
  %49 = call i32 @TREE_OPERAND(i32 %48, i32 0)
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %36
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 4
  br label %51

51:                                               ; preds = %50, %46
  br label %52

52:                                               ; preds = %51, %30, %25
  %53 = load i32, i32* %2, align 4
  %54 = call i64 @TYPE_P(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @write_type(i32 %57)
  br label %117

59:                                               ; preds = %52
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @TEMPLATE_DECL, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @write_template_template_arg(i32 %64)
  br label %116

66:                                               ; preds = %59
  %67 = load i32, i32* %3, align 4
  %68 = call i64 @TREE_CODE_CLASS(i32 %67)
  %69 = load i64, i64* @tcc_constant, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @PTRMEM_CST, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %71, %66
  %76 = call i64 @abi_version_at_least(i32 2)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @CONST_DECL, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %71
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @write_template_arg_literal(i32 %83)
  br label %115

85:                                               ; preds = %78, %75
  %86 = load i32, i32* %2, align 4
  %87 = call i64 @DECL_P(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %85
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @CONST_DECL, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = call i64 @abi_version_at_least(i32 2)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 4
  br label %97

97:                                               ; preds = %96, %93, %89
  %98 = call i32 @write_char(i8 signext 76)
  %99 = call i64 @abi_version_at_least(i32 3)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 4
  %102 = call i32 @write_char(i8 signext 90)
  br label %105

103:                                              ; preds = %97
  %104 = call i32 @write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %101
  %106 = load i32, i32* %2, align 4
  %107 = call i32 @write_encoding(i32 %106)
  %108 = call i32 @write_char(i8 signext 69)
  br label %114

109:                                              ; preds = %85
  %110 = call i32 @write_char(i8 signext 88)
  %111 = load i32, i32* %2, align 4
  %112 = call i32 @write_expression(i32 %111)
  %113 = call i32 @write_char(i8 signext 69)
  br label %114

114:                                              ; preds = %109, %105
  br label %115

115:                                              ; preds = %114, %82
  br label %116

116:                                              ; preds = %115, %63
  br label %117

117:                                              ; preds = %116, %56
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @MANGLE_TRACE_TREE(i8*, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i64 @DECL_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @abi_version_at_least(i32) #1

declare dso_local i64 @TYPE_P(i32) #1

declare dso_local i32 @write_type(i32) #1

declare dso_local i32 @write_template_template_arg(i32) #1

declare dso_local i64 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @write_template_arg_literal(i32) #1

declare dso_local i32 @write_char(i8 signext) #1

declare dso_local i32 @write_string(i8*) #1

declare dso_local i32 @write_encoding(i32) #1

declare dso_local i32 @write_expression(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
