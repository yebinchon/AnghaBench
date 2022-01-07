; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_dynamic_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_dynamic_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@get_dynamic_type.buff = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"NEEDED\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"PLTRELSZ\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"PLTGOT\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HASH\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"STRTAB\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"SYMTAB\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"RELA\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"RELASZ\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"RELAENT\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"STRSZ\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SYMENT\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"FINI\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"SONAME\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"RPATH\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"SYMBOLIC\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"REL\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"RELSZ\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"RELENT\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"PLTREL\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"TEXTREL\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"JMPREL\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"BIND_NOW\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"INIT_ARRAY\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"FINI_ARRAY\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"INIT_ARRAYSZ\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"FINI_ARRAYSZ\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"RUNPATH\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"FLAGS\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"PREINIT_ARRAY\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"PREINIT_ARRAYSZ\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"CHECKSUM\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"PLTPADSZ\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"MOVEENT\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"MOVESZ\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"FEATURE\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"POSFLAG_1\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"SYMINSZ\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"SYMINENT\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"ADDRRNGLO\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"CONFIG\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"DEPAUDIT\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"AUDIT\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"PLTPAD\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"MOVETAB\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"SYMINFO\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"VERSYM\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"TLSDESC_GOT\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"TLSDESC_PLT\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"RELACOUNT\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"RELCOUNT\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"FLAGS_1\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"VERDEF\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"VERDEFNUM\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"VERNEED\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"VERNEEDNUM\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"AUXILIARY\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"USED\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"FILTER\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"GNU_PRELINKED\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"GNU_CONFLICT\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"GNU_CONFLICTSZ\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"GNU_LIBLIST\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"GNU_LIBLISTSZ\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"GNU_HASH\00", align 1
@DT_LOPROC = common dso_local global i64 0, align 8
@DT_HIPROC = common dso_local global i64 0, align 8
@elf_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.67 = private unnamed_addr constant [24 x i8] c"Processor Specific: %lx\00", align 1
@DT_LOOS = common dso_local global i64 0, align 8
@DT_HIOS = common dso_local global i64 0, align 8
@OLD_DT_LOOS = common dso_local global i64 0, align 8
@OLD_DT_HIOS = common dso_local global i64 0, align 8
@.str.68 = private unnamed_addr constant [31 x i8] c"Operating System specific: %lx\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"<unknown>: %lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @get_dynamic_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_dynamic_type(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  switch i64 %6, label %74 [
    i64 173, label %7
    i64 174, label %8
    i64 168, label %9
    i64 172, label %10
    i64 182, label %11
    i64 152, label %12
    i64 146, label %13
    i64 163, label %14
    i64 160, label %15
    i64 161, label %16
    i64 153, label %17
    i64 150, label %18
    i64 181, label %19
    i64 193, label %20
    i64 154, label %21
    i64 156, label %22
    i64 151, label %23
    i64 164, label %24
    i64 157, label %25
    i64 158, label %26
    i64 169, label %27
    i64 197, label %28
    i64 145, label %29
    i64 178, label %30
    i64 200, label %31
    i64 180, label %32
    i64 192, label %33
    i64 179, label %34
    i64 191, label %35
    i64 155, label %36
    i64 190, label %37
    i64 166, label %38
    i64 165, label %39
    i64 199, label %40
    i64 170, label %41
    i64 177, label %42
    i64 176, label %43
    i64 195, label %44
    i64 167, label %45
    i64 147, label %46
    i64 149, label %47
    i64 203, label %48
    i64 198, label %49
    i64 196, label %50
    i64 202, label %51
    i64 171, label %52
    i64 175, label %53
    i64 148, label %54
    i64 137, label %55
    i64 144, label %56
    i64 143, label %57
    i64 162, label %58
    i64 159, label %59
    i64 189, label %60
    i64 141, label %61
    i64 140, label %62
    i64 139, label %63
    i64 138, label %64
    i64 201, label %65
    i64 142, label %66
    i64 194, label %67
    i64 183, label %68
    i64 188, label %69
    i64 187, label %70
    i64 185, label %71
    i64 184, label %72
    i64 186, label %73
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %155

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %155

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %155

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %155

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %155

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %155

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %155

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %155

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %155

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %155

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %155

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %155

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %155

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %155

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %155

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %155

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %155

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %155

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %155

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %155

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %155

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %155

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %155

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %155

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %155

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %155

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %155

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %155

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %155

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %155

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %155

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %155

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %155

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %155

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %155

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %155

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %155

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %155

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %155

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %155

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %155

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %155

49:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i8** %2, align 8
  br label %155

50:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), i8** %2, align 8
  br label %155

51:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8** %2, align 8
  br label %155

52:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8** %2, align 8
  br label %155

53:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i8** %2, align 8
  br label %155

54:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i8** %2, align 8
  br label %155

55:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8** %2, align 8
  br label %155

56:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8** %2, align 8
  br label %155

57:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i8** %2, align 8
  br label %155

58:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i8** %2, align 8
  br label %155

59:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0), i8** %2, align 8
  br label %155

60:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i8** %2, align 8
  br label %155

61:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8** %2, align 8
  br label %155

62:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0), i8** %2, align 8
  br label %155

63:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i8** %2, align 8
  br label %155

64:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0), i8** %2, align 8
  br label %155

65:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0), i8** %2, align 8
  br label %155

66:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i8** %2, align 8
  br label %155

67:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0), i8** %2, align 8
  br label %155

68:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i64 0, i64 0), i8** %2, align 8
  br label %155

69:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8** %2, align 8
  br label %155

70:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0), i8** %2, align 8
  br label %155

71:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i8** %2, align 8
  br label %155

72:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), i8** %2, align 8
  br label %155

73:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i64 0, i64 0), i8** %2, align 8
  br label %155

74:                                               ; preds = %1
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* @DT_LOPROC, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %115

78:                                               ; preds = %74
  %79 = load i64, i64* %3, align 8
  %80 = load i64, i64* @DT_HIPROC, align 8
  %81 = icmp ule i64 %79, %80
  br i1 %81, label %82, label %115

82:                                               ; preds = %78
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 4
  switch i32 %83, label %105 [
    i32 134, label %84
    i32 133, label %84
    i32 128, label %87
    i32 131, label %90
    i32 130, label %93
    i32 135, label %96
    i32 136, label %99
    i32 129, label %102
  ]

84:                                               ; preds = %82, %82
  %85 = load i64, i64* %3, align 8
  %86 = call i8* @get_mips_dynamic_type(i64 %85)
  store i8* %86, i8** %4, align 8
  br label %106

87:                                               ; preds = %82
  %88 = load i64, i64* %3, align 8
  %89 = call i8* @get_sparc64_dynamic_type(i64 %88)
  store i8* %89, i8** %4, align 8
  br label %106

90:                                               ; preds = %82
  %91 = load i64, i64* %3, align 8
  %92 = call i8* @get_ppc_dynamic_type(i64 %91)
  store i8* %92, i8** %4, align 8
  br label %106

93:                                               ; preds = %82
  %94 = load i64, i64* %3, align 8
  %95 = call i8* @get_ppc64_dynamic_type(i64 %94)
  store i8* %95, i8** %4, align 8
  br label %106

96:                                               ; preds = %82
  %97 = load i64, i64* %3, align 8
  %98 = call i8* @get_ia64_dynamic_type(i64 %97)
  store i8* %98, i8** %4, align 8
  br label %106

99:                                               ; preds = %82
  %100 = load i64, i64* %3, align 8
  %101 = call i8* @get_alpha_dynamic_type(i64 %100)
  store i8* %101, i8** %4, align 8
  br label %106

102:                                              ; preds = %82
  %103 = load i64, i64* %3, align 8
  %104 = call i8* @get_score_dynamic_type(i64 %103)
  store i8* %104, i8** %4, align 8
  br label %106

105:                                              ; preds = %82
  store i8* null, i8** %4, align 8
  br label %106

106:                                              ; preds = %105, %102, %99, %96, %93, %90, %87, %84
  %107 = load i8*, i8** %4, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i8*, i8** %4, align 8
  store i8* %110, i8** %2, align 8
  br label %155

111:                                              ; preds = %106
  %112 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i64 0, i64 0))
  %113 = load i64, i64* %3, align 8
  %114 = call i32 @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @get_dynamic_type.buff, i64 0, i64 0), i32 64, i8* %112, i64 %113)
  br label %154

115:                                              ; preds = %78, %74
  %116 = load i64, i64* %3, align 8
  %117 = load i64, i64* @DT_LOOS, align 8
  %118 = icmp uge i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i64, i64* %3, align 8
  %121 = load i64, i64* @DT_HIOS, align 8
  %122 = icmp ule i64 %120, %121
  br i1 %122, label %134, label %123

123:                                              ; preds = %119, %115
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 4
  %125 = icmp eq i32 %124, 132
  br i1 %125, label %126, label %149

126:                                              ; preds = %123
  %127 = load i64, i64* %3, align 8
  %128 = load i64, i64* @OLD_DT_LOOS, align 8
  %129 = icmp uge i64 %127, %128
  br i1 %129, label %130, label %149

130:                                              ; preds = %126
  %131 = load i64, i64* %3, align 8
  %132 = load i64, i64* @OLD_DT_HIOS, align 8
  %133 = icmp ule i64 %131, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %130, %119
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 4
  switch i32 %135, label %139 [
    i32 132, label %136
  ]

136:                                              ; preds = %134
  %137 = load i64, i64* %3, align 8
  %138 = call i8* @get_parisc_dynamic_type(i64 %137)
  store i8* %138, i8** %5, align 8
  br label %140

139:                                              ; preds = %134
  store i8* null, i8** %5, align 8
  br label %140

140:                                              ; preds = %139, %136
  %141 = load i8*, i8** %5, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i8*, i8** %5, align 8
  store i8* %144, i8** %2, align 8
  br label %155

145:                                              ; preds = %140
  %146 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.68, i64 0, i64 0))
  %147 = load i64, i64* %3, align 8
  %148 = call i32 @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @get_dynamic_type.buff, i64 0, i64 0), i32 64, i8* %146, i64 %147)
  br label %153

149:                                              ; preds = %130, %126, %123
  %150 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0))
  %151 = load i64, i64* %3, align 8
  %152 = call i32 @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @get_dynamic_type.buff, i64 0, i64 0), i32 64, i8* %150, i64 %151)
  br label %153

153:                                              ; preds = %149, %145
  br label %154

154:                                              ; preds = %153, %111
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @get_dynamic_type.buff, i64 0, i64 0), i8** %2, align 8
  br label %155

155:                                              ; preds = %154, %143, %109, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %156 = load i8*, i8** %2, align 8
  ret i8* %156
}

declare dso_local i8* @get_mips_dynamic_type(i64) #1

declare dso_local i8* @get_sparc64_dynamic_type(i64) #1

declare dso_local i8* @get_ppc_dynamic_type(i64) #1

declare dso_local i8* @get_ppc64_dynamic_type(i64) #1

declare dso_local i8* @get_ia64_dynamic_type(i64) #1

declare dso_local i8* @get_alpha_dynamic_type(i64) #1

declare dso_local i8* @get_score_dynamic_type(i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @get_parisc_dynamic_type(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
