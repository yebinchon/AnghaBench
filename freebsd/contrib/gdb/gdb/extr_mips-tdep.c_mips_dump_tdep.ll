; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_dump_tdep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_dump_tdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.ui_file = type { i32 }
%struct.gdbarch_tdep = type { i32, i64, i32 }

@EF_MIPS_ARCH = common dso_local global i32 0, align 4
@EF_MIPS_32BITMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"mips_dump_tdep: tdep->elf_flags = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"mips_dump_tdep: ef_mips_32bitmode = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"mips_dump_tdep: ef_mips_arch = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"mips_dump_tdep: tdep->mips_abi = %d (%s)\0A\00", align 1
@mips_abi_strings = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"mips_dump_tdep: mips_mask_address_p() %d (default %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"mips_dump_tdep: FP_REGISTER_DOUBLE = %d\0A\00", align 1
@FP_REGISTER_DOUBLE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [49 x i8] c"mips_dump_tdep: MIPS_DEFAULT_FPU_TYPE = %d (%s)\0A\00", align 1
@MIPS_DEFAULT_FPU_TYPE = common dso_local global i32 0, align 4
@MIPS_FPU_NONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@MIPS_FPU_SINGLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@MIPS_FPU_DOUBLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"mips_dump_tdep: MIPS_EABI = %d\0A\00", align 1
@MIPS_EABI = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [41 x i8] c"mips_dump_tdep: MIPS_FPU_TYPE = %d (%s)\0A\00", align 1
@MIPS_FPU_TYPE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"mips_dump_tdep: mips_stack_argsize() = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"mips_dump_tdep: A0_REGNUM = %d\0A\00", align 1
@A0_REGNUM = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [39 x i8] c"mips_dump_tdep: ADDR_BITS_REMOVE # %s\0A\00", align 1
@ADDR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [36 x i8] c"mips_dump_tdep: ATTACH_DETACH # %s\0A\00", align 1
@ATTACH_DETACH = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [42 x i8] c"mips_dump_tdep: DWARF_REG_TO_REGNUM # %s\0A\00", align 1
@REGNUM = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [42 x i8] c"mips_dump_tdep: ECOFF_REG_TO_REGNUM # %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"mips_dump_tdep: FIRST_EMBED_REGNUM = %d\0A\00", align 1
@FIRST_EMBED_REGNUM = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [41 x i8] c"mips_dump_tdep: IGNORE_HELPER_CALL # %s\0A\00", align 1
@PC = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [47 x i8] c"mips_dump_tdep: IN_SOLIB_CALL_TRAMPOLINE # %s\0A\00", align 1
@NAME = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [49 x i8] c"mips_dump_tdep: IN_SOLIB_RETURN_TRAMPOLINE # %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"mips_dump_tdep: LAST_EMBED_REGNUM = %d\0A\00", align 1
@LAST_EMBED_REGNUM = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [37 x i8] c"mips_dump_tdep: MIPS16_INSTLEN = %d\0A\00", align 1
@MIPS16_INSTLEN = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [43 x i8] c"mips_dump_tdep: MIPS_DEFAULT_ABI = FIXME!\0A\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"mips_dump_tdep: MIPS_EFI_SYMBOL_NAME = multi-arch!!\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"mips_dump_tdep: MIPS_INSTLEN = %d\0A\00", align 1
@MIPS_INSTLEN = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [53 x i8] c"mips_dump_tdep: MIPS_LAST_ARG_REGNUM = %d (%d regs)\0A\00", align 1
@MIPS_LAST_ARG_REGNUM = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [35 x i8] c"mips_dump_tdep: MIPS_NUMREGS = %d\0A\00", align 1
@MIPS_NUMREGS = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [43 x i8] c"mips_dump_tdep: mips_saved_regsize() = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"mips_dump_tdep: PRID_REGNUM = %d\0A\00", align 1
@PRID_REGNUM = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [48 x i8] c"mips_dump_tdep: PROC_DESC_IS_DUMMY = function?\0A\00", align 1
@.str.33 = private unnamed_addr constant [47 x i8] c"mips_dump_tdep: PROC_FRAME_ADJUST = function?\0A\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"mips_dump_tdep: PROC_FRAME_OFFSET = function?\0A\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"mips_dump_tdep: PROC_FRAME_REG = function?\0A\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"mips_dump_tdep: PROC_FREG_MASK = function?\0A\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"mips_dump_tdep: PROC_FREG_OFFSET = function?\0A\00", align 1
@.str.38 = private unnamed_addr constant [44 x i8] c"mips_dump_tdep: PROC_HIGH_ADDR = function?\0A\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"mips_dump_tdep: PROC_LOW_ADDR = function?\0A\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"mips_dump_tdep: PROC_PC_REG = function?\0A\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"mips_dump_tdep: PROC_REG_MASK = function?\0A\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"mips_dump_tdep: PROC_REG_OFFSET = function?\0A\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"mips_dump_tdep: PROC_SYMBOL = function?\0A\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"mips_dump_tdep: PS_REGNUM = %d\0A\00", align 1
@PS_REGNUM = common dso_local global i64 0, align 8
@.str.45 = private unnamed_addr constant [32 x i8] c"mips_dump_tdep: RA_REGNUM = %d\0A\00", align 1
@RA_REGNUM = common dso_local global i64 0, align 8
@.str.46 = private unnamed_addr constant [44 x i8] c"mips_dump_tdep: SETUP_ARBITRARY_FRAME # %s\0A\00", align 1
@NUMARGS = common dso_local global i32 0, align 4
@ARGS = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [52 x i8] c"mips_dump_tdep: SET_PROC_DESC_IS_DUMMY = function?\0A\00", align 1
@.str.48 = private unnamed_addr constant [43 x i8] c"mips_dump_tdep: SKIP_TRAMPOLINE_CODE # %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"mips_dump_tdep: SOFTWARE_SINGLE_STEP # %s\0A\00", align 1
@SIG = common dso_local global i32 0, align 4
@BP_P = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [48 x i8] c"mips_dump_tdep: SOFTWARE_SINGLE_STEP_P () = %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"mips_dump_tdep: STAB_REG_TO_REGNUM # %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"mips_dump_tdep: STEP_SKIPS_DELAY # %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"mips_dump_tdep: STEP_SKIPS_DELAY_P = %d\0A\00", align 1
@STEP_SKIPS_DELAY_P = common dso_local global i64 0, align 8
@.str.54 = private unnamed_addr constant [44 x i8] c"mips_dump_tdep: STOPPED_BY_WATCHPOINT # %s\0A\00", align 1
@WS = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [32 x i8] c"mips_dump_tdep: T9_REGNUM = %d\0A\00", align 1
@T9_REGNUM = common dso_local global i64 0, align 8
@.str.56 = private unnamed_addr constant [49 x i8] c"mips_dump_tdep: TABULAR_REGISTER_OUTPUT = used?\0A\00", align 1
@.str.57 = private unnamed_addr constant [57 x i8] c"mips_dump_tdep: TARGET_CAN_USE_HARDWARE_WATCHPOINT # %s\0A\00", align 1
@TYPE = common dso_local global i32 0, align 4
@CNT = common dso_local global i32 0, align 4
@OTHERTYPE = common dso_local global i32 0, align 4
@.str.58 = private unnamed_addr constant [54 x i8] c"mips_dump_tdep: TARGET_HAS_HARDWARE_WATCHPOINTS # %s\0A\00", align 1
@TARGET_HAS_HARDWARE_WATCHPOINTS = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [32 x i8] c"mips_dump_tdep: V0_REGNUM = %d\0A\00", align 1
@V0_REGNUM = common dso_local global i64 0, align 8
@.str.60 = private unnamed_addr constant [38 x i8] c"mips_dump_tdep: VM_MIN_ADDRESS = %ld\0A\00", align 1
@VM_MIN_ADDRESS = common dso_local global i64 0, align 8
@.str.61 = private unnamed_addr constant [34 x i8] c"mips_dump_tdep: ZERO_REGNUM = %d\0A\00", align 1
@ZERO_REGNUM = common dso_local global i64 0, align 8
@.str.62 = private unnamed_addr constant [35 x i8] c"mips_dump_tdep: _PROC_MAGIC_ = %d\0A\00", align 1
@_PROC_MAGIC_ = common dso_local global i64 0, align 8
@MACHINE_CPROC_FP_OFFSET = common dso_local global i64 0, align 8
@MACHINE_CPROC_PC_OFFSET = common dso_local global i64 0, align 8
@MACHINE_CPROC_SP_OFFSET = common dso_local global i64 0, align 8
@SAVED_BYTES = common dso_local global i64 0, align 8
@SAVED_FP = common dso_local global i64 0, align 8
@SAVED_PC = common dso_local global i64 0, align 8
@STACK_END_ADDR = common dso_local global i64 0, align 8
@STATE = common dso_local global i32 0, align 4
@THREAD = common dso_local global i32 0, align 4
@TRACE_FLAVOR = common dso_local global i64 0, align 8
@TRACE_FLAVOR_SIZE = common dso_local global i64 0, align 8
@UNUSED_REGNUM = common dso_local global i64 0, align 8
@X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdbarch*, %struct.ui_file*)* @mips_dump_tdep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_dump_tdep(%struct.gdbarch* %0, %struct.ui_file* %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca %struct.gdbarch_tdep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %8 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %9 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %8)
  store %struct.gdbarch_tdep* %9, %struct.gdbarch_tdep** %5, align 8
  %10 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %11 = icmp ne %struct.gdbarch_tdep* %10, null
  br i1 %11, label %12, label %58

12:                                               ; preds = %2
  %13 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %14 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @EF_MIPS_ARCH, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %22 [
    i32 131, label %18
    i32 130, label %19
    i32 129, label %20
    i32 128, label %21
  ]

18:                                               ; preds = %12
  store i32 1, i32* %6, align 4
  br label %23

19:                                               ; preds = %12
  store i32 2, i32* %6, align 4
  br label %23

20:                                               ; preds = %12
  store i32 3, i32* %6, align 4
  br label %23

21:                                               ; preds = %12
  store i32 4, i32* %6, align 4
  br label %23

22:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %18
  %24 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %25 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @EF_MIPS_32BITMODE, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %30 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %31 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %41 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %42 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32*, i32** @mips_abi_strings, align 8
  %45 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %46 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %43, i32 %49)
  %51 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %52 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %53 = call i32 @mips_mask_address_p(%struct.gdbarch_tdep* %52)
  %54 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %55 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %51, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %23, %2
  %59 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %60 = load i64, i64* @FP_REGISTER_DOUBLE, align 8
  %61 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i64 %60)
  %62 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %63 = load i32, i32* @MIPS_DEFAULT_FPU_TYPE, align 4
  %64 = load i32, i32* @MIPS_DEFAULT_FPU_TYPE, align 4
  %65 = load i32, i32* @MIPS_FPU_NONE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %81

68:                                               ; preds = %58
  %69 = load i32, i32* @MIPS_DEFAULT_FPU_TYPE, align 4
  %70 = load i32, i32* @MIPS_FPU_SINGLE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %79

73:                                               ; preds = %68
  %74 = load i32, i32* @MIPS_DEFAULT_FPU_TYPE, align 4
  %75 = load i32, i32* @MIPS_FPU_DOUBLE, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  br label %79

79:                                               ; preds = %73, %72
  %80 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %72 ], [ %78, %73 ]
  br label %81

81:                                               ; preds = %79, %67
  %82 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %67 ], [ %80, %79 ]
  %83 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %62, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %63, i8* %82)
  %84 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %85 = load i64, i64* @MIPS_EABI, align 8
  %86 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i64 %85)
  %87 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %88 = load i32, i32* @MIPS_FPU_TYPE, align 4
  %89 = load i32, i32* @MIPS_FPU_TYPE, align 4
  %90 = load i32, i32* @MIPS_FPU_NONE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %106

93:                                               ; preds = %81
  %94 = load i32, i32* @MIPS_FPU_TYPE, align 4
  %95 = load i32, i32* @MIPS_FPU_SINGLE, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %104

98:                                               ; preds = %93
  %99 = load i32, i32* @MIPS_FPU_TYPE, align 4
  %100 = load i32, i32* @MIPS_FPU_DOUBLE, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  br label %104

104:                                              ; preds = %98, %97
  %105 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %97 ], [ %103, %98 ]
  br label %106

106:                                              ; preds = %104, %92
  %107 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %92 ], [ %105, %104 ]
  %108 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %88, i8* %107)
  %109 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %110 = load i64, i64* @FP_REGISTER_DOUBLE, align 8
  %111 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %109, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i64 %110)
  %112 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %113 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %114 = call i64 @mips_stack_argsize(%struct.gdbarch_tdep* %113)
  %115 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i64 %114)
  %116 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %117 = load i32, i32* @A0_REGNUM, align 4
  %118 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %117)
  %119 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %120 = load i32, i32* @ADDR, align 4
  %121 = call i32 @ADDR_BITS_REMOVE(i32 %120)
  %122 = call i64 @XSTRING(i32 %121)
  %123 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %119, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i64 %122)
  %124 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %125 = load i32, i32* @ATTACH_DETACH, align 4
  %126 = call i64 @XSTRING(i32 %125)
  %127 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i64 %126)
  %128 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %129 = load i32, i32* @REGNUM, align 4
  %130 = call i32 @DWARF_REG_TO_REGNUM(i32 %129)
  %131 = call i64 @XSTRING(i32 %130)
  %132 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i64 %131)
  %133 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %134 = load i32, i32* @REGNUM, align 4
  %135 = call i32 @ECOFF_REG_TO_REGNUM(i32 %134)
  %136 = call i64 @XSTRING(i32 %135)
  %137 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %133, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i64 %136)
  %138 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %139 = load i64, i64* @FIRST_EMBED_REGNUM, align 8
  %140 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i64 %139)
  %141 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %142 = load i32, i32* @PC, align 4
  %143 = call i32 @IGNORE_HELPER_CALL(i32 %142)
  %144 = call i64 @XSTRING(i32 %143)
  %145 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %141, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i64 %144)
  %146 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %147 = load i32, i32* @PC, align 4
  %148 = load i32, i32* @NAME, align 4
  %149 = call i32 @IN_SOLIB_CALL_TRAMPOLINE(i32 %147, i32 %148)
  %150 = call i64 @XSTRING(i32 %149)
  %151 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %146, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i64 %150)
  %152 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %153 = load i32, i32* @PC, align 4
  %154 = load i32, i32* @NAME, align 4
  %155 = call i32 @IN_SOLIB_RETURN_TRAMPOLINE(i32 %153, i32 %154)
  %156 = call i64 @XSTRING(i32 %155)
  %157 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %152, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0), i64 %156)
  %158 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %159 = load i64, i64* @LAST_EMBED_REGNUM, align 8
  %160 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %158, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i64 %159)
  %161 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %162 = load i64, i64* @MIPS16_INSTLEN, align 8
  %163 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %161, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i64 %162)
  %164 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %165 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %164, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0))
  %166 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %167 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %166, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i64 0, i64 0))
  %168 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %169 = load i64, i64* @MIPS_INSTLEN, align 8
  %170 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %168, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i64 %169)
  %171 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %172 = load i32, i32* @MIPS_LAST_ARG_REGNUM, align 4
  %173 = load i32, i32* @MIPS_LAST_ARG_REGNUM, align 4
  %174 = load i32, i32* @A0_REGNUM, align 4
  %175 = sub nsw i32 %173, %174
  %176 = add nsw i32 %175, 1
  %177 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %171, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i64 0, i64 0), i32 %172, i32 %176)
  %178 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %179 = load i64, i64* @MIPS_NUMREGS, align 8
  %180 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %178, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i64 %179)
  %181 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %182 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %183 = call i64 @mips_saved_regsize(%struct.gdbarch_tdep* %182)
  %184 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %181, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i64 0, i64 0), i64 %183)
  %185 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %186 = load i64, i64* @PRID_REGNUM, align 8
  %187 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %185, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i64 0, i64 0), i64 %186)
  %188 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %189 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %188, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.32, i64 0, i64 0))
  %190 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %191 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %190, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.33, i64 0, i64 0))
  %192 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %193 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %192, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.34, i64 0, i64 0))
  %194 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %195 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %194, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i64 0, i64 0))
  %196 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %197 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %196, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i64 0, i64 0))
  %198 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %199 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %198, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.37, i64 0, i64 0))
  %200 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %201 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %200, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.38, i64 0, i64 0))
  %202 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %203 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %202, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0))
  %204 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %205 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %204, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.40, i64 0, i64 0))
  %206 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %207 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %206, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i64 0, i64 0))
  %208 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %209 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %208, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.42, i64 0, i64 0))
  %210 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %211 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %210, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.43, i64 0, i64 0))
  %212 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %213 = load i64, i64* @PS_REGNUM, align 8
  %214 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %212, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i64 0, i64 0), i64 %213)
  %215 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %216 = load i64, i64* @RA_REGNUM, align 8
  %217 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %215, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i64 0, i64 0), i64 %216)
  %218 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %219 = load i32, i32* @NUMARGS, align 4
  %220 = load i32, i32* @ARGS, align 4
  %221 = call i32 @SETUP_ARBITRARY_FRAME(i32 %219, i32 %220)
  %222 = call i64 @XSTRING(i32 %221)
  %223 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %218, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.46, i64 0, i64 0), i64 %222)
  %224 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %225 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %224, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.47, i64 0, i64 0))
  %226 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %227 = load i32, i32* @PC, align 4
  %228 = call i32 @SKIP_TRAMPOLINE_CODE(i32 %227)
  %229 = call i64 @XSTRING(i32 %228)
  %230 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %226, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.48, i64 0, i64 0), i64 %229)
  %231 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %232 = load i32, i32* @SIG, align 4
  %233 = load i32, i32* @BP_P, align 4
  %234 = call i32 @SOFTWARE_SINGLE_STEP(i32 %232, i32 %233)
  %235 = call i64 @XSTRING(i32 %234)
  %236 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %231, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i64 0, i64 0), i64 %235)
  %237 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %238 = call i64 (...) @SOFTWARE_SINGLE_STEP_P()
  %239 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %237, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.50, i64 0, i64 0), i64 %238)
  %240 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %241 = load i32, i32* @REGNUM, align 4
  %242 = call i32 @STAB_REG_TO_REGNUM(i32 %241)
  %243 = call i64 @XSTRING(i32 %242)
  %244 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %240, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i64 %243)
  %245 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %246 = load i32, i32* @PC, align 4
  %247 = call i32 @STEP_SKIPS_DELAY(i32 %246)
  %248 = call i64 @XSTRING(i32 %247)
  %249 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %245, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0), i64 %248)
  %250 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %251 = load i64, i64* @STEP_SKIPS_DELAY_P, align 8
  %252 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %250, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.53, i64 0, i64 0), i64 %251)
  %253 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %254 = load i32, i32* @WS, align 4
  %255 = call i32 @STOPPED_BY_WATCHPOINT(i32 %254)
  %256 = call i64 @XSTRING(i32 %255)
  %257 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %253, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.54, i64 0, i64 0), i64 %256)
  %258 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %259 = load i64, i64* @T9_REGNUM, align 8
  %260 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %258, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.55, i64 0, i64 0), i64 %259)
  %261 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %262 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %261, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.56, i64 0, i64 0))
  %263 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %264 = load i32, i32* @TYPE, align 4
  %265 = load i32, i32* @CNT, align 4
  %266 = load i32, i32* @OTHERTYPE, align 4
  %267 = call i32 @TARGET_CAN_USE_HARDWARE_WATCHPOINT(i32 %264, i32 %265, i32 %266)
  %268 = call i64 @XSTRING(i32 %267)
  %269 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %263, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.57, i64 0, i64 0), i64 %268)
  %270 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %271 = load i32, i32* @TARGET_HAS_HARDWARE_WATCHPOINTS, align 4
  %272 = call i64 @XSTRING(i32 %271)
  %273 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %270, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.58, i64 0, i64 0), i64 %272)
  %274 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %275 = load i64, i64* @V0_REGNUM, align 8
  %276 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %274, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i64 0, i64 0), i64 %275)
  %277 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %278 = load i64, i64* @VM_MIN_ADDRESS, align 8
  %279 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %277, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.60, i64 0, i64 0), i64 %278)
  %280 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %281 = load i64, i64* @ZERO_REGNUM, align 8
  %282 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %280, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.61, i64 0, i64 0), i64 %281)
  %283 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %284 = load i64, i64* @_PROC_MAGIC_, align 8
  %285 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %283, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0), i64 %284)
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @fprintf_unfiltered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @mips_mask_address_p(%struct.gdbarch_tdep*) #1

declare dso_local i64 @mips_stack_argsize(%struct.gdbarch_tdep*) #1

declare dso_local i64 @XSTRING(i32) #1

declare dso_local i32 @ADDR_BITS_REMOVE(i32) #1

declare dso_local i32 @DWARF_REG_TO_REGNUM(i32) #1

declare dso_local i32 @ECOFF_REG_TO_REGNUM(i32) #1

declare dso_local i32 @IGNORE_HELPER_CALL(i32) #1

declare dso_local i32 @IN_SOLIB_CALL_TRAMPOLINE(i32, i32) #1

declare dso_local i32 @IN_SOLIB_RETURN_TRAMPOLINE(i32, i32) #1

declare dso_local i64 @mips_saved_regsize(%struct.gdbarch_tdep*) #1

declare dso_local i32 @SETUP_ARBITRARY_FRAME(i32, i32) #1

declare dso_local i32 @SKIP_TRAMPOLINE_CODE(i32) #1

declare dso_local i32 @SOFTWARE_SINGLE_STEP(i32, i32) #1

declare dso_local i64 @SOFTWARE_SINGLE_STEP_P(...) #1

declare dso_local i32 @STAB_REG_TO_REGNUM(i32) #1

declare dso_local i32 @STEP_SKIPS_DELAY(i32) #1

declare dso_local i32 @STOPPED_BY_WATCHPOINT(i32) #1

declare dso_local i32 @TARGET_CAN_USE_HARDWARE_WATCHPOINT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
