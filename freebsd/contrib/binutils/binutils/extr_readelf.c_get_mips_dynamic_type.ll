; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_mips_dynamic_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_mips_dynamic_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"MIPS_RLD_VERSION\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"MIPS_TIME_STAMP\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"MIPS_ICHECKSUM\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"MIPS_IVERSION\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"MIPS_FLAGS\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"MIPS_BASE_ADDRESS\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"MIPS_MSYM\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"MIPS_CONFLICT\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"MIPS_LIBLIST\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"MIPS_LOCAL_GOTNO\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"MIPS_CONFLICTNO\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"MIPS_LIBLISTNO\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"MIPS_SYMTABNO\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"MIPS_UNREFEXTNO\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"MIPS_GOTSYM\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"MIPS_HIPAGENO\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"MIPS_RLD_MAP\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"MIPS_DELTA_CLASS\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"MIPS_DELTA_CLASS_NO\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"MIPS_DELTA_INSTANCE\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"MIPS_DELTA_INSTANCE_NO\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"MIPS_DELTA_RELOC\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"MIPS_DELTA_RELOC_NO\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"MIPS_DELTA_SYM\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"MIPS_DELTA_SYM_NO\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"MIPS_DELTA_CLASSSYM\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"MIPS_DELTA_CLASSSYM_NO\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"MIPS_CXX_FLAGS\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"MIPS_PIXIE_INIT\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"MIPS_SYMBOL_LIB\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"MIPS_LOCALPAGE_GOTIDX\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"MIPS_LOCAL_GOTIDX\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"MIPS_HIDDEN_GOTIDX\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"MIPS_PROTECTED_GOTIDX\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"MIPS_OPTIONS\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"MIPS_INTERFACE\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"MIPS_DYNSTR_ALIGN\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"MIPS_INTERFACE_SIZE\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"MIPS_RLD_TEXT_RESOLVE_ADDR\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"MIPS_PERF_SUFFIX\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"MIPS_COMPACT_SIZE\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"MIPS_GP_VALUE\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"MIPS_AUX_DYNAMIC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @get_mips_dynamic_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_mips_dynamic_type(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  switch i64 %4, label %48 [
    i64 132, label %5
    i64 129, label %6
    i64 148, label %7
    i64 145, label %8
    i64 153, label %9
    i64 169, label %10
    i64 139, label %11
    i64 167, label %12
    i64 144, label %13
    i64 140, label %14
    i64 166, label %15
    i64 143, label %16
    i64 130, label %17
    i64 128, label %18
    i64 152, label %19
    i64 149, label %20
    i64 134, label %21
    i64 164, label %22
    i64 161, label %23
    i64 160, label %24
    i64 159, label %25
    i64 158, label %26
    i64 157, label %27
    i64 156, label %28
    i64 155, label %29
    i64 163, label %30
    i64 162, label %31
    i64 165, label %32
    i64 136, label %33
    i64 131, label %34
    i64 142, label %35
    i64 141, label %36
    i64 150, label %37
    i64 135, label %38
    i64 138, label %39
    i64 147, label %40
    i64 154, label %41
    i64 146, label %42
    i64 133, label %43
    i64 137, label %44
    i64 168, label %45
    i64 151, label %46
    i64 170, label %47
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %49

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %49

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %49

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %49

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %49

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %49

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %49

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %49

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %49

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %49

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %49

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %49

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %49

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %49

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %49

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %49

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %49

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %49

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %49

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %49

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %49

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %49

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %49

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %49

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %49

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %49

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %49

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %49

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %49

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %49

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %49

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %49

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %49

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %49

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %49

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %49

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %49

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %49

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %49

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %49

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %49

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %49

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i8** %2, align 8
  br label %49

48:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %49

49:                                               ; preds = %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %50 = load i8*, i8** %2, align 8
  ret i8* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
