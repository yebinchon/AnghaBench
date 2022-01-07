; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_check_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_check_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32 }

@AVAIL_NOT_AVAILABLE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i64 0, align 8
@FULL_ESCAPE = common dso_local global i32 0, align 4
@AVAIL_OVERWRITABLE = common dso_local global i32 0, align 4
@EXPOSED_PARAMETER = common dso_local global i32 0, align 4
@ECF_MALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @check_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_call(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cgraph_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @call_expr_flags(i64 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i64, i64* %2, align 8
  %19 = call i64 @TREE_OPERAND(i64 %18, i32 1)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %2, align 8
  %21 = call i64 @get_callee_fndecl(i64 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i32, i32* @AVAIL_NOT_AVAILABLE, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %33, %1
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @NULL_TREE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @TREE_VALUE(i64 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @check_rhs_var(i64 %31)
  br label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @TREE_CHAIN(i64 %34)
  store i64 %35, i64* %5, align 8
  br label %24

36:                                               ; preds = %24
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %135

39:                                               ; preds = %36
  store i64 0, i64* %12, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call %struct.cgraph_node* @cgraph_node(i64 %40)
  store %struct.cgraph_node* %41, %struct.cgraph_node** %8, align 8
  %42 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  %43 = call i32 @cgraph_function_body_availability(%struct.cgraph_node* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @TREE_TYPE(i64 %44)
  %46 = call i64 @TYPE_ARG_TYPES(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %39
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @TREE_TYPE(i64 %50)
  %52 = call i64 @TYPE_ARG_TYPES(i64 %51)
  store i64 %52, i64* %11, align 8
  br label %53

53:                                               ; preds = %78, %48
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64, i64* %11, align 8
  %58 = call i64 @TREE_VALUE(i64 %57)
  %59 = load i64, i64* @void_type_node, align 8
  %60 = icmp ne i64 %58, %59
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i1 [ false, %53 ], [ %60, %56 ]
  br i1 %62, label %63, label %81

63:                                               ; preds = %61
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i64, i64* %5, align 8
  %68 = call i64 @TREE_VALUE(i64 %67)
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i64 @TREE_VALUE(i64 %69)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @check_cast(i64 %71, i64 %72)
  %74 = load i64, i64* %5, align 8
  %75 = call i64 @TREE_CHAIN(i64 %74)
  store i64 %75, i64* %5, align 8
  br label %77

76:                                               ; preds = %63
  br label %81

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %11, align 8
  %80 = call i64 @TREE_CHAIN(i64 %79)
  store i64 %80, i64* %11, align 8
  br label %53

81:                                               ; preds = %76, %61
  br label %108

82:                                               ; preds = %39
  %83 = load i64, i64* %4, align 8
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i64 @DECL_ARGUMENTS(i64 %84)
  store i64 %85, i64* %11, align 8
  br label %86

86:                                               ; preds = %104, %82
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %86
  %90 = load i64, i64* %5, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i64, i64* %5, align 8
  %94 = call i64 @TREE_VALUE(i64 %93)
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %11, align 8
  %96 = call i64 @TREE_TYPE(i64 %95)
  store i64 %96, i64* %12, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @check_cast(i64 %97, i64 %98)
  %100 = load i64, i64* %5, align 8
  %101 = call i64 @TREE_CHAIN(i64 %100)
  store i64 %101, i64* %5, align 8
  br label %103

102:                                              ; preds = %89
  br label %107

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %11, align 8
  %106 = call i64 @TREE_CHAIN(i64 %105)
  store i64 %106, i64* %11, align 8
  br label %86

107:                                              ; preds = %102, %86
  br label %108

108:                                              ; preds = %107, %81
  %109 = load i64, i64* %12, align 8
  store i64 %109, i64* %11, align 8
  br label %110

110:                                              ; preds = %131, %108
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* @NULL_TREE, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %110
  %115 = load i64, i64* %5, align 8
  %116 = call i64 @TREE_VALUE(i64 %115)
  store i64 %116, i64* %7, align 8
  %117 = load i64, i64* %11, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i32 @check_cast(i64 %120, i64 %121)
  br label %130

123:                                              ; preds = %114
  %124 = load i64, i64* %7, align 8
  %125 = call i64 @TREE_TYPE(i64 %124)
  %126 = call i64 @get_canon_type(i64 %125, i32 0, i32 0)
  store i64 %126, i64* %13, align 8
  %127 = load i64, i64* %13, align 8
  %128 = load i32, i32* @FULL_ESCAPE, align 4
  %129 = call i32 @mark_interesting_type(i64 %127, i32 %128)
  br label %130

130:                                              ; preds = %123, %119
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %5, align 8
  %133 = call i64 @TREE_CHAIN(i64 %132)
  store i64 %133, i64* %5, align 8
  br label %110

134:                                              ; preds = %110
  br label %135

135:                                              ; preds = %134, %36
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @AVAIL_NOT_AVAILABLE, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @AVAIL_OVERWRITABLE, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %172

143:                                              ; preds = %139, %135
  %144 = load i64, i64* %4, align 8
  store i64 %144, i64* %5, align 8
  br label %145

145:                                              ; preds = %157, %143
  %146 = load i64, i64* %5, align 8
  %147 = load i64, i64* @NULL_TREE, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %145
  %150 = load i64, i64* %5, align 8
  %151 = call i64 @TREE_VALUE(i64 %150)
  %152 = call i64 @TREE_TYPE(i64 %151)
  %153 = call i64 @get_canon_type(i64 %152, i32 0, i32 0)
  store i64 %153, i64* %14, align 8
  %154 = load i64, i64* %14, align 8
  %155 = load i32, i32* @EXPOSED_PARAMETER, align 4
  %156 = call i32 @mark_interesting_type(i64 %154, i32 %155)
  br label %157

157:                                              ; preds = %149
  %158 = load i64, i64* %5, align 8
  %159 = call i64 @TREE_CHAIN(i64 %158)
  store i64 %159, i64* %5, align 8
  br label %145

160:                                              ; preds = %145
  %161 = load i64, i64* %6, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load i64, i64* %6, align 8
  %165 = call i64 @TREE_TYPE(i64 %164)
  %166 = call i64 @TREE_TYPE(i64 %165)
  %167 = call i64 @get_canon_type(i64 %166, i32 0, i32 0)
  store i64 %167, i64* %15, align 8
  %168 = load i64, i64* %15, align 8
  %169 = load i32, i32* @EXPOSED_PARAMETER, align 4
  %170 = call i32 @mark_interesting_type(i64 %168, i32 %169)
  br label %171

171:                                              ; preds = %163, %160
  br label %172

172:                                              ; preds = %171, %139
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @ECF_MALLOC, align 4
  %175 = and i32 %173, %174
  ret i32 %175
}

declare dso_local i32 @call_expr_flags(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @get_callee_fndecl(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @check_rhs_var(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local %struct.cgraph_node* @cgraph_node(i64) #1

declare dso_local i32 @cgraph_function_body_availability(%struct.cgraph_node*) #1

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @check_cast(i64, i64) #1

declare dso_local i64 @DECL_ARGUMENTS(i64) #1

declare dso_local i64 @get_canon_type(i64, i32, i32) #1

declare dso_local i32 @mark_interesting_type(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
