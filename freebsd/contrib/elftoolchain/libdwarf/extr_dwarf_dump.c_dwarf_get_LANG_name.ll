; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_dump.c_dwarf_get_LANG_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_dump.c_dwarf_get_LANG_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"DW_LANG_C89\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DW_LANG_C\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"DW_LANG_Ada83\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"DW_LANG_C_plus_plus\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"DW_LANG_Cobol74\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"DW_LANG_Cobol85\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"DW_LANG_Fortran77\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"DW_LANG_Fortran90\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"DW_LANG_Pascal83\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"DW_LANG_Modula2\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"DW_LANG_Java\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"DW_LANG_C99\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"DW_LANG_Ada95\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"DW_LANG_Fortran95\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"DW_LANG_PLI\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"DW_LANG_ObjC\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"DW_LANG_ObjC_plus_plus\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"DW_LANG_UPC\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"DW_LANG_D\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"DW_LANG_Python\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"DW_LANG_OpenCL\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"DW_LANG_Go\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"DW_LANG_Modula3\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"DW_LANG_Haskell\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"DW_LANG_C_plus_plus_03\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"DW_LANG_C_plus_plus_11\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"DW_LANG_OCaml\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"DW_LANG_Rust\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"DW_LANG_C11\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"DW_LANG_Swift\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"DW_LANG_Julia\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"DW_LANG_Dylan\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"DW_LANG_C_plus_plus_14\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"DW_LANG_Fortran03\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"DW_LANG_Fortran08\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"DW_LANG_RenderScript\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"DW_LANG_BLISS\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"DW_LANG_lo_user\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"DW_LANG_Mips_Assembler\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"DW_LANG_hi_user\00", align 1
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_LANG_name(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i8**, i8*** %5, align 8
  %7 = icmp ne i8** %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %91 [
    i32 162, label %11
    i32 164, label %13
    i32 167, label %15
    i32 160, label %17
    i32 156, label %19
    i32 155, label %21
    i32 150, label %23
    i32 149, label %25
    i32 135, label %27
    i32 142, label %29
    i32 145, label %31
    i32 161, label %33
    i32 166, label %35
    i32 148, label %37
    i32 136, label %39
    i32 139, label %41
    i32 138, label %43
    i32 130, label %45
    i32 154, label %47
    i32 134, label %49
    i32 137, label %51
    i32 147, label %53
    i32 141, label %55
    i32 146, label %57
    i32 159, label %59
    i32 158, label %61
    i32 140, label %63
    i32 132, label %65
    i32 163, label %67
    i32 131, label %69
    i32 144, label %71
    i32 153, label %73
    i32 157, label %75
    i32 152, label %77
    i32 151, label %79
    i32 133, label %81
    i32 165, label %83
    i32 128, label %85
    i32 143, label %87
    i32 129, label %89
  ]

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %93

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %93

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %93

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %93

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %20, align 8
  br label %93

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %22, align 8
  br label %93

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %24, align 8
  br label %93

25:                                               ; preds = %2
  %26 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8** %26, align 8
  br label %93

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8** %28, align 8
  br label %93

29:                                               ; preds = %2
  %30 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8** %30, align 8
  br label %93

31:                                               ; preds = %2
  %32 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %32, align 8
  br label %93

33:                                               ; preds = %2
  %34 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8** %34, align 8
  br label %93

35:                                               ; preds = %2
  %36 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8** %36, align 8
  br label %93

37:                                               ; preds = %2
  %38 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8** %38, align 8
  br label %93

39:                                               ; preds = %2
  %40 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** %40, align 8
  br label %93

41:                                               ; preds = %2
  %42 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %42, align 8
  br label %93

43:                                               ; preds = %2
  %44 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8** %44, align 8
  br label %93

45:                                               ; preds = %2
  %46 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8** %46, align 8
  br label %93

47:                                               ; preds = %2
  %48 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %48, align 8
  br label %93

49:                                               ; preds = %2
  %50 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8** %50, align 8
  br label %93

51:                                               ; preds = %2
  %52 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8** %52, align 8
  br label %93

53:                                               ; preds = %2
  %54 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8** %54, align 8
  br label %93

55:                                               ; preds = %2
  %56 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8** %56, align 8
  br label %93

57:                                               ; preds = %2
  %58 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8** %58, align 8
  br label %93

59:                                               ; preds = %2
  %60 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i8** %60, align 8
  br label %93

61:                                               ; preds = %2
  %62 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8** %62, align 8
  br label %93

63:                                               ; preds = %2
  %64 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8** %64, align 8
  br label %93

65:                                               ; preds = %2
  %66 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i8** %66, align 8
  br label %93

67:                                               ; preds = %2
  %68 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8** %68, align 8
  br label %93

69:                                               ; preds = %2
  %70 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8** %70, align 8
  br label %93

71:                                               ; preds = %2
  %72 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8** %72, align 8
  br label %93

73:                                               ; preds = %2
  %74 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8** %74, align 8
  br label %93

75:                                               ; preds = %2
  %76 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i8** %76, align 8
  br label %93

77:                                               ; preds = %2
  %78 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i8** %78, align 8
  br label %93

79:                                               ; preds = %2
  %80 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i8** %80, align 8
  br label %93

81:                                               ; preds = %2
  %82 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i8** %82, align 8
  br label %93

83:                                               ; preds = %2
  %84 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8** %84, align 8
  br label %93

85:                                               ; preds = %2
  %86 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0), i8** %86, align 8
  br label %93

87:                                               ; preds = %2
  %88 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i8** %88, align 8
  br label %93

89:                                               ; preds = %2
  %90 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i8** %90, align 8
  br label %93

91:                                               ; preds = %2
  %92 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %92, i32* %3, align 4
  br label %95

93:                                               ; preds = %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11
  %94 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
