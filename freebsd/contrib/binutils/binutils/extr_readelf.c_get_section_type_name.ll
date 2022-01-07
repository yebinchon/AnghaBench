; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_section_type_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_section_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@get_section_type_name.buff = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"PROGBITS\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SYMTAB\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"STRTAB\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"RELA\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HASH\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"DYNAMIC\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NOTE\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"NOBITS\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"REL\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"SHLIB\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"DYNSYM\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"INIT_ARRAY\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"FINI_ARRAY\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"PREINIT_ARRAY\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"GNU_HASH\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"SYMTAB SECTION INDICIES\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"VERDEF\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"VERNEED\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"VERSYM\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"AUXILIARY\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"FILTER\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"GNU_LIBLIST\00", align 1
@SHT_LOPROC = common dso_local global i32 0, align 4
@SHT_HIPROC = common dso_local global i32 0, align 4
@elf_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"LOPROC+%x\00", align 1
@SHT_LOOS = common dso_local global i32 0, align 4
@SHT_HIOS = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"LOOS+%x\00", align 1
@SHT_LOUSER = common dso_local global i32 0, align 4
@SHT_HIUSER = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [10 x i8] c"LOUSER+%x\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"<unknown>: %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_section_type_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_section_type_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %32 [
    i32 136, label %6
    i32 134, label %7
    i32 129, label %8
    i32 130, label %9
    i32 132, label %10
    i32 140, label %11
    i32 149, label %12
    i32 137, label %13
    i32 138, label %14
    i32 133, label %15
    i32 131, label %16
    i32 148, label %17
    i32 139, label %18
    i32 147, label %19
    i32 135, label %20
    i32 146, label %21
    i32 141, label %22
    i32 128, label %23
    i32 144, label %24
    i32 143, label %25
    i32 142, label %26
    i32 1879048176, label %27
    i32 1879048188, label %28
    i32 2147483645, label %29
    i32 2147483647, label %30
    i32 145, label %31
  ]

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %101

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %101

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %101

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %101

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %101

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %101

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %101

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %101

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %101

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %101

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %101

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %101

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %101

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %101

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %101

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %101

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %101

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %101

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %101

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %101

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %101

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %101

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %101

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %101

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %101

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %101

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SHT_LOPROC, align 4
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SHT_HIPROC, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 4
  switch i32 %41, label %57 [
    i32 153, label %42
    i32 152, label %42
    i32 151, label %45
    i32 154, label %48
    i32 150, label %51
    i32 155, label %54
  ]

42:                                               ; preds = %40, %40
  %43 = load i32, i32* %3, align 4
  %44 = call i8* @get_mips_section_type_name(i32 %43)
  store i8* %44, i8** %4, align 8
  br label %58

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = call i8* @get_parisc_section_type_name(i32 %46)
  store i8* %47, i8** %4, align 8
  br label %58

48:                                               ; preds = %40
  %49 = load i32, i32* %3, align 4
  %50 = call i8* @get_ia64_section_type_name(i32 %49)
  store i8* %50, i8** %4, align 8
  br label %58

51:                                               ; preds = %40
  %52 = load i32, i32* %3, align 4
  %53 = call i8* @get_x86_64_section_type_name(i32 %52)
  store i8* %53, i8** %4, align 8
  br label %58

54:                                               ; preds = %40
  %55 = load i32, i32* %3, align 4
  %56 = call i8* @get_arm_section_type_name(i32 %55)
  store i8* %56, i8** %4, align 8
  br label %58

57:                                               ; preds = %40
  store i8* null, i8** %4, align 8
  br label %58

58:                                               ; preds = %57, %54, %51, %48, %45, %42
  %59 = load i8*, i8** %4, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i8*, i8** %4, align 8
  store i8* %62, i8** %2, align 8
  br label %101

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @SHT_LOPROC, align 4
  %66 = sub i32 %64, %65
  %67 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_section_type_name.buff, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i32 %66)
  br label %100

68:                                               ; preds = %36, %32
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @SHT_LOOS, align 4
  %71 = icmp uge i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @SHT_HIOS, align 4
  %75 = icmp ule i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @SHT_LOOS, align 4
  %79 = sub i32 %77, %78
  %80 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_section_type_name.buff, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 %79)
  br label %99

81:                                               ; preds = %72, %68
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @SHT_LOUSER, align 4
  %84 = icmp uge i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @SHT_HIUSER, align 4
  %88 = icmp ule i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @SHT_LOUSER, align 4
  %92 = sub i32 %90, %91
  %93 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_section_type_name.buff, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i32 %92)
  br label %98

94:                                               ; preds = %85, %81
  %95 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0))
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_section_type_name.buff, i64 0, i64 0), i32 32, i8* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %89
  br label %99

99:                                               ; preds = %98, %76
  br label %100

100:                                              ; preds = %99, %63
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_section_type_name.buff, i64 0, i64 0), i8** %2, align 8
  br label %101

101:                                              ; preds = %100, %61, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %102 = load i8*, i8** %2, align 8
  ret i8* %102
}

declare dso_local i8* @get_mips_section_type_name(i32) #1

declare dso_local i8* @get_parisc_section_type_name(i32) #1

declare dso_local i8* @get_ia64_section_type_name(i32) #1

declare dso_local i8* @get_x86_64_section_type_name(i32) #1

declare dso_local i8* @get_arm_section_type_name(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
