; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_mips_section_type_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_mips_section_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"MIPS_LIBLIST\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"MIPS_MSYM\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"MIPS_CONFLICT\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"MIPS_GPTAB\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"MIPS_UCODE\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"MIPS_DEBUG\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"MIPS_REGINFO\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"MIPS_PACKAGE\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"MIPS_PACKSYM\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"MIPS_RELD\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"MIPS_IFACE\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"MIPS_CONTENT\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"MIPS_OPTIONS\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"MIPS_SHDR\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"MIPS_FDESC\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"MIPS_EXTSYM\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"MIPS_DENSE\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"MIPS_PDESC\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"MIPS_LOCSYM\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"MIPS_AUXSYM\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"MIPS_OPTSYM\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"MIPS_LOCSTR\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"MIPS_LINE\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"MIPS_RFDESC\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"MIPS_DELTASYM\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"MIPS_DELTAINST\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"MIPS_DELTACLASS\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"MIPS_DWARF\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"MIPS_DELTADECL\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"MIPS_SYMBOL_LIB\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"MIPS_EVENTS\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"MIPS_TRANSLATE\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"MIPS_PIXIE\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"MIPS_XLATE\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"MIPS_XLATE_DEBUG\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"MIPS_WHIRL\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"MIPS_EH_REGION\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"MIPS_XLATE_OLD\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"MIPS_PDR_EXCEPTION\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_mips_section_type_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_mips_section_type_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %44 [
    i32 150, label %5
    i32 146, label %6
    i32 165, label %7
    i32 152, label %8
    i32 132, label %9
    i32 163, label %10
    i32 138, label %11
    i32 143, label %12
    i32 142, label %13
    i32 137, label %14
    i32 151, label %15
    i32 164, label %16
    i32 145, label %17
    i32 135, label %18
    i32 153, label %19
    i32 154, label %20
    i32 158, label %21
    i32 141, label %22
    i32 147, label %23
    i32 166, label %24
    i32 144, label %25
    i32 148, label %26
    i32 149, label %27
    i32 136, label %28
    i32 159, label %29
    i32 160, label %30
    i32 162, label %31
    i32 157, label %32
    i32 161, label %33
    i32 134, label %34
    i32 155, label %35
    i32 133, label %36
    i32 139, label %37
    i32 130, label %38
    i32 129, label %39
    i32 131, label %40
    i32 156, label %41
    i32 128, label %42
    i32 140, label %43
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %46

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %46

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %46

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %46

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %46

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %46

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %46

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %46

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %46

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %46

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %46

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %46

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %46

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %46

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %46

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %46

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %46

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %46

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %46

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %46

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %46

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %46

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %46

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %46

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %46

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %46

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %46

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %46

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %46

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %46

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %46

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %46

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %46

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %46

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %46

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %46

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %46

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %46

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %46

44:                                               ; preds = %1
  br label %45

45:                                               ; preds = %44
  store i8* null, i8** %2, align 8
  br label %46

46:                                               ; preds = %45, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %47 = load i8*, i8** %2, align 8
  ret i8* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
