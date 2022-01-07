; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_type_specifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_type_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"<type-error>\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"<unnamed-unsigned:\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"<unnamed-signed:\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"<unnamed-float:\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"<typedef-error>\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"<tag-error>\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"<anonymous>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_c_type_specifier(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @TREE_CODE(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %122 [
    i32 135, label %10
    i32 134, label %13
    i32 128, label %17
    i32 137, label %17
    i32 133, label %17
    i32 132, label %17
    i32 130, label %74
    i32 129, label %86
    i32 131, label %86
    i32 136, label %86
  ]

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @pp_c_identifier(i32* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %126

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @pp_c_tree_decl_identifier(i32* %14, i32 %15)
  br label %126

17:                                               ; preds = %2, %2, %2, %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @TYPE_NAME(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @TYPE_NAME(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %4, align 4
  call void @pp_c_type_specifier(i32* %24, i32 %25)
  br label %73

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @TYPE_PRECISION(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @TYPE_MODE(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @TYPE_UNSIGNED(i32 %31)
  %33 = call i32 @c_common_type_for_mode(i32 %30, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @TYPE_NAME(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %26
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %4, align 4
  call void @pp_c_type_specifier(i32* %38, i32 %39)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @TYPE_PRECISION(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @pp_string(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @pp_decimal_int(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %37
  br label %72

51:                                               ; preds = %26
  %52 = load i32, i32* %5, align 4
  switch i32 %52, label %64 [
    i32 133, label %53
    i32 132, label %61
  ]

53:                                               ; preds = %51
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @TYPE_UNSIGNED(i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)
  %60 = call i32 @pp_string(i32* %54, i8* %59)
  br label %66

61:                                               ; preds = %51
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @pp_string(i32* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %66

64:                                               ; preds = %51
  %65 = call i32 (...) @gcc_unreachable()
  br label %66

66:                                               ; preds = %64, %61, %53
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @pp_decimal_int(i32* %67, i32 %68)
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @pp_string(i32* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %66, %50
  br label %73

73:                                               ; preds = %72, %21
  br label %126

74:                                               ; preds = %2
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @DECL_NAME(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @pp_id_expression(i32* %79, i32 %80)
  br label %85

82:                                               ; preds = %74
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @pp_c_identifier(i32* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %78
  br label %126

86:                                               ; preds = %2, %2, %2
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %87, 129
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @pp_c_identifier(i32* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %109

92:                                               ; preds = %86
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %93, 131
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @pp_c_identifier(i32* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %108

98:                                               ; preds = %92
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, 136
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @pp_c_identifier(i32* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %107

104:                                              ; preds = %98
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @pp_c_identifier(i32* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %95
  br label %109

109:                                              ; preds = %108, %89
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @TYPE_NAME(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32*, i32** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @TYPE_NAME(i32 %115)
  %117 = call i32 @pp_id_expression(i32* %114, i32 %116)
  br label %121

118:                                              ; preds = %109
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @pp_c_identifier(i32* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %113
  br label %126

122:                                              ; preds = %2
  %123 = load i32*, i32** %3, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @pp_unsupported_tree(i32* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %121, %85, %73, %13, %10
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_c_identifier(i32*, i8*) #1

declare dso_local i32 @pp_c_tree_decl_identifier(i32*, i32) #1

declare dso_local i32 @TYPE_NAME(i32) #1

declare dso_local i32 @TYPE_PRECISION(i32) #1

declare dso_local i32 @c_common_type_for_mode(i32, i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @pp_string(i32*, i8*) #1

declare dso_local i32 @pp_decimal_int(i32*, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @DECL_NAME(i32) #1

declare dso_local i32 @pp_id_expression(i32*, i32) #1

declare dso_local i32 @pp_unsupported_tree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
