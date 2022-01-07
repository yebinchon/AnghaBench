; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_friend.c_is_friend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_friend.c_is_friend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@NAMESPACE_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_friend(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @NULL_TREE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @NULL_TREE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %156

22:                                               ; preds = %17
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @DECL_P(i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %22
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @TYPE_MAIN_DECL(i64 %28)
  %30 = call i64 @DECL_FRIENDLIST(i64 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @DECL_NAME(i64 %31)
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %71, %27
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %33
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @FRIEND_NAME(i64 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %36
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @FRIEND_DECLS(i64 %42)
  store i64 %43, i64* %11, align 8
  br label %44

44:                                               ; preds = %66, %41
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %44
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @TREE_VALUE(i64 %48)
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @NULL_TREE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %66

54:                                               ; preds = %47
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %156

59:                                               ; preds = %54
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i64 @is_specialization_of_friend(i64 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %156

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %53
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @TREE_CHAIN(i64 %67)
  store i64 %68, i64* %11, align 8
  br label %44

69:                                               ; preds = %44
  br label %74

70:                                               ; preds = %36
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @TREE_CHAIN(i64 %72)
  store i64 %73, i64* %9, align 8
  br label %33

74:                                               ; preds = %69, %33
  br label %113

75:                                               ; preds = %22
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %4, align 8
  %78 = call i64 @same_type_p(i64 %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 1, i32* %3, align 4
  br label %156

81:                                               ; preds = %75
  %82 = load i64, i64* %4, align 8
  %83 = call i64 @TYPE_MAIN_DECL(i64 %82)
  %84 = call i32 @TREE_TYPE(i64 %83)
  %85 = call i64 @CLASSTYPE_FRIEND_CLASSES(i32 %84)
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %109, %81
  %87 = load i64, i64* %7, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %86
  %90 = load i64, i64* %7, align 8
  %91 = call i64 @TREE_VALUE(i64 %90)
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i64 @TREE_CODE(i64 %92)
  %94 = load i64, i64* @TEMPLATE_DECL, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load i64, i64* %5, align 8
  %98 = call i64 @TYPE_MAIN_DECL(i64 %97)
  %99 = load i64, i64* %13, align 8
  %100 = call i64 @is_specialization_of_friend(i64 %98, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %107, label %108

102:                                              ; preds = %89
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* %13, align 8
  %105 = call i64 @same_type_p(i64 %103, i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102, %96
  store i32 1, i32* %3, align 4
  br label %156

108:                                              ; preds = %102, %96
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %7, align 8
  %111 = call i64 @TREE_CHAIN(i64 %110)
  store i64 %111, i64* %7, align 8
  br label %86

112:                                              ; preds = %86
  br label %113

113:                                              ; preds = %112, %74
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %113
  %117 = load i64, i64* %5, align 8
  %118 = call i64 @DECL_FUNCTION_MEMBER_P(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i64, i64* %5, align 8
  %122 = call i64 @DECL_CONTEXT(i64 %121)
  store i64 %122, i64* %8, align 8
  br label %125

123:                                              ; preds = %116
  %124 = load i64, i64* @NULL_TREE, align 8
  store i64 %124, i64* %8, align 8
  br label %125

125:                                              ; preds = %123, %120
  br label %138

126:                                              ; preds = %113
  %127 = load i64, i64* %5, align 8
  %128 = call i64 @TYPE_CLASS_SCOPE_P(i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i64, i64* %5, align 8
  %132 = call i64 @TYPE_CONTEXT(i64 %131)
  store i64 %132, i64* %8, align 8
  br label %137

133:                                              ; preds = %126
  %134 = load i64, i64* %5, align 8
  %135 = call i64 @TYPE_MAIN_DECL(i64 %134)
  %136 = call i64 @decl_function_context(i64 %135)
  store i64 %136, i64* %8, align 8
  br label %137

137:                                              ; preds = %133, %130
  br label %138

138:                                              ; preds = %137, %125
  %139 = load i64, i64* %8, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i64, i64* %8, align 8
  %143 = call i64 @TREE_CODE(i64 %142)
  %144 = load i64, i64* @NAMESPACE_DECL, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i64, i64* @NULL_TREE, align 8
  store i64 %147, i64* %8, align 8
  br label %148

148:                                              ; preds = %146, %141, %138
  %149 = load i64, i64* %8, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i64, i64* %4, align 8
  %153 = load i64, i64* %8, align 8
  %154 = call i32 @is_friend(i64 %152, i64 %153)
  store i32 %154, i32* %3, align 4
  br label %156

155:                                              ; preds = %148
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %151, %107, %80, %64, %58, %21
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @DECL_P(i64) #1

declare dso_local i64 @DECL_FRIENDLIST(i64) #1

declare dso_local i64 @TYPE_MAIN_DECL(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @FRIEND_NAME(i64) #1

declare dso_local i64 @FRIEND_DECLS(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @is_specialization_of_friend(i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @same_type_p(i64, i64) #1

declare dso_local i64 @CLASSTYPE_FRIEND_CLASSES(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_FUNCTION_MEMBER_P(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @TYPE_CLASS_SCOPE_P(i64) #1

declare dso_local i64 @TYPE_CONTEXT(i64) #1

declare dso_local i64 @decl_function_context(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
