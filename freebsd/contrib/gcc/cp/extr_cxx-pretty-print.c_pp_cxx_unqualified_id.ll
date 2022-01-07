; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_unqualified_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_unqualified_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"<return-value>\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<unnamed>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pp_cxx_unqualified_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_unqualified_id(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @TREE_CODE(i32* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %86 [
    i32 138, label %9
    i32 141, label %12
    i32 128, label %15
    i32 140, label %15
    i32 148, label %15
    i32 132, label %15
    i32 145, label %15
    i32 142, label %15
    i32 146, label %15
    i32 143, label %15
    i32 129, label %15
    i32 137, label %15
    i32 144, label %18
    i32 136, label %53
    i32 149, label %57
    i32 139, label %61
    i32 130, label %61
    i32 147, label %61
    i32 133, label %65
    i32 134, label %65
    i32 135, label %78
    i32 131, label %82
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @pp_cxx_identifier(i32* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %90

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @OVL_CURRENT(i32* %13)
  store i32* %14, i32** %4, align 8
  br label %15

15:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %12
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @DECL_NAME(i32* %16)
  store i32* %17, i32** %4, align 8
  br label %18

18:                                               ; preds = %2, %15
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @pp_cxx_identifier(i32* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %52

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @IDENTIFIER_TYPENAME_P(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @pp_cxx_conversion_function_id(i32* %29, i32* %30)
  br label %51

32:                                               ; preds = %24
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @is_destructor_name(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @pp_complement(i32* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @TREE_TYPE(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @TREE_TYPE(i32* %43)
  %45 = call i32* @constructor_name(i32 %44)
  store i32* %45, i32** %4, align 8
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @pp_cxx_tree_identifier(i32* %48, i32* %49)
  br label %51

51:                                               ; preds = %47, %28
  br label %52

52:                                               ; preds = %51, %21
  br label %90

53:                                               ; preds = %2
  %54 = load i32*, i32** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @pp_cxx_template_id(i32* %54, i32* %55)
  br label %90

57:                                               ; preds = %2
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = call i32* @BASELINK_FUNCTIONS(i32* %59)
  call void @pp_cxx_unqualified_id(i32* %58, i32* %60)
  br label %90

61:                                               ; preds = %2, %2, %2
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = call i32* @TYPE_NAME(i32* %63)
  call void @pp_cxx_unqualified_id(i32* %62, i32* %64)
  br label %90

65:                                               ; preds = %2, %2
  %66 = load i32*, i32** %4, align 8
  %67 = call i32* @TYPE_IDENTIFIER(i32* %66)
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32*, i32** %3, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32* @TYPE_IDENTIFIER(i32* %71)
  call void @pp_cxx_unqualified_id(i32* %70, i32* %72)
  br label %77

73:                                               ; preds = %65
  %74 = load i32*, i32** %3, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @pp_cxx_canonical_template_parameter(i32* %74, i32* %75)
  br label %77

77:                                               ; preds = %73, %69
  br label %90

78:                                               ; preds = %2
  %79 = load i32*, i32** %3, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i32* @TEMPLATE_PARM_DECL(i32* %80)
  call void @pp_cxx_unqualified_id(i32* %79, i32* %81)
  br label %90

82:                                               ; preds = %2
  %83 = load i32*, i32** %3, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = call i32* @TYPE_NAME(i32* %84)
  call void @pp_cxx_unqualified_id(i32* %83, i32* %85)
  br label %90

86:                                               ; preds = %2
  %87 = load i32*, i32** %3, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @pp_unsupported_tree(i32* %87, i32* %88)
  br label %90

90:                                               ; preds = %86, %82, %78, %77, %61, %57, %53, %52, %9
  ret void
}

declare dso_local i32 @TREE_CODE(i32*) #1

declare dso_local i32 @pp_cxx_identifier(i32*, i8*) #1

declare dso_local i32* @OVL_CURRENT(i32*) #1

declare dso_local i32* @DECL_NAME(i32*) #1

declare dso_local i32 @IDENTIFIER_TYPENAME_P(i32*) #1

declare dso_local i32 @pp_cxx_conversion_function_id(i32*, i32*) #1

declare dso_local i32 @is_destructor_name(i32*) #1

declare dso_local i32 @pp_complement(i32*) #1

declare dso_local i32 @TREE_TYPE(i32*) #1

declare dso_local i32* @constructor_name(i32) #1

declare dso_local i32 @pp_cxx_tree_identifier(i32*, i32*) #1

declare dso_local i32 @pp_cxx_template_id(i32*, i32*) #1

declare dso_local i32* @BASELINK_FUNCTIONS(i32*) #1

declare dso_local i32* @TYPE_NAME(i32*) #1

declare dso_local i32* @TYPE_IDENTIFIER(i32*) #1

declare dso_local i32 @pp_cxx_canonical_template_parameter(i32*, i32*) #1

declare dso_local i32* @TEMPLATE_PARM_DECL(i32*) #1

declare dso_local i32 @pp_unsupported_tree(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
