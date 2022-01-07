; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_maint.c_match_bfd_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_maint.c_match_bfd_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC_ALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ALLOC\00", align 1
@SEC_LOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@SEC_RELOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"RELOC\00", align 1
@SEC_READONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"READONLY\00", align 1
@SEC_CODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"CODE\00", align 1
@SEC_DATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@SEC_ROM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"ROM\00", align 1
@SEC_CONSTRUCTOR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"CONSTRUCTOR\00", align 1
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"HAS_CONTENTS\00", align 1
@SEC_NEVER_LOAD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"NEVER_LOAD\00", align 1
@SEC_COFF_SHARED_LIBRARY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"COFF_SHARED_LIBRARY\00", align 1
@SEC_IS_COMMON = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"IS_COMMON\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @match_bfd_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_bfd_flags(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SEC_ALLOC, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @match_substring(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %138

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SEC_LOAD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @match_substring(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %138

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %16
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SEC_RELOC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @match_substring(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %138

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SEC_READONLY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = call i64 @match_substring(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %138

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %38
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SEC_CODE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i8*, i8** %4, align 8
  %56 = call i64 @match_substring(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %138

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SEC_DATA, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8
  %67 = call i64 @match_substring(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %138

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %60
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @SEC_ROM, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i8*, i8** %4, align 8
  %78 = call i64 @match_substring(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %138

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %71
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @SEC_CONSTRUCTOR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i8*, i8** %4, align 8
  %89 = call i64 @match_substring(i8* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 1, i32* %3, align 4
  br label %138

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %82
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i8*, i8** %4, align 8
  %100 = call i64 @match_substring(i8* %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 1, i32* %3, align 4
  br label %138

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %103, %93
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @SEC_NEVER_LOAD, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i8*, i8** %4, align 8
  %111 = call i64 @match_substring(i8* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %138

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %114, %104
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @SEC_COFF_SHARED_LIBRARY, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i8*, i8** %4, align 8
  %122 = call i64 @match_substring(i8* %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 1, i32* %3, align 4
  br label %138

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125, %115
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @SEC_IS_COMMON, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load i8*, i8** %4, align 8
  %133 = call i64 @match_substring(i8* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 1, i32* %3, align 4
  br label %138

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %136, %126
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %135, %124, %113, %102, %91, %80, %69, %58, %47, %36, %25, %14
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @match_substring(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
