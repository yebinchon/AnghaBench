; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_builtin_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_builtin_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wchar_type_node = common dso_local global i32 0, align 4
@itk_none = common dso_local global i64 0, align 8
@integer_types = common dso_local global i32* null, align 8
@integer_type_codes = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@float_type_node = common dso_local global i32 0, align 4
@java_float_type_node = common dso_local global i32 0, align 4
@double_type_node = common dso_local global i32 0, align 4
@java_double_type_node = common dso_local global i32 0, align 4
@long_double_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @write_builtin_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_builtin_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [11 x i8], align 1
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @TREE_CODE(i32 %7)
  switch i32 %8, label %139 [
    i32 128, label %9
    i32 131, label %11
    i32 130, label %13
    i32 129, label %108
  ]

9:                                                ; preds = %1
  %10 = call i32 @write_char(i8 signext 118)
  br label %141

11:                                               ; preds = %1
  %12 = call i32 @write_char(i8 signext 98)
  br label %141

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @TYPE_IS_SIZETYPE(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @TYPE_DOMAIN(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @wchar_type_node, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @write_char(i8 signext 119)
  br label %107

26:                                               ; preds = %20
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @TYPE_FOR_JAVA(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @write_java_integer_type_codes(i32 %31)
  br label %106

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %69, %33
  store i64 0, i64* %3, align 8
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @itk_none, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i32, i32* %2, align 4
  %41 = load i32*, i32** @integer_types, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %40, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i8*, i8** @integer_type_codes, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @write_char(i8 signext %50)
  br label %56

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %3, align 8
  br label %35

56:                                               ; preds = %46, %35
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @itk_none, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %105

60:                                               ; preds = %56
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @TYPE_MODE(i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @TYPE_UNSIGNED(i32 %63)
  %65 = call i32 @c_common_type_for_mode(i32 %62, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %34

71:                                               ; preds = %60
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @TYPE_PRECISION(i32 %72)
  %74 = icmp eq i32 %73, 128
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @TYPE_UNSIGNED(i32 %76)
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 111, i32 110
  %81 = trunc i32 %80 to i8
  %82 = call i32 @write_char(i8 signext %81)
  br label %104

83:                                               ; preds = %71
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @TYPE_UNSIGNED(i32 %84)
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  store i8* %88, i8** %5, align 8
  %89 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @TYPE_PRECISION(i32 %90)
  %92 = call i32 @sprintf(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = call i32 @write_char(i8 signext 117)
  %94 = load i8*, i8** %5, align 8
  %95 = call i64 @strlen(i8* %94)
  %96 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %97 = call i64 @strlen(i8* %96)
  %98 = add nsw i64 %95, %97
  %99 = call i32 @write_unsigned_number(i64 %98)
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 @write_string(i8* %100)
  %102 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %103 = call i32 @write_string(i8* %102)
  br label %104

104:                                              ; preds = %83, %75
  br label %105

105:                                              ; preds = %104, %56
  br label %106

106:                                              ; preds = %105, %30
  br label %107

107:                                              ; preds = %106, %24
  br label %141

108:                                              ; preds = %1
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* @float_type_node, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %2, align 4
  %114 = load i32, i32* @java_float_type_node, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112, %108
  %117 = call i32 @write_char(i8 signext 102)
  br label %138

118:                                              ; preds = %112
  %119 = load i32, i32* %2, align 4
  %120 = load i32, i32* @double_type_node, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %2, align 4
  %124 = load i32, i32* @java_double_type_node, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122, %118
  %127 = call i32 @write_char(i8 signext 100)
  br label %137

128:                                              ; preds = %122
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* @long_double_type_node, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call i32 @write_char(i8 signext 101)
  br label %136

134:                                              ; preds = %128
  %135 = call i32 (...) @gcc_unreachable()
  br label %136

136:                                              ; preds = %134, %132
  br label %137

137:                                              ; preds = %136, %126
  br label %138

138:                                              ; preds = %137, %116
  br label %141

139:                                              ; preds = %1
  %140 = call i32 (...) @gcc_unreachable()
  br label %141

141:                                              ; preds = %139, %138, %107, %11, %9
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @write_char(i8 signext) #1

declare dso_local i32 @TYPE_IS_SIZETYPE(i32) #1

declare dso_local i32 @TYPE_DOMAIN(i32) #1

declare dso_local i32 @TYPE_FOR_JAVA(i32) #1

declare dso_local i32 @write_java_integer_type_codes(i32) #1

declare dso_local i32 @c_common_type_for_mode(i32, i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @TYPE_PRECISION(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @write_unsigned_number(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @write_string(i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
