; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_md_parse_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_md_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i8* }

@mips_disable_float_construction = common dso_local global i32 0, align 4
@mips_trap = common dso_local global i32 0, align 4
@target_big_endian = common dso_local global i32 0, align 4
@octeon_error_on_unsupported = common dso_local global i32 0, align 4
@octeon_use_unalign = common dso_local global i32 0, align 4
@mips_optimize = common dso_local global i32 0, align 4
@mips_debug = common dso_local global i32 0, align 4
@ISA_MIPS1 = common dso_local global i32 0, align 4
@file_mips_isa = common dso_local global i32 0, align 4
@ISA_MIPS2 = common dso_local global i32 0, align 4
@ISA_MIPS3 = common dso_local global i32 0, align 4
@ISA_MIPS4 = common dso_local global i32 0, align 4
@ISA_MIPS5 = common dso_local global i32 0, align 4
@ISA_MIPS32 = common dso_local global i32 0, align 4
@ISA_MIPS32R2 = common dso_local global i32 0, align 4
@ISA_MIPS64R2 = common dso_local global i32 0, align 4
@ISA_MIPS64 = common dso_local global i32 0, align 4
@mips_tune_string = common dso_local global i32 0, align 4
@mips_arch_string = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"4650\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"4010\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"4100\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"3900\00", align 1
@mips_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@mips_fix_vr4120 = common dso_local global i32 0, align 4
@mips_fix_vr4130 = common dso_local global i32 0, align 4
@mips_relax_branch = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@mips_in_shared = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@g_switch_value = common dso_local global i8* null, align 8
@g_switch_seen = common dso_local global i32 0, align 4
@file_mips_gp32 = common dso_local global i32 0, align 4
@file_mips_fp32 = common dso_local global i32 0, align 4
@mips_7000_hilo_fix = common dso_local global i8* null, align 8
@EABI_ABI = common dso_local global i32 0, align 4
@IS_ELF = common dso_local global i32 0, align 4
@N32_ABI = common dso_local global i32 0, align 4
@N64_ABI = common dso_local global i32 0, align 4
@NO_PIC = common dso_local global i32 0, align 4
@O32_ABI = common dso_local global i32 0, align 4
@O64_ABI = common dso_local global i32 0, align 4
@SVR4_PIC = common dso_local global i32 0, align 4
@VXWORKS_PIC = common dso_local global i32 0, align 4
@mips_abi = common dso_local global i32 0, align 4
@mips_abicalls = common dso_local global i8* null, align 8
@mips_big_got = common dso_local global i32 0, align 4
@mips_flag_mdebug = common dso_local global i8* null, align 8
@mips_flag_pdr = common dso_local global i8* null, align 8
@mips_pic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_parse_option(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %119 [
    i32 194, label %7
    i32 151, label %8
    i32 129, label %9
    i32 196, label %10
    i32 191, label %11
    i32 190, label %12
    i32 160, label %13
    i32 138, label %14
    i32 159, label %15
    i32 137, label %16
    i32 79, label %17
    i32 103, label %29
    i32 174, label %38
    i32 172, label %40
    i32 171, label %42
    i32 167, label %44
    i32 166, label %46
    i32 170, label %48
    i32 169, label %50
    i32 164, label %52
    i32 165, label %54
    i32 155, label %56
    i32 177, label %59
    i32 180, label %62
    i32 143, label %65
    i32 182, label %66
    i32 145, label %69
    i32 181, label %70
    i32 144, label %73
    i32 183, label %74
    i32 146, label %77
    i32 175, label %78
    i32 141, label %79
    i32 193, label %80
    i32 150, label %81
    i32 192, label %82
    i32 149, label %83
    i32 156, label %84
    i32 136, label %85
    i32 173, label %86
    i32 140, label %88
    i32 168, label %90
    i32 139, label %91
    i32 130, label %92
    i32 133, label %93
    i32 189, label %94
    i32 148, label %95
    i32 188, label %96
    i32 147, label %97
    i32 131, label %98
    i32 134, label %99
    i32 158, label %100
    i32 162, label %102
    i32 157, label %104
    i32 161, label %106
    i32 71, label %108
    i32 185, label %111
    i32 184, label %112
    i32 187, label %113
    i32 186, label %114
    i32 179, label %115
    i32 163, label %117
  ]

7:                                                ; preds = %2
  store i32 0, i32* @mips_disable_float_construction, align 4
  br label %120

8:                                                ; preds = %2
  store i32 1, i32* @mips_disable_float_construction, align 4
  br label %120

9:                                                ; preds = %2
  store i32 1, i32* @mips_trap, align 4
  br label %120

10:                                               ; preds = %2
  store i32 0, i32* @mips_trap, align 4
  br label %120

11:                                               ; preds = %2
  store i32 1, i32* @target_big_endian, align 4
  br label %120

12:                                               ; preds = %2
  store i32 0, i32* @target_big_endian, align 4
  br label %120

13:                                               ; preds = %2
  store i32 1, i32* @octeon_error_on_unsupported, align 4
  br label %120

14:                                               ; preds = %2
  store i32 0, i32* @octeon_error_on_unsupported, align 4
  br label %120

15:                                               ; preds = %2
  store i32 1, i32* @octeon_use_unalign, align 4
  br label %120

16:                                               ; preds = %2
  store i32 0, i32* @octeon_use_unalign, align 4
  br label %120

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 48
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* @mips_optimize, align 4
  br label %28

27:                                               ; preds = %20, %17
  store i32 2, i32* @mips_optimize, align 4
  br label %28

28:                                               ; preds = %27, %26
  br label %120

29:                                               ; preds = %2
  %30 = load i8*, i8** %5, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 2, i32* @mips_debug, align 4
  br label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @atoi(i8* %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* @mips_debug, align 4
  br label %37

37:                                               ; preds = %33, %32
  br label %120

38:                                               ; preds = %2
  %39 = load i32, i32* @ISA_MIPS1, align 4
  store i32 %39, i32* @file_mips_isa, align 4
  br label %120

40:                                               ; preds = %2
  %41 = load i32, i32* @ISA_MIPS2, align 4
  store i32 %41, i32* @file_mips_isa, align 4
  br label %120

42:                                               ; preds = %2
  %43 = load i32, i32* @ISA_MIPS3, align 4
  store i32 %43, i32* @file_mips_isa, align 4
  br label %120

44:                                               ; preds = %2
  %45 = load i32, i32* @ISA_MIPS4, align 4
  store i32 %45, i32* @file_mips_isa, align 4
  br label %120

46:                                               ; preds = %2
  %47 = load i32, i32* @ISA_MIPS5, align 4
  store i32 %47, i32* @file_mips_isa, align 4
  br label %120

48:                                               ; preds = %2
  %49 = load i32, i32* @ISA_MIPS32, align 4
  store i32 %49, i32* @file_mips_isa, align 4
  br label %120

50:                                               ; preds = %2
  %51 = load i32, i32* @ISA_MIPS32R2, align 4
  store i32 %51, i32* @file_mips_isa, align 4
  br label %120

52:                                               ; preds = %2
  %53 = load i32, i32* @ISA_MIPS64R2, align 4
  store i32 %53, i32* @file_mips_isa, align 4
  br label %120

54:                                               ; preds = %2
  %55 = load i32, i32* @ISA_MIPS64, align 4
  store i32 %55, i32* @file_mips_isa, align 4
  br label %120

56:                                               ; preds = %2
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @mips_set_option_string(i32* @mips_tune_string, i8* %57)
  br label %120

59:                                               ; preds = %2
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @mips_set_option_string(i32* @mips_arch_string, i8* %60)
  br label %120

62:                                               ; preds = %2
  %63 = call i32 @mips_set_option_string(i32* @mips_arch_string, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %64 = call i32 @mips_set_option_string(i32* @mips_tune_string, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %120

65:                                               ; preds = %2
  br label %120

66:                                               ; preds = %2
  %67 = call i32 @mips_set_option_string(i32* @mips_arch_string, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @mips_set_option_string(i32* @mips_tune_string, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %120

69:                                               ; preds = %2
  br label %120

70:                                               ; preds = %2
  %71 = call i32 @mips_set_option_string(i32* @mips_arch_string, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %72 = call i32 @mips_set_option_string(i32* @mips_tune_string, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %120

73:                                               ; preds = %2
  br label %120

74:                                               ; preds = %2
  %75 = call i32 @mips_set_option_string(i32* @mips_arch_string, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %76 = call i32 @mips_set_option_string(i32* @mips_tune_string, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %120

77:                                               ; preds = %2
  br label %120

78:                                               ; preds = %2
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  br label %120

79:                                               ; preds = %2
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  br label %120

80:                                               ; preds = %2
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 2), align 8
  br label %120

81:                                               ; preds = %2
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 2), align 8
  br label %120

82:                                               ; preds = %2
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 1), align 4
  br label %120

83:                                               ; preds = %2
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 1), align 4
  br label %120

84:                                               ; preds = %2
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 3), align 4
  br label %120

85:                                               ; preds = %2
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 3), align 4
  br label %120

86:                                               ; preds = %2
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 4), align 8
  %87 = call i32 (...) @mips_no_prev_insn()
  br label %120

88:                                               ; preds = %2
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 4), align 8
  %89 = call i32 (...) @mips_no_prev_insn()
  br label %120

90:                                               ; preds = %2
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 5), align 4
  br label %120

91:                                               ; preds = %2
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 5), align 4
  br label %120

92:                                               ; preds = %2
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 6), align 8
  br label %120

93:                                               ; preds = %2
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 6), align 8
  br label %120

94:                                               ; preds = %2
  store i32 1, i32* @mips_fix_vr4120, align 4
  br label %120

95:                                               ; preds = %2
  store i32 0, i32* @mips_fix_vr4120, align 4
  br label %120

96:                                               ; preds = %2
  store i32 1, i32* @mips_fix_vr4130, align 4
  br label %120

97:                                               ; preds = %2
  store i32 0, i32* @mips_fix_vr4130, align 4
  br label %120

98:                                               ; preds = %2
  store i32 1, i32* @mips_relax_branch, align 4
  br label %120

99:                                               ; preds = %2
  store i32 0, i32* @mips_relax_branch, align 4
  br label %120

100:                                              ; preds = %2
  %101 = load i8*, i8** @TRUE, align 8
  store i8* %101, i8** @mips_in_shared, align 8
  br label %120

102:                                              ; preds = %2
  %103 = load i8*, i8** @FALSE, align 8
  store i8* %103, i8** @mips_in_shared, align 8
  br label %120

104:                                              ; preds = %2
  %105 = load i8*, i8** @TRUE, align 8
  store i8* %105, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 7), align 8
  br label %120

106:                                              ; preds = %2
  %107 = load i8*, i8** @FALSE, align 8
  store i8* %107, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 7), align 8
  br label %120

108:                                              ; preds = %2
  %109 = load i8*, i8** %5, align 8
  %110 = call i8* @atoi(i8* %109)
  store i8* %110, i8** @g_switch_value, align 8
  store i32 1, i32* @g_switch_seen, align 4
  br label %120

111:                                              ; preds = %2
  store i32 1, i32* @file_mips_gp32, align 4
  br label %120

112:                                              ; preds = %2
  store i32 0, i32* @file_mips_gp32, align 4
  br label %120

113:                                              ; preds = %2
  store i32 1, i32* @file_mips_fp32, align 4
  br label %120

114:                                              ; preds = %2
  store i32 0, i32* @file_mips_fp32, align 4
  br label %120

115:                                              ; preds = %2
  %116 = load i8*, i8** @TRUE, align 8
  store i8* %116, i8** @mips_7000_hilo_fix, align 8
  br label %120

117:                                              ; preds = %2
  %118 = load i8*, i8** @FALSE, align 8
  store i8* %118, i8** @mips_7000_hilo_fix, align 8
  br label %120

119:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %121

120:                                              ; preds = %117, %115, %114, %113, %112, %111, %108, %106, %104, %102, %100, %99, %98, %97, %96, %95, %94, %93, %92, %91, %90, %88, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %74, %73, %70, %69, %66, %65, %62, %59, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %37, %28, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  store i32 1, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %119
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @mips_set_option_string(i32*, i8*) #1

declare dso_local i32 @mips_no_prev_insn(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
