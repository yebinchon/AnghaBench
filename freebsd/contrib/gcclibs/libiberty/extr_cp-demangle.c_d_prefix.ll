; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_QUAL_NAME = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TEMPLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_prefix(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  store %struct.demangle_component* null, %struct.demangle_component** %4, align 8
  br label %8

8:                                                ; preds = %1, %102
  %9 = load %struct.d_info*, %struct.d_info** %3, align 8
  %10 = call signext i8 @d_peek_char(%struct.d_info* %9)
  store i8 %10, i8* %5, align 1
  %11 = load i8, i8* %5, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %103

15:                                               ; preds = %8
  %16 = load i32, i32* @DEMANGLE_COMPONENT_QUAL_NAME, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i8, i8* %5, align 1
  %18 = call i64 @IS_DIGIT(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %15
  %21 = load i8, i8* %5, align 1
  %22 = call i64 @IS_LOWER(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = load i8, i8* %5, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 67
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load i8, i8* %5, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 68
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8, i8* %5, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 76
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %28, %24, %20, %15
  %37 = load %struct.d_info*, %struct.d_info** %3, align 8
  %38 = call %struct.demangle_component* @d_unqualified_name(%struct.d_info* %37)
  store %struct.demangle_component* %38, %struct.demangle_component** %7, align 8
  br label %75

39:                                               ; preds = %32
  %40 = load i8, i8* %5, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 83
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.d_info*, %struct.d_info** %3, align 8
  %45 = call %struct.demangle_component* @d_substitution(%struct.d_info* %44, i32 1)
  store %struct.demangle_component* %45, %struct.demangle_component** %7, align 8
  br label %74

46:                                               ; preds = %39
  %47 = load i8, i8* %5, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 73
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %52 = icmp eq %struct.demangle_component* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %103

54:                                               ; preds = %50
  %55 = load i32, i32* @DEMANGLE_COMPONENT_TEMPLATE, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.d_info*, %struct.d_info** %3, align 8
  %57 = call %struct.demangle_component* @d_template_args(%struct.d_info* %56)
  store %struct.demangle_component* %57, %struct.demangle_component** %7, align 8
  br label %73

58:                                               ; preds = %46
  %59 = load i8, i8* %5, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 84
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.d_info*, %struct.d_info** %3, align 8
  %64 = call %struct.demangle_component* @d_template_param(%struct.d_info* %63)
  store %struct.demangle_component* %64, %struct.demangle_component** %7, align 8
  br label %72

65:                                               ; preds = %58
  %66 = load i8, i8* %5, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 69
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %70, %struct.demangle_component** %2, align 8
  br label %103

71:                                               ; preds = %65
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %103

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %54
  br label %74

74:                                               ; preds = %73, %43
  br label %75

75:                                               ; preds = %74, %36
  %76 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %77 = icmp eq %struct.demangle_component* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  store %struct.demangle_component* %79, %struct.demangle_component** %4, align 8
  br label %86

80:                                               ; preds = %75
  %81 = load %struct.d_info*, %struct.d_info** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %84 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %85 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %81, i32 %82, %struct.demangle_component* %83, %struct.demangle_component* %84)
  store %struct.demangle_component* %85, %struct.demangle_component** %4, align 8
  br label %86

86:                                               ; preds = %80, %78
  %87 = load i8, i8* %5, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 83
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load %struct.d_info*, %struct.d_info** %3, align 8
  %92 = call signext i8 @d_peek_char(%struct.d_info* %91)
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 69
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.d_info*, %struct.d_info** %3, align 8
  %97 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %98 = call i32 @d_add_substitution(%struct.d_info* %96, %struct.demangle_component* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %103

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %90, %86
  br label %8

103:                                              ; preds = %100, %71, %69, %53, %14
  %104 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %104
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i64 @IS_DIGIT(i8 signext) #1

declare dso_local i64 @IS_LOWER(i8 signext) #1

declare dso_local %struct.demangle_component* @d_unqualified_name(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_substitution(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_template_args(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_template_param(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*) #1

declare dso_local i32 @d_add_substitution(%struct.d_info*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
