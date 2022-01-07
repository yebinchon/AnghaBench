; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_parameter_type_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_parameter_type_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@pp_c_flag_abstract = common dso_local global i32 0, align 4
@void_list_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_c_parameter_type_list(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @DECL_P(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @pp_c_flag_abstract, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %11, %2
  %20 = phi i1 [ false, %2 ], [ %18, %11 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @DECL_ARGUMENTS(i64 %25)
  br label %30

27:                                               ; preds = %19
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @TYPE_ARG_TYPES(i64 %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i64 [ %26, %24 ], [ %29, %27 ]
  store i64 %31, i64* %6, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = call i32 @pp_c_left_paren(%struct.TYPE_10__* %32)
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @void_list_node, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = call i32 @pp_c_identifier(%struct.TYPE_10__* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %84

40:                                               ; preds = %30
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %80, %40
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @void_list_node, align 8
  %47 = icmp ne i64 %45, %46
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %50, label %83

50:                                               ; preds = %48
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = call i32 @pp_separate_with(%struct.TYPE_10__* %54, i8 signext 44)
  br label %56

56:                                               ; preds = %53, %50
  store i32 0, i32* %7, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* %6, align 8
  br label %65

62:                                               ; preds = %56
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @TREE_VALUE(i64 %63)
  br label %65

65:                                               ; preds = %62, %60
  %66 = phi i64 [ %61, %60 ], [ %64, %62 ]
  %67 = call i32 @pp_declaration_specifiers(%struct.TYPE_10__* %57, i64 %66)
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @pp_declarator(%struct.TYPE_10__* %71, i64 %72)
  br label %79

74:                                               ; preds = %65
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @TREE_VALUE(i64 %76)
  %78 = call i32 @pp_abstract_declarator(%struct.TYPE_10__* %75, i64 %77)
  br label %79

79:                                               ; preds = %74, %70
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @TREE_CHAIN(i64 %81)
  store i64 %82, i64* %6, align 8
  br label %41

83:                                               ; preds = %48
  br label %84

84:                                               ; preds = %83, %37
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = call i32 @pp_c_right_paren(%struct.TYPE_10__* %85)
  ret void
}

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @DECL_ARGUMENTS(i64) #1

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i32 @pp_c_left_paren(%struct.TYPE_10__*) #1

declare dso_local i32 @pp_c_identifier(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @pp_separate_with(%struct.TYPE_10__*, i8 signext) #1

declare dso_local i32 @pp_declaration_specifiers(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @pp_declarator(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @pp_abstract_declarator(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @pp_c_right_paren(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
