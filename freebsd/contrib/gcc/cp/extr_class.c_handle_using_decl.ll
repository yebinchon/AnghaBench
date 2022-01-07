; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_handle_using_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_handle_using_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@access_private_node = common dso_local global i64 0, align 8
@access_protected_node = common dso_local global i64 0, align 8
@access_public_node = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%q+D invalid in %q#T\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"  because of local method %q+#D with same name\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"  because of local member %q+#D with same name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @handle_using_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_using_decl(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @USING_DECL_DECLS(i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @DECL_NAME(i64 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @TREE_PRIVATE(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @access_private_node, align 8
  br label %29

19:                                               ; preds = %2
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @TREE_PROTECTED(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @access_protected_node, align 8
  br label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @access_public_node, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  br label %29

29:                                               ; preds = %27, %17
  %30 = phi i64 [ %18, %17 ], [ %28, %27 ]
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* @NULL_TREE, align 8
  store i64 %31, i64* %8, align 8
  %32 = load i32, i32* @processing_template_decl, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi i1 [ false, %29 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @gcc_assert(i32 %39)
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @lookup_member(i64 %41, i64 %42, i32 0, i32 0)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %37
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @is_overloaded_fn(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @OVL_CURRENT(i64 %51)
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @DECL_P(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i64, i64* %9, align 8
  %59 = call i64 @DECL_CONTEXT(i64 %58)
  %60 = load i64, i64* %4, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %65

63:                                               ; preds = %57, %53
  %64 = load i64, i64* @NULL_TREE, align 8
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %63, %62
  br label %66

66:                                               ; preds = %65, %37
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @USING_DECL_SCOPE(i64 %68)
  %70 = call i32 @cp_emit_debug_info_for_using(i64 %67, i32 %69)
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @is_overloaded_fn(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i64, i64* %5, align 8
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %74, %66
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  br label %108

80:                                               ; preds = %76
  %81 = load i64, i64* %9, align 8
  %82 = call i64 @is_overloaded_fn(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %95

88:                                               ; preds = %84
  %89 = load i64, i64* %3, align 8
  %90 = load i64, i64* %4, align 8
  %91 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %89, i64 %90)
  %92 = load i64, i64* %9, align 8
  %93 = call i64 @OVL_CURRENT(i64 %92)
  %94 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %93)
  br label %135

95:                                               ; preds = %87
  br label %107

96:                                               ; preds = %80
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @DECL_ARTIFICIAL(i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = load i64, i64* %3, align 8
  %102 = load i64, i64* %4, align 8
  %103 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %101, i64 %102)
  %104 = load i64, i64* %9, align 8
  %105 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %104)
  br label %135

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %95
  br label %108

108:                                              ; preds = %107, %79
  %109 = load i64, i64* %8, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %126, %111
  %113 = load i64, i64* %8, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %112
  %116 = load i64, i64* %4, align 8
  %117 = load i64, i64* %8, align 8
  %118 = call i64 @OVL_CURRENT(i64 %117)
  %119 = load i64, i64* %3, align 8
  %120 = call i32 @add_method(i64 %116, i64 %118, i64 %119)
  %121 = load i64, i64* %4, align 8
  %122 = load i64, i64* %8, align 8
  %123 = call i64 @OVL_CURRENT(i64 %122)
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @alter_access(i64 %121, i64 %123, i64 %124)
  br label %126

126:                                              ; preds = %115
  %127 = load i64, i64* %8, align 8
  %128 = call i64 @OVL_NEXT(i64 %127)
  store i64 %128, i64* %8, align 8
  br label %112

129:                                              ; preds = %112
  br label %135

130:                                              ; preds = %108
  %131 = load i64, i64* %4, align 8
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @alter_access(i64 %131, i64 %132, i64 %133)
  br label %135

135:                                              ; preds = %88, %100, %130, %129
  ret void
}

declare dso_local i64 @USING_DECL_DECLS(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @TREE_PRIVATE(i64) #1

declare dso_local i64 @TREE_PROTECTED(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @lookup_member(i64, i64, i32, i32) #1

declare dso_local i64 @is_overloaded_fn(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i32 @cp_emit_debug_info_for_using(i64, i32) #1

declare dso_local i32 @USING_DECL_SCOPE(i64) #1

declare dso_local i32 @error(i8*, i64, ...) #1

declare dso_local i32 @DECL_ARTIFICIAL(i64) #1

declare dso_local i32 @add_method(i64, i64, i64) #1

declare dso_local i32 @alter_access(i64, i64, i64) #1

declare dso_local i64 @OVL_NEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
