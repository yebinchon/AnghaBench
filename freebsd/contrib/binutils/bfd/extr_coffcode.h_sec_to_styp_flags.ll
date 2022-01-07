; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffcode.h_sec_to_styp_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffcode.h_sec_to_styp_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_TEXT = common dso_local global i32 0, align 4
@STYP_TEXT = common dso_local global i64 0, align 8
@_DATA = common dso_local global i32 0, align 4
@STYP_DATA = common dso_local global i64 0, align 8
@_BSS = common dso_local global i32 0, align 4
@STYP_BSS = common dso_local global i64 0, align 8
@DOT_DEBUG = common dso_local global i8* null, align 8
@STYP_XCOFF_DEBUG = common dso_local global i64 0, align 8
@STYP_DEBUG_INFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c".stab\00", align 1
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@GNU_LINKONCE_WI = common dso_local global i8* null, align 8
@SEC_COFF_SHARED_LIBRARY = common dso_local global i32 0, align 4
@SEC_NEVER_LOAD = common dso_local global i32 0, align 4
@SEC_TIC54X_BLOCK = common dso_local global i32 0, align 4
@SEC_TIC54X_CLINK = common dso_local global i32 0, align 4
@STYP_BLOCK = common dso_local global i64 0, align 8
@STYP_CLINK = common dso_local global i64 0, align 8
@STYP_EXCEPT = common dso_local global i64 0, align 8
@STYP_INFO = common dso_local global i64 0, align 8
@STYP_LIB = common dso_local global i64 0, align 8
@STYP_LIT = common dso_local global i64 0, align 8
@STYP_LOADER = common dso_local global i64 0, align 8
@STYP_NOLOAD = common dso_local global i64 0, align 8
@STYP_PAD = common dso_local global i64 0, align 8
@STYP_TYPCHK = common dso_local global i64 0, align 8
@_COMMENT = common dso_local global i32 0, align 4
@_EXCEPT = common dso_local global i32 0, align 4
@_LIB = common dso_local global i32 0, align 4
@_LIT = common dso_local global i32 0, align 4
@_LOADER = common dso_local global i32 0, align 4
@_PAD = common dso_local global i32 0, align 4
@_TYPCHK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32)* @sec_to_styp_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sec_to_styp_flags(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @_TEXT, align 4
  %8 = call i32 @strcmp(i8* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @STYP_TEXT, align 8
  store i64 %11, i64* %5, align 8
  br label %91

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @_DATA, align 4
  %15 = call i32 @strcmp(i8* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i64, i64* @STYP_DATA, align 8
  store i64 %18, i64* %5, align 8
  br label %90

19:                                               ; preds = %12
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* @_BSS, align 4
  %22 = call i32 @strcmp(i8* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* @STYP_BSS, align 8
  store i64 %25, i64* %5, align 8
  br label %89

26:                                               ; preds = %19
  %27 = load i8*, i8** %3, align 8
  %28 = load i8*, i8** @DOT_DEBUG, align 8
  %29 = call i64 @CONST_STRNEQ(i8* %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 6
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* @STYP_XCOFF_DEBUG, align 8
  store i64 %37, i64* %5, align 8
  br label %40

38:                                               ; preds = %31
  %39 = load i64, i64* @STYP_DEBUG_INFO, align 8
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %38, %36
  br label %88

41:                                               ; preds = %26
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @CONST_STRNEQ(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @STYP_DEBUG_INFO, align 8
  store i64 %46, i64* %5, align 8
  br label %87

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @SEC_CODE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* @STYP_TEXT, align 8
  store i64 %53, i64* %5, align 8
  br label %86

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @SEC_DATA, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i64, i64* @STYP_DATA, align 8
  store i64 %60, i64* %5, align 8
  br label %85

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @SEC_READONLY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i64, i64* @STYP_TEXT, align 8
  store i64 %67, i64* %5, align 8
  br label %84

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @SEC_LOAD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i64, i64* @STYP_TEXT, align 8
  store i64 %74, i64* %5, align 8
  br label %83

75:                                               ; preds = %68
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @SEC_ALLOC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i64, i64* @STYP_BSS, align 8
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %80, %75
  br label %83

83:                                               ; preds = %82, %73
  br label %84

84:                                               ; preds = %83, %66
  br label %85

85:                                               ; preds = %84, %59
  br label %86

86:                                               ; preds = %85, %52
  br label %87

87:                                               ; preds = %86, %45
  br label %88

88:                                               ; preds = %87, %40
  br label %89

89:                                               ; preds = %88, %24
  br label %90

90:                                               ; preds = %89, %17
  br label %91

91:                                               ; preds = %90, %10
  %92 = load i64, i64* %5, align 8
  ret i64 %92
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
