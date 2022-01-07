; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_function_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_function_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cxx_pp = common dso_local global i32 0, align 4
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@TFF_PLAIN_IDENTIFIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dump_function_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_function_name(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @DECL_NAME(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @DECL_LANG_SPECIFIC(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @cxx_pp, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @pp_cxx_tree_identifier(i32 %12, i32 %13)
  br label %100

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @TEMPLATE_DECL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @DECL_TEMPLATE_RESULT(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @DECL_CONSTRUCTOR_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @DECL_DESTRUCTOR_P(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @DECL_CONTEXT(i32 %32)
  %34 = call i32 @constructor_name(i32 %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @DECL_DESTRUCTOR_P(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* @cxx_pp, align 4
  %41 = call i32 @pp_cxx_complement(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %44 = call i32 @dump_decl(i32 %42, i32 %43)
  br label %71

45:                                               ; preds = %35
  %46 = load i32, i32* %3, align 4
  %47 = call i64 @DECL_CONV_FN_P(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32, i32* @cxx_pp, align 4
  %51 = call i32 @pp_cxx_identifier(i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @TREE_TYPE(i32 %52)
  %54 = call i32 @TREE_TYPE(i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @dump_type(i32 %54, i32 %55)
  br label %70

57:                                               ; preds = %45
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @IDENTIFIER_OPNAME_P(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @cxx_pp, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @pp_cxx_tree_identifier(i32 %62, i32 %63)
  br label %69

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @dump_decl(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %49
  br label %71

71:                                               ; preds = %70, %39
  %72 = load i32, i32* %3, align 4
  %73 = call i64 @DECL_TEMPLATE_INFO(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @DECL_FRIEND_PSEUDO_TEMPLATE_INSTANTIATION(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @DECL_TI_TEMPLATE(i32 %80)
  %82 = call i64 @TREE_CODE(i32 %81)
  %83 = load i64, i64* @TEMPLATE_DECL, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @DECL_TI_TEMPLATE(i32 %86)
  %88 = call i64 @PRIMARY_TEMPLATE_P(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85, %79
  %91 = load i32, i32* %3, align 4
  %92 = call i64 @DECL_TEMPLATE_INFO(i32 %91)
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @DECL_USE_TEMPLATE(i32 %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @dump_template_parms(i64 %92, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %11, %90, %85, %75, %71
  ret void
}

declare dso_local i32 @DECL_NAME(i32) #1

declare dso_local i32 @DECL_LANG_SPECIFIC(i32) #1

declare dso_local i32 @pp_cxx_tree_identifier(i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @DECL_TEMPLATE_RESULT(i32) #1

declare dso_local i64 @DECL_CONSTRUCTOR_P(i32) #1

declare dso_local i64 @DECL_DESTRUCTOR_P(i32) #1

declare dso_local i32 @constructor_name(i32) #1

declare dso_local i32 @DECL_CONTEXT(i32) #1

declare dso_local i32 @pp_cxx_complement(i32) #1

declare dso_local i32 @dump_decl(i32, i32) #1

declare dso_local i64 @DECL_CONV_FN_P(i32) #1

declare dso_local i32 @pp_cxx_identifier(i32, i8*) #1

declare dso_local i32 @dump_type(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @IDENTIFIER_OPNAME_P(i32) #1

declare dso_local i64 @DECL_TEMPLATE_INFO(i32) #1

declare dso_local i32 @DECL_FRIEND_PSEUDO_TEMPLATE_INSTANTIATION(i32) #1

declare dso_local i32 @DECL_TI_TEMPLATE(i32) #1

declare dso_local i64 @PRIMARY_TEMPLATE_P(i32) #1

declare dso_local i32 @dump_template_parms(i64, i32, i32) #1

declare dso_local i32 @DECL_USE_TEMPLATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
