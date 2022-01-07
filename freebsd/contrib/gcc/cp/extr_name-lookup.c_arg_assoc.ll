; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_arg_assoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_arg_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_lookup = type { i32 }

@error_mark_node = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@COMPONENT_REF = common dso_local global i64 0, align 8
@OFFSET_REF = common dso_local global i64 0, align 8
@TREE_LIST = common dso_local global i64 0, align 8
@BASELINK = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@TEMPLATE_ID_EXPR = common dso_local global i64 0, align 8
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@OVERLOAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arg_lookup*, i64)* @arg_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arg_assoc(%struct.arg_lookup* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arg_lookup*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.arg_lookup* %0, %struct.arg_lookup** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @error_mark_node, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %167

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @TYPE_P(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @arg_assoc_type(%struct.arg_lookup* %19, i64 %20)
  store i32 %21, i32* %3, align 4
  br label %167

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @type_unknown_p(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @TREE_TYPE(i64 %28)
  %30 = call i32 @arg_assoc_type(%struct.arg_lookup* %27, i64 %29)
  store i32 %30, i32* %3, align 4
  br label %167

31:                                               ; preds = %22
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @TREE_CODE(i64 %32)
  %34 = load i64, i64* @ADDR_EXPR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @TREE_OPERAND(i64 %37, i32 0)
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @TREE_CODE(i64 %40)
  %42 = load i64, i64* @COMPONENT_REF, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @TREE_OPERAND(i64 %45, i32 1)
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @TREE_CODE(i64 %48)
  %50 = load i64, i64* @OFFSET_REF, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @TREE_OPERAND(i64 %53, i32 1)
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %52, %47
  br label %56

56:                                               ; preds = %61, %55
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @TREE_CODE(i64 %57)
  %59 = load i64, i64* @TREE_LIST, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @TREE_VALUE(i64 %62)
  store i64 %63, i64* %5, align 8
  br label %56

64:                                               ; preds = %56
  %65 = load i64, i64* %5, align 8
  %66 = call i64 @TREE_CODE(i64 %65)
  %67 = load i64, i64* @BASELINK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @BASELINK_FUNCTIONS(i64 %70)
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i64, i64* %5, align 8
  %74 = call i64 @TREE_CODE(i64 %73)
  %75 = load i64, i64* @FUNCTION_DECL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i64 @TREE_TYPE(i64 %79)
  %81 = call i32 @arg_assoc_type(%struct.arg_lookup* %78, i64 %80)
  store i32 %81, i32* %3, align 4
  br label %167

82:                                               ; preds = %72
  %83 = load i64, i64* %5, align 8
  %84 = call i64 @TREE_CODE(i64 %83)
  %85 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %143

87:                                               ; preds = %82
  %88 = load i64, i64* %5, align 8
  %89 = call i64 @TREE_OPERAND(i64 %88, i32 0)
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i64 @TREE_OPERAND(i64 %90, i32 1)
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i64 @TREE_CODE(i64 %92)
  %94 = load i64, i64* @COMPONENT_REF, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i64, i64* %6, align 8
  %98 = call i64 @TREE_OPERAND(i64 %97, i32 1)
  store i64 %98, i64* %6, align 8
  br label %99

99:                                               ; preds = %96, %87
  %100 = load i64, i64* %6, align 8
  %101 = call i64 @OVL_CURRENT(i64 %100)
  store i64 %101, i64* %6, align 8
  %102 = load i64, i64* %6, align 8
  %103 = call i64 @CP_DECL_CONTEXT(i64 %102)
  store i64 %103, i64* %8, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i64 @TREE_CODE(i64 %104)
  %106 = load i64, i64* @NAMESPACE_DECL, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %99
  %109 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @arg_assoc_namespace(%struct.arg_lookup* %109, i64 %110)
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 1, i32* %3, align 4
  br label %167

114:                                              ; preds = %108
  br label %122

115:                                              ; preds = %99
  %116 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @arg_assoc_class(%struct.arg_lookup* %116, i64 %117)
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 1, i32* %3, align 4
  br label %167

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %114
  %123 = load i64, i64* %7, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %122
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @TREE_VEC_LENGTH(i64 %126)
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %140, %125
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %9, align 4
  %131 = icmp ne i32 %129, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %134 = load i64, i64* %7, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @TREE_VEC_ELT(i64 %134, i32 %135)
  %137 = call i32 @arg_assoc_template_arg(%struct.arg_lookup* %133, i32 %136)
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store i32 1, i32* %3, align 4
  br label %167

140:                                              ; preds = %132
  br label %128

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141, %122
  br label %166

143:                                              ; preds = %82
  %144 = load i64, i64* %5, align 8
  %145 = call i64 @TREE_CODE(i64 %144)
  %146 = load i64, i64* @OVERLOAD, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %165

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %161, %148
  %150 = load i64, i64* %5, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %149
  %153 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %154 = load i64, i64* %5, align 8
  %155 = call i64 @OVL_FUNCTION(i64 %154)
  %156 = call i64 @TREE_TYPE(i64 %155)
  %157 = call i32 @arg_assoc_type(%struct.arg_lookup* %153, i64 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  store i32 1, i32* %3, align 4
  br label %167

160:                                              ; preds = %152
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %5, align 8
  %163 = call i64 @OVL_CHAIN(i64 %162)
  store i64 %163, i64* %5, align 8
  br label %149

164:                                              ; preds = %149
  br label %165

165:                                              ; preds = %164, %143
  br label %166

166:                                              ; preds = %165, %142
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %159, %139, %120, %113, %77, %26, %18, %13
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i32 @arg_assoc_type(%struct.arg_lookup*, i64) #1

declare dso_local i32 @type_unknown_p(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @CP_DECL_CONTEXT(i64) #1

declare dso_local i32 @arg_assoc_namespace(%struct.arg_lookup*, i64) #1

declare dso_local i32 @arg_assoc_class(%struct.arg_lookup*, i64) #1

declare dso_local i32 @TREE_VEC_LENGTH(i64) #1

declare dso_local i32 @arg_assoc_template_arg(%struct.arg_lookup*, i32) #1

declare dso_local i32 @TREE_VEC_ELT(i64, i32) #1

declare dso_local i64 @OVL_FUNCTION(i64) #1

declare dso_local i64 @OVL_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
