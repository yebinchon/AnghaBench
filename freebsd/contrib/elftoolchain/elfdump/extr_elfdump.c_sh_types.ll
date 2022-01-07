; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_sh_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_sh_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sh_types.unknown_buf = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [9 x i8] c"SHT_NULL\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"SHT_PROGBITS\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"SHT_SYMTAB\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"SHT_STRTAB\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"SHT_RELA\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"SHT_HASH\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"SHT_DYNAMIC\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"SHT_NOTE\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"SHT_NOBITS\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"SHT_REL\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"SHT_SHLIB\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"SHT_DYNSYM\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"SHT_INIT_ARRAY\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"SHT_FINI_ARRAY\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"SHT_PREINIT_ARRAY\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"SHT_GROUP\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"SHT_SYMTAB_SHNDX\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"XXX:VERSYM\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"SHT_SUNW_dof\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"SHT_GNU_HASH\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"SHT_GNU_LIBLIST\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"XXX:VERDEF\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"SHT_SUNW(GNU)_verdef\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"SHT_SUNW(GNU)_verneed\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"SHT_SUNW(GNU)_versym\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"SHT_ARM_EXIDX\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"SHT_ARM_PREEMPTMAP\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"SHT_ARM_ATTRIBUTES\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"SHT_ARM_DEBUGOVERLAY\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"SHT_ARM_OVERLAYSECTION\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"SHT_IA_64_EXT\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"SHT_IA_64_UNWIND\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"SHT_MIPS_REGINFO\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"SHT_MIPS_OPTIONS\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"SHT_MIPS_ABIFLAGS\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"XXX:AUXILIARY\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"XXX:FILTER\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"<unknown: %#llx>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @sh_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sh_types(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 1610612736
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %27 [
    i32 140, label %10
    i32 138, label %11
    i32 129, label %12
    i32 134, label %13
    i32 136, label %14
    i32 147, label %15
    i32 152, label %16
    i32 141, label %17
    i32 142, label %18
    i32 137, label %19
    i32 135, label %20
    i32 151, label %21
    i32 146, label %22
    i32 150, label %23
    i32 139, label %24
    i32 148, label %25
    i32 128, label %26
  ]

10:                                               ; preds = %8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %77

11:                                               ; preds = %8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %77

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %77

13:                                               ; preds = %8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %77

14:                                               ; preds = %8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %77

15:                                               ; preds = %8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %77

16:                                               ; preds = %8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %77

17:                                               ; preds = %8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %77

18:                                               ; preds = %8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %77

19:                                               ; preds = %8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %77

20:                                               ; preds = %8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %77

21:                                               ; preds = %8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %77

22:                                               ; preds = %8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %77

23:                                               ; preds = %8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %77

24:                                               ; preds = %8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %77

25:                                               ; preds = %8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %77

26:                                               ; preds = %8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %77

27:                                               ; preds = %8
  br label %73

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 1879048192
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %41 [
    i32 1879048176, label %33
    i32 133, label %34
    i32 149, label %35
    i32 1879048183, label %36
    i32 1879048188, label %37
    i32 132, label %38
    i32 131, label %39
    i32 130, label %40
  ]

33:                                               ; preds = %31
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %77

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %77

35:                                               ; preds = %31
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %77

36:                                               ; preds = %31
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %77

37:                                               ; preds = %31
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %77

38:                                               ; preds = %31
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %77

39:                                               ; preds = %31
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %77

40:                                               ; preds = %31
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %77

41:                                               ; preds = %31
  br label %72

42:                                               ; preds = %28
  %43 = load i32, i32* %5, align 4
  %44 = icmp ult i32 %43, -2147483648
  br i1 %44, label %45, label %71

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  switch i32 %46, label %66 [
    i32 160, label %47
    i32 159, label %55
    i32 158, label %60
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* %5, align 4
  switch i32 %48, label %54 [
    i32 155, label %49
    i32 153, label %50
    i32 157, label %51
    i32 156, label %52
    i32 154, label %53
  ]

49:                                               ; preds = %47
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  br label %77

50:                                               ; preds = %47
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %77

51:                                               ; preds = %47
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i8** %3, align 8
  br label %77

52:                                               ; preds = %47
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i8** %3, align 8
  br label %77

53:                                               ; preds = %47
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i8** %3, align 8
  br label %77

54:                                               ; preds = %47
  br label %66

55:                                               ; preds = %45
  %56 = load i32, i32* %5, align 4
  switch i32 %56, label %59 [
    i32 1879048192, label %57
    i32 1879048193, label %58
  ]

57:                                               ; preds = %55
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %77

58:                                               ; preds = %55
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8** %3, align 8
  br label %77

59:                                               ; preds = %55
  br label %66

60:                                               ; preds = %45
  %61 = load i32, i32* %5, align 4
  switch i32 %61, label %65 [
    i32 143, label %62
    i32 144, label %63
    i32 145, label %64
  ]

62:                                               ; preds = %60
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8** %3, align 8
  br label %77

63:                                               ; preds = %60
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i8** %3, align 8
  br label %77

64:                                               ; preds = %60
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i8** %3, align 8
  br label %77

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %45, %65, %59, %54
  %67 = load i32, i32* %5, align 4
  switch i32 %67, label %70 [
    i32 2147483645, label %68
    i32 2147483647, label %69
  ]

68:                                               ; preds = %66
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0), i8** %3, align 8
  br label %77

69:                                               ; preds = %66
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8** %3, align 8
  br label %77

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %42
  br label %72

72:                                               ; preds = %71, %41
  br label %73

73:                                               ; preds = %72, %27
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = call i32 @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @sh_types.unknown_buf, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i64 %75)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @sh_types.unknown_buf, i64 0, i64 0), i8** %3, align 8
  br label %77

77:                                               ; preds = %73, %69, %68, %64, %63, %62, %58, %57, %53, %52, %51, %50, %49, %40, %39, %38, %37, %36, %35, %34, %33, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  %78 = load i8*, i8** %3, align 8
  ret i8* %78
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
