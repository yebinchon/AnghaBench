; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_symbol_index_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_symbol_index_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@get_symbol_index_type.buff = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"UND\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ABS\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"COM\00", align 1
@SHN_IA_64_ANSI_COMMON = common dso_local global i32 0, align 4
@elf_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EM_IA_64 = common dso_local global i32 0, align 4
@EI_OSABI = common dso_local global i64 0, align 8
@ELFOSABI_HPUX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"ANSI_COM\00", align 1
@EM_X86_64 = common dso_local global i32 0, align 4
@SHN_X86_64_LCOMMON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"LARGE_COM\00", align 1
@SHN_MIPS_SCOMMON = common dso_local global i32 0, align 4
@EM_MIPS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"SCOM\00", align 1
@SHN_MIPS_SUNDEFINED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"SUND\00", align 1
@SHN_LOPROC = common dso_local global i32 0, align 4
@SHN_HIPROC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"PRC[0x%04x]\00", align 1
@SHN_LOOS = common dso_local global i32 0, align 4
@SHN_HIOS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"OS [0x%04x]\00", align 1
@SHN_LORESERVE = common dso_local global i32 0, align 4
@SHN_HIRESERVE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"RSV[0x%04x]\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%3d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_symbol_index_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_symbol_index_type(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %8 [
    i32 128, label %5
    i32 130, label %6
    i32 129, label %7
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %95

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %95

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %95

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SHN_IA_64_ANSI_COMMON, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 8
  %14 = load i32, i32* @EM_IA_64, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 1), align 8
  %18 = load i64, i64* @EI_OSABI, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ELFOSABI_HPUX, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %95

24:                                               ; preds = %16, %12, %8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 8
  %26 = load i32, i32* @EM_X86_64, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SHN_X86_64_LCOMMON, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %95

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SHN_MIPS_SCOMMON, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 8
  %39 = load i32, i32* @EM_MIPS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %95

42:                                               ; preds = %37, %33
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SHN_MIPS_SUNDEFINED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 8
  %48 = load i32, i32* @EM_MIPS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %95

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SHN_LOPROC, align 4
  %54 = icmp uge i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @SHN_HIPROC, align 4
  %58 = icmp ule i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_symbol_index_type.buff, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %60)
  br label %89

62:                                               ; preds = %55, %51
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @SHN_LOOS, align 4
  %65 = icmp uge i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @SHN_HIOS, align 4
  %69 = icmp ule i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_symbol_index_type.buff, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %71)
  br label %88

73:                                               ; preds = %66, %62
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @SHN_LORESERVE, align 4
  %76 = icmp uge i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @SHN_HIRESERVE, align 4
  %80 = icmp ule i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_symbol_index_type.buff, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %82)
  br label %87

84:                                               ; preds = %77, %73
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_symbol_index_type.buff, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %70
  br label %89

89:                                               ; preds = %88, %59
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_symbol_index_type.buff, i64 0, i64 0), i8** %2, align 8
  br label %95

95:                                               ; preds = %94, %50, %41, %32, %23, %7, %6, %5
  %96 = load i8*, i8** %2, align 8
  ret i8* %96
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
