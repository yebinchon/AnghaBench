; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000-c.c_rs6000_cpu_cpp_builtins.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000-c.c_rs6000_cpu_cpp_builtins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_POWER2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"_ARCH_PWR2\00", align 1
@TARGET_POWER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"_ARCH_PWR\00", align 1
@TARGET_POWERPC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"_ARCH_PPC\00", align 1
@TARGET_PPC_GPOPT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"_ARCH_PPCSQ\00", align 1
@TARGET_PPC_GFXOPT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"_ARCH_PPCGR\00", align 1
@TARGET_POWERPC64 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"_ARCH_PPC64\00", align 1
@TARGET_MFCRF = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"_ARCH_PWR4\00", align 1
@TARGET_POPCNTB = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"_ARCH_PWR5\00", align 1
@TARGET_FPRND = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"_ARCH_PWR5X\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"_ARCH_COM\00", align 1
@TARGET_ALTIVEC = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"__ALTIVEC__\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"__VEC__=10206\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"__vector=__attribute__((altivec(vector__)))\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"__pixel=__attribute__((altivec(pixel__))) unsigned short\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"__bool=__attribute__((altivec(bool__))) unsigned\00", align 1
@TARGET_SPE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"__SPE__\00", align 1
@TARGET_SOFT_FLOAT = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"_SOFT_FLOAT\00", align 1
@rs6000_cpu = common dso_local global i64 0, align 8
@PROCESSOR_PPC405 = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"__PPC405__\00", align 1
@TARGET_NO_LWSYNC = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"__NO_LWSYNC__\00", align 1
@TARGET_LONG_DOUBLE_128 = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [20 x i8] c"__LONG_DOUBLE_128__\00", align 1
@rs6000_current_abi = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"_CALL_SYSV\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"_CALL_AIXDESC\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"_CALL_AIX\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"_CALL_DARWIN\00", align 1
@TARGET_FPRS = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"__NO_FPRS__\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_cpu_cpp_builtins(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* @TARGET_POWER2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @builtin_define(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %13

7:                                                ; preds = %1
  %8 = load i64, i64* @TARGET_POWER, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @builtin_define(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %7
  br label %13

13:                                               ; preds = %12, %5
  %14 = load i64, i64* @TARGET_POWERPC, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @builtin_define(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i64, i64* @TARGET_PPC_GPOPT, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @builtin_define(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i64, i64* @TARGET_PPC_GFXOPT, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @builtin_define(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i64, i64* @TARGET_POWERPC64, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @builtin_define(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i64, i64* @TARGET_MFCRF, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @builtin_define(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i64, i64* @TARGET_POPCNTB, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @builtin_define(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i64, i64* @TARGET_FPRND, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @builtin_define(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i64, i64* @TARGET_POWER, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* @TARGET_POWER2, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* @TARGET_POWERPC, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = call i32 @builtin_define(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54, %51, %48
  %60 = load i64, i64* @TARGET_ALTIVEC, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = call i32 @builtin_define(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %64 = call i32 @builtin_define(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %65 = call i32 @builtin_define(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  %66 = call i32 @builtin_define(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0))
  %67 = call i32 @builtin_define(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0))
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i64, i64* @TARGET_SPE, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @builtin_define(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  %74 = load i64, i64* @TARGET_SOFT_FLOAT, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 @builtin_define(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i64, i64* @rs6000_cpu, align 8
  %80 = load i64, i64* @PROCESSOR_PPC405, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @builtin_define(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %78
  %85 = load i64, i64* @TARGET_NO_LWSYNC, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 @builtin_define(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84
  %90 = call i32 (...) @RS6000_CPU_CPP_ENDIAN_BUILTINS()
  %91 = load i64, i64* @TARGET_LONG_DOUBLE_128, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = call i32 @builtin_define(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i32, i32* @rs6000_current_abi, align 4
  switch i32 %96, label %104 [
    i32 128, label %97
    i32 130, label %99
    i32 129, label %102
  ]

97:                                               ; preds = %95
  %98 = call i32 @builtin_define(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  br label %105

99:                                               ; preds = %95
  %100 = call i32 @builtin_define(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  %101 = call i32 @builtin_define(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  br label %105

102:                                              ; preds = %95
  %103 = call i32 @builtin_define(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  br label %105

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %102, %99, %97
  %106 = load i64, i64* @TARGET_SOFT_FLOAT, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* @TARGET_FPRS, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108, %105
  %112 = call i32 @builtin_define(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %108
  ret void
}

declare dso_local i32 @builtin_define(i8*) #1

declare dso_local i32 @RS6000_CPU_CPP_ENDIAN_BUILTINS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
