; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_append_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_append_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_cl_insn = type { i32, i32, i32, i64, %struct.TYPE_28__*, %struct.TYPE_22__**, i64, i32, %struct.TYPE_23__* }
%struct.TYPE_28__ = type { i64, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_29__ = type { i32, i32*, %struct.TYPE_22__* }
%struct.TYPE_30__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_21__ = type { i32* }
%struct.mips_hi_fixup = type { i32, %struct.TYPE_22__*, %struct.mips_hi_fixup* }
%struct.TYPE_26__ = type { i32, i64, i32 }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_25__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@now_seg = common dso_local global i32 0, align 4
@history = common dso_local global %struct.mips_cl_insn* null, align 8
@mips_relax = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@mips_opts = common dso_local global %struct.TYPE_30__ zeroinitializer, align 8
@mips_optimize = common dso_local global i32 0, align 4
@frag_now = common dso_local global i32* null, align 8
@listing = common dso_local global i64 0, align 8
@ECOFF_DEBUGGING = common dso_local global i64 0, align 8
@prev_nop_frag = common dso_local global %struct.TYPE_27__* null, align 8
@prev_nop_frag_holds = common dso_local global i32 0, align 4
@prev_nop_frag_required = common dso_local global i32 0, align 4
@prev_nop_frag_since = common dso_local global i32 0, align 4
@NOP_INSN = common dso_local global %struct.mips_cl_insn* null, align 8
@INSN_UNCOND_BRANCH_DELAY = common dso_local global i64 0, align 8
@INSN_COND_BRANCH_DELAY = common dso_local global i64 0, align 8
@INSN_COND_BRANCH_LIKELY = common dso_local global i64 0, align 8
@mips_relax_branch = common dso_local global i64 0, align 8
@mips_pic = common dso_local global i64 0, align 8
@NO_PIC = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@INSN_WRITE_GPR_31 = common dso_local global i64 0, align 8
@mips16_small = common dso_local global i32 0, align 4
@mips16_ext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"extended instruction in delay slot\00", align 1
@mips_macro_warning = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@O_constant = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"jump to misaligned address (0x%lx)\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"branch to misaligned address (0x%lx)\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"branch address range overflow (0x%lx)\00", align 1
@stdoutput = common dso_local global i32 0, align 4
@HAVE_64BIT_GPRS = common dso_local global i64 0, align 8
@BFD_RELOC_16 = common dso_local global i32 0, align 4
@BFD_RELOC_GPREL16 = common dso_local global i32 0, align 4
@BFD_RELOC_MIPS_LITERAL = common dso_local global i32 0, align 4
@BFD_RELOC_GPREL32 = common dso_local global i32 0, align 4
@BFD_RELOC_64 = common dso_local global i32 0, align 4
@BFD_RELOC_CTOR = common dso_local global i32 0, align 4
@BFD_RELOC_MIPS_SUB = common dso_local global i32 0, align 4
@BFD_RELOC_MIPS_SCN_DISP = common dso_local global i32 0, align 4
@BFD_RELOC_MIPS_REL16 = common dso_local global i32 0, align 4
@BFD_RELOC_MIPS_RELGOT = common dso_local global i32 0, align 4
@BFD_RELOC_MIPS16_GPREL = common dso_local global i32 0, align 4
@BFD_RELOC_MIPS16_HI16_S = common dso_local global i32 0, align 4
@BFD_RELOC_MIPS16_LO16 = common dso_local global i32 0, align 4
@mips_hi_fixup_list = common dso_local global %struct.mips_hi_fixup* null, align 8
@INSN_WRITE_GPR_D = common dso_local global i64 0, align 8
@RD = common dso_local global i32 0, align 4
@mips_gprmask = common dso_local global i32 0, align 4
@INSN_WRITE_GPR_T = common dso_local global i64 0, align 8
@INSN_READ_GPR_T = common dso_local global i64 0, align 8
@RT = common dso_local global i32 0, align 4
@INSN_READ_GPR_S = common dso_local global i64 0, align 8
@RS = common dso_local global i32 0, align 4
@RA = common dso_local global i32 0, align 4
@INSN_WRITE_FPR_D = common dso_local global i64 0, align 8
@FD = common dso_local global i32 0, align 4
@mips_cprmask = common dso_local global i32* null, align 8
@INSN_WRITE_FPR_S = common dso_local global i64 0, align 8
@INSN_READ_FPR_S = common dso_local global i64 0, align 8
@FS = common dso_local global i32 0, align 4
@INSN_WRITE_FPR_T = common dso_local global i64 0, align 8
@INSN_READ_FPR_T = common dso_local global i64 0, align 8
@FT = common dso_local global i32 0, align 4
@INSN_READ_FPR_R = common dso_local global i64 0, align 8
@FR = common dso_local global i32 0, align 4
@INSN_COP = common dso_local global i64 0, align 8
@MIPS16_INSN_WRITE_X = common dso_local global i64 0, align 8
@MIPS16_INSN_READ_X = common dso_local global i64 0, align 8
@RX = common dso_local global i32 0, align 4
@MIPS16_INSN_WRITE_Y = common dso_local global i64 0, align 8
@MIPS16_INSN_READ_Y = common dso_local global i64 0, align 8
@RY = common dso_local global i32 0, align 4
@MIPS16_INSN_WRITE_Z = common dso_local global i64 0, align 8
@RZ = common dso_local global i32 0, align 4
@MIPS16_INSN_WRITE_T = common dso_local global i64 0, align 8
@MIPS16_INSN_READ_T = common dso_local global i64 0, align 8
@TREG = common dso_local global i32 0, align 4
@MIPS16_INSN_WRITE_SP = common dso_local global i64 0, align 8
@MIPS16_INSN_READ_SP = common dso_local global i64 0, align 8
@SP = common dso_local global i32 0, align 4
@MIPS16_INSN_WRITE_31 = common dso_local global i64 0, align 8
@MIPS16_INSN_READ_31 = common dso_local global i64 0, align 8
@MIPS16_INSN_WRITE_GPR_Y = common dso_local global i64 0, align 8
@MIPS16_INSN_READ_Z = common dso_local global i64 0, align 8
@MOVE32Z = common dso_local global i32 0, align 4
@MIPS16_INSN_READ_GPR_X = common dso_local global i64 0, align 8
@REGR32 = common dso_local global i32 0, align 4
@rs_machine_dependent = common dso_local global i64 0, align 8
@INSN_TRAP = common dso_local global i64 0, align 8
@MIPS_GR_REG = common dso_local global i32 0, align 4
@MIPS16_REG = common dso_local global i32 0, align 4
@INSN_READ_COND_CODE = common dso_local global i64 0, align 8
@INSN_WRITE_COND_CODE = common dso_local global i64 0, align 8
@MIPS16_INSN_READ_PC = common dso_local global i64 0, align 8
@INSN_SYNC = common dso_local global i64 0, align 8
@ISA_SUPPORTS_MIPS16E = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips_cl_insn*, %struct.TYPE_26__*, i32*)* @append_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_insn(%struct.mips_cl_insn* %0, %struct.TYPE_26__* %1, i32* %2) #0 {
  %4 = alloca %struct.mips_cl_insn*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.mips_hi_fixup*, align 8
  %21 = alloca %struct.mips_cl_insn, align 8
  store %struct.mips_cl_insn* %0, %struct.mips_cl_insn** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %9, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i32, i32* @now_seg, align 4
  %24 = call %struct.TYPE_24__* @seg_info(i32 %23)
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %11, align 8
  %25 = call i32 (...) @mips16_mark_labels()
  %26 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %27 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %26, i64 0
  %28 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %27, i32 0, i32 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %33 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %32, i32 0, i32 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @mips_relax, i32 0, i32 0), align 8
  %38 = icmp ne i32 %37, 2
  br i1 %38, label %39, label %85

39:                                               ; preds = %3
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 2), align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %85, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @mips_optimize, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %47 = call i64 @nops_for_insn(%struct.mips_cl_insn* %46, %struct.mips_cl_insn* null)
  br label %52

48:                                               ; preds = %42
  %49 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %50 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %51 = call i64 @nops_for_insn_or_target(%struct.mips_cl_insn* %49, %struct.mips_cl_insn* %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i64 [ %47, %45 ], [ %51, %48 ]
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %52
  %58 = load i32*, i32** @frag_now, align 8
  store i32* %58, i32** %13, align 8
  %59 = call i64 (...) @frag_now_fix()
  store i64 %59, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %66, %57
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = call i32 (...) @emit_nop()
  br label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  br label %60

69:                                               ; preds = %60
  %70 = load i64, i64* @listing, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = call i32 (...) @listing_prev_line()
  %74 = call i32 @frag_grow(i32 40)
  br label %75

75:                                               ; preds = %72, %69
  %76 = call i32 (...) @mips_move_labels()
  %77 = load i64, i64* @ECOFF_DEBUGGING, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32*, i32** %13, align 8
  %81 = load i64, i64* %14, align 8
  %82 = call i32 @ecoff_fix_loc(i32* %80, i64 %81)
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %52
  br label %130

85:                                               ; preds = %39, %3
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @mips_relax, i32 0, i32 0), align 8
  %87 = icmp ne i32 %86, 2
  br i1 %87, label %88, label %129

88:                                               ; preds = %85
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** @prev_nop_frag, align 8
  %90 = icmp ne %struct.TYPE_27__* %89, null
  br i1 %90, label %91, label %129

91:                                               ; preds = %88
  %92 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %93 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %94 = call i64 @nops_for_insn_or_target(%struct.mips_cl_insn* %92, %struct.mips_cl_insn* %93)
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @prev_nop_frag_holds, align 4
  %98 = icmp sle i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @prev_nop_frag_required, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %91
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* @prev_nop_frag_required, align 4
  br label %106

106:                                              ; preds = %104, %91
  %107 = load i32, i32* @prev_nop_frag_holds, align 4
  %108 = load i32, i32* @prev_nop_frag_required, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  store %struct.TYPE_27__* null, %struct.TYPE_27__** @prev_nop_frag, align 8
  %111 = load i32, i32* @prev_nop_frag_since, align 4
  %112 = load i32, i32* @prev_nop_frag_holds, align 4
  %113 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @NOP_INSN, align 8
  %114 = call i32 @insert_into_history(i32 %111, i32 %112, %struct.mips_cl_insn* %113)
  br label %128

115:                                              ; preds = %106
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 2, i32 4
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** @prev_nop_frag, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* @prev_nop_frag_holds, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* @prev_nop_frag_holds, align 4
  %126 = load i32, i32* @prev_nop_frag_since, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @prev_nop_frag_since, align 4
  br label %128

128:                                              ; preds = %115, %110
  br label %129

129:                                              ; preds = %128, %88, %85
  br label %130

130:                                              ; preds = %129, %84
  %131 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %132 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %131, i64 0
  %133 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %132, i32 0, i32 4
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %133, align 8
  %135 = icmp ne %struct.TYPE_28__* %134, null
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %138 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %137, i64 0
  %139 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %138, i32 0, i32 4
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %9, align 8
  br label %143

143:                                              ; preds = %136, %130
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %145 = icmp ne %struct.TYPE_26__* %144, null
  br i1 %145, label %146, label %217

146:                                              ; preds = %143
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 138
  br i1 %149, label %150, label %217

150:                                              ; preds = %146
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* @INSN_UNCOND_BRANCH_DELAY, align 8
  %153 = and i64 %151, %152
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %150
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* @INSN_COND_BRANCH_DELAY, align 8
  %158 = and i64 %156, %157
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %155
  %161 = load i64, i64* %8, align 8
  %162 = load i64, i64* @INSN_COND_BRANCH_LIKELY, align 8
  %163 = and i64 %161, %162
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %217

165:                                              ; preds = %160, %155, %150
  %166 = load i64, i64* @mips_relax_branch, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %217

168:                                              ; preds = %165
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 4), align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %217, label %171

171:                                              ; preds = %168
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 3), align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i64, i64* @mips_pic, align 8
  %176 = load i64, i64* @NO_PIC, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %217, label %178

178:                                              ; preds = %174, %171
  %179 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %217, label %181

181:                                              ; preds = %178
  %182 = load i64, i64* @TRUE, align 8
  store i64 %182, i64* %10, align 8
  %183 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i64, i64* @INSN_UNCOND_BRANCH_DELAY, align 8
  %186 = and i64 %184, %185
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  br label %196

189:                                              ; preds = %181
  %190 = load i64, i64* %8, align 8
  %191 = load i64, i64* @INSN_COND_BRANCH_LIKELY, align 8
  %192 = and i64 %190, %191
  %193 = icmp ne i64 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 1, i32 0
  br label %196

196:                                              ; preds = %189, %188
  %197 = phi i32 [ -1, %188 ], [ %195, %189 ]
  %198 = call i32 @relaxed_branch_length(i32* null, i32* null, i32 %197)
  %199 = load i64, i64* %8, align 8
  %200 = load i64, i64* @INSN_UNCOND_BRANCH_DELAY, align 8
  %201 = and i64 %199, %200
  %202 = load i64, i64* %8, align 8
  %203 = load i64, i64* @INSN_COND_BRANCH_LIKELY, align 8
  %204 = and i64 %202, %203
  %205 = load i64, i64* %8, align 8
  %206 = load i64, i64* @INSN_WRITE_GPR_31, align 8
  %207 = and i64 %205, %206
  %208 = call i32 @RELAX_BRANCH_ENCODE(i64 %201, i64 %204, i64 %207, i32 0)
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @add_relaxed_insn(%struct.mips_cl_insn* %183, i32 %198, i32 4, i32 %208, i32 %211, i32 %214)
  %216 = load i32*, i32** %6, align 8
  store i32 128, i32* %216, align 4
  br label %333

217:                                              ; preds = %178, %174, %168, %165, %160, %146, %143
  %218 = load i32*, i32** %6, align 8
  %219 = load i32, i32* %218, align 4
  %220 = icmp sgt i32 %219, 128
  br i1 %220, label %221, label %248

221:                                              ; preds = %217
  %222 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %226 = icmp ne %struct.TYPE_26__* %225, null
  br label %227

227:                                              ; preds = %224, %221
  %228 = phi i1 [ false, %221 ], [ %226, %224 ]
  %229 = zext i1 %228 to i32
  %230 = call i32 @assert(i32 %229)
  %231 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %232 = load i32*, i32** %6, align 8
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %233, 128
  %235 = load i32, i32* @mips16_small, align 4
  %236 = load i32, i32* @mips16_ext, align 4
  %237 = load i64, i64* %7, align 8
  %238 = load i64, i64* @INSN_UNCOND_BRANCH_DELAY, align 8
  %239 = and i64 %237, %238
  %240 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %241 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %240, i64 0
  %242 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @RELAX_MIPS16_ENCODE(i32 %234, i32 %235, i32 %236, i64 %239, i32 %243)
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %246 = call i32 @make_expr_symbol(%struct.TYPE_26__* %245)
  %247 = call i32 @add_relaxed_insn(%struct.mips_cl_insn* %231, i32 4, i32 0, i32 %244, i32 %246, i32 0)
  br label %332

248:                                              ; preds = %217
  %249 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %270

251:                                              ; preds = %248
  %252 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %253 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %252, i32 0, i32 7
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %270, label %256

256:                                              ; preds = %251
  %257 = load i32*, i32** %6, align 8
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 133
  br i1 %259, label %260, label %270

260:                                              ; preds = %256
  %261 = load i64, i64* %8, align 8
  %262 = load i64, i64* @INSN_UNCOND_BRANCH_DELAY, align 8
  %263 = and i64 %261, %262
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %260
  %266 = call i32 @frag_grow(i32 6)
  br label %267

267:                                              ; preds = %265, %260
  %268 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %269 = call i32 @add_fixed_insn(%struct.mips_cl_insn* %268)
  br label %331

270:                                              ; preds = %256, %251, %248
  %271 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %284

273:                                              ; preds = %270
  %274 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 2), align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %273
  %277 = load i64, i64* %7, align 8
  %278 = load i64, i64* @INSN_UNCOND_BRANCH_DELAY, align 8
  %279 = and i64 %277, %278
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %276
  %282 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %283 = call i32 @as_warn(i32 %282)
  br label %284

284:                                              ; preds = %281, %276, %273, %270
  %285 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @mips_relax, i32 0, i32 0), align 8
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %300

287:                                              ; preds = %284
  %288 = call i32 (...) @frag_room()
  %289 = icmp slt i32 %288, 4
  br i1 %289, label %290, label %292

290:                                              ; preds = %287
  %291 = call i32 (...) @relax_close_frag()
  br label %292

292:                                              ; preds = %290, %287
  %293 = load i32*, i32** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @mips_relax, i32 0, i32 1), align 8
  %294 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @mips_relax, i32 0, i32 0), align 8
  %295 = sub nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %293, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = add nsw i32 %298, 4
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %292, %284
  %301 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @mips_relax, i32 0, i32 0), align 8
  %302 = icmp ne i32 %301, 2
  br i1 %302, label %303, label %308

303:                                              ; preds = %300
  %304 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @mips_macro_warning, i32 0, i32 0), align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %306, 4
  store i32 %307, i32* %305, align 4
  br label %308

308:                                              ; preds = %303, %300
  %309 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @mips_relax, i32 0, i32 0), align 8
  %310 = icmp ne i32 %309, 1
  br i1 %310, label %311, label %316

311:                                              ; preds = %308
  %312 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @mips_macro_warning, i32 0, i32 0), align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 1
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %314, 4
  store i32 %315, i32* %313, align 4
  br label %316

316:                                              ; preds = %311, %308
  %317 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %328

319:                                              ; preds = %316
  %320 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %321 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %320, i32 0, i32 1
  store i32 1, i32* %321, align 4
  %322 = load i32*, i32** %6, align 8
  %323 = load i32, i32* %322, align 4
  %324 = icmp eq i32 %323, 133
  %325 = zext i1 %324 to i32
  %326 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %327 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %326, i32 0, i32 0
  store i32 %325, i32* %327, align 8
  br label %328

328:                                              ; preds = %319, %316
  %329 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %330 = call i32 @add_fixed_insn(%struct.mips_cl_insn* %329)
  br label %331

331:                                              ; preds = %328, %267
  br label %332

332:                                              ; preds = %331, %227
  br label %333

333:                                              ; preds = %332, %196
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %335 = icmp ne %struct.TYPE_26__* %334, null
  br i1 %335, label %336, label %821

336:                                              ; preds = %333
  %337 = load i32*, i32** %6, align 8
  %338 = load i32, i32* %337, align 4
  %339 = icmp sle i32 %338, 128
  br i1 %339, label %340, label %821

340:                                              ; preds = %336
  %341 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @O_constant, align 8
  %345 = icmp eq i64 %343, %344
  br i1 %345, label %346, label %518

346:                                              ; preds = %340
  %347 = load i32*, i32** %6, align 8
  %348 = load i32, i32* %347, align 4
  switch i32 %348, label %515 [
    i32 137, label %349
    i32 130, label %357
    i32 131, label %371
    i32 135, label %385
    i32 136, label %397
    i32 128, label %407
    i32 134, label %407
    i32 132, label %407
    i32 129, label %416
    i32 133, label %439
    i32 138, label %474
  ]

349:                                              ; preds = %346
  %350 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %354 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = or i32 %355, %352
  store i32 %356, i32* %354, align 8
  br label %517

357:                                              ; preds = %346
  %358 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = zext i32 %360 to i64
  %362 = add i64 %361, 140739635871744
  %363 = lshr i64 %362, 48
  %364 = trunc i64 %363 to i32
  store i32 %364, i32* %17, align 4
  %365 = load i32, i32* %17, align 4
  %366 = and i32 %365, 65535
  %367 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %368 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = or i32 %369, %366
  store i32 %370, i32* %368, align 8
  br label %517

371:                                              ; preds = %346
  %372 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = zext i32 %374 to i64
  %376 = add i64 %375, 2147516416
  %377 = lshr i64 %376, 32
  %378 = trunc i64 %377 to i32
  store i32 %378, i32* %17, align 4
  %379 = load i32, i32* %17, align 4
  %380 = and i32 %379, 65535
  %381 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %382 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = or i32 %383, %380
  store i32 %384, i32* %382, align 8
  br label %517

385:                                              ; preds = %346
  %386 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = add i32 %388, 32768
  %390 = lshr i32 %389, 16
  store i32 %390, i32* %17, align 4
  %391 = load i32, i32* %17, align 4
  %392 = and i32 %391, 65535
  %393 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %394 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = or i32 %395, %392
  store i32 %396, i32* %394, align 8
  br label %517

397:                                              ; preds = %346
  %398 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = lshr i32 %400, 16
  %402 = and i32 %401, 65535
  %403 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %404 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 8
  %406 = or i32 %405, %402
  store i32 %406, i32* %404, align 8
  br label %517

407:                                              ; preds = %346, %346, %346
  %408 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = and i32 %410, 65535
  %412 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %413 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = or i32 %414, %411
  store i32 %415, i32* %413, align 8
  br label %517

416:                                              ; preds = %346
  %417 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = and i32 %419, 3
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %429

422:                                              ; preds = %416
  %423 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %424 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = zext i32 %426 to i64
  %428 = call i32 @as_bad(i32 %423, i64 %427)
  br label %429

429:                                              ; preds = %422, %416
  %430 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = lshr i32 %432, 2
  %434 = and i32 %433, 67108863
  %435 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %436 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 8
  %438 = or i32 %437, %434
  store i32 %438, i32* %436, align 8
  br label %517

439:                                              ; preds = %346
  %440 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = and i32 %442, 3
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %452

445:                                              ; preds = %439
  %446 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %447 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %448 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = zext i32 %449 to i64
  %451 = call i32 @as_bad(i32 %446, i64 %450)
  br label %452

452:                                              ; preds = %445, %439
  %453 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = and i32 %455, 8126464
  %457 = shl i32 %456, 3
  %458 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %459 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = and i32 %460, 260046848
  %462 = lshr i32 %461, 7
  %463 = or i32 %457, %462
  %464 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = and i32 %466, 262140
  %468 = lshr i32 %467, 2
  %469 = or i32 %463, %468
  %470 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %471 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = or i32 %472, %469
  store i32 %473, i32* %471, align 8
  br label %517

474:                                              ; preds = %346
  %475 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = and i32 %477, 3
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %487

480:                                              ; preds = %474
  %481 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %482 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %483 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = zext i32 %484 to i64
  %486 = call i32 @as_bad(i32 %481, i64 %485)
  br label %487

487:                                              ; preds = %480, %474
  %488 = load i64, i64* @mips_relax_branch, align 8
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %491

490:                                              ; preds = %487
  br label %523

491:                                              ; preds = %487
  %492 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %493 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = add i32 %494, 131072
  %496 = and i32 %495, -262144
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %505

498:                                              ; preds = %491
  %499 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %500 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %501 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = zext i32 %502 to i64
  %504 = call i32 @as_bad(i32 %499, i64 %503)
  br label %505

505:                                              ; preds = %498, %491
  %506 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %507 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = lshr i32 %508, 2
  %510 = and i32 %509, 65535
  %511 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %512 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 8
  %514 = or i32 %513, %510
  store i32 %514, i32* %512, align 8
  br label %517

515:                                              ; preds = %346
  %516 = call i32 (...) @internalError()
  br label %517

517:                                              ; preds = %515, %505, %452, %429, %407, %397, %385, %371, %357, %349
  br label %820

518:                                              ; preds = %340
  %519 = load i32*, i32** %6, align 8
  %520 = load i32, i32* %519, align 4
  %521 = icmp slt i32 %520, 128
  br i1 %521, label %522, label %819

522:                                              ; preds = %518
  br label %523

523:                                              ; preds = %522, %490
  store i32 1, i32* %19, align 4
  br label %524

524:                                              ; preds = %536, %523
  %525 = load i32, i32* %19, align 4
  %526 = icmp slt i32 %525, 3
  br i1 %526, label %527, label %539

527:                                              ; preds = %524
  %528 = load i32*, i32** %6, align 8
  %529 = load i32, i32* %19, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32, i32* %528, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = icmp eq i32 %532, 128
  br i1 %533, label %534, label %535

534:                                              ; preds = %527
  br label %539

535:                                              ; preds = %527
  br label %536

536:                                              ; preds = %535
  %537 = load i32, i32* %19, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %19, align 4
  br label %524

539:                                              ; preds = %534, %524
  %540 = load i32, i32* @stdoutput, align 4
  %541 = load i32*, i32** %6, align 8
  %542 = load i32, i32* %19, align 4
  %543 = sub nsw i32 %542, 1
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i32, i32* %541, i64 %544
  %546 = load i32, i32* %545, align 4
  %547 = call %struct.TYPE_25__* @bfd_reloc_type_lookup(i32 %540, i32 %546)
  store %struct.TYPE_25__* %547, %struct.TYPE_25__** %18, align 8
  %548 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %549 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %548, i32 0, i32 4
  %550 = load %struct.TYPE_28__*, %struct.TYPE_28__** %549, align 8
  %551 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %552 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %551, i32 0, i32 3
  %553 = load i64, i64* %552, align 8
  %554 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %555 = call i32 @bfd_get_reloc_size(%struct.TYPE_25__* %554)
  %556 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %557 = load i32*, i32** %6, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 0
  %559 = load i32, i32* %558, align 4
  %560 = icmp eq i32 %559, 138
  %561 = zext i1 %560 to i32
  %562 = load i32*, i32** %6, align 8
  %563 = getelementptr inbounds i32, i32* %562, i64 0
  %564 = load i32, i32* %563, align 4
  %565 = call %struct.TYPE_22__* @fix_new_exp(%struct.TYPE_28__* %550, i64 %553, i32 %555, %struct.TYPE_26__* %556, i32 %561, i32 %564)
  %566 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %567 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %566, i32 0, i32 5
  %568 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %567, align 8
  %569 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %568, i64 0
  store %struct.TYPE_22__* %565, %struct.TYPE_22__** %569, align 8
  %570 = load i32*, i32** %6, align 8
  %571 = getelementptr inbounds i32, i32* %570, i64 0
  %572 = load i32, i32* %571, align 4
  %573 = icmp eq i32 %572, 133
  br i1 %573, label %574, label %592

574:                                              ; preds = %539
  %575 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %576 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %575, i32 0, i32 5
  %577 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %576, align 8
  %578 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %577, i64 0
  %579 = load %struct.TYPE_22__*, %struct.TYPE_22__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %579, i32 0, i32 3
  %581 = load i64, i64* %580, align 8
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %592

583:                                              ; preds = %574
  %584 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %585 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %584, i32 0, i32 5
  %586 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %585, align 8
  %587 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %586, i64 0
  %588 = load %struct.TYPE_22__*, %struct.TYPE_22__** %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %588, i32 0, i32 3
  %590 = load i64, i64* %589, align 8
  %591 = call i32* @symbol_get_tc(i64 %590)
  store i32 1, i32* %591, align 4
  br label %592

592:                                              ; preds = %583, %574, %539
  %593 = load i64, i64* @HAVE_64BIT_GPRS, align 8
  %594 = icmp ne i64 %593, 0
  br i1 %594, label %595, label %715

595:                                              ; preds = %592
  %596 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %597 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %715, label %600

600:                                              ; preds = %595
  %601 = load i32*, i32** %6, align 8
  %602 = getelementptr inbounds i32, i32* %601, i64 0
  %603 = load i32, i32* %602, align 4
  %604 = load i32, i32* @BFD_RELOC_16, align 4
  %605 = icmp eq i32 %603, %604
  br i1 %605, label %708, label %606

606:                                              ; preds = %600
  %607 = load i32*, i32** %6, align 8
  %608 = getelementptr inbounds i32, i32* %607, i64 0
  %609 = load i32, i32* %608, align 4
  %610 = icmp eq i32 %609, 137
  br i1 %610, label %708, label %611

611:                                              ; preds = %606
  %612 = load i32*, i32** %6, align 8
  %613 = getelementptr inbounds i32, i32* %612, i64 0
  %614 = load i32, i32* %613, align 4
  %615 = icmp eq i32 %614, 129
  br i1 %615, label %708, label %616

616:                                              ; preds = %611
  %617 = load i32*, i32** %6, align 8
  %618 = getelementptr inbounds i32, i32* %617, i64 0
  %619 = load i32, i32* %618, align 4
  %620 = icmp eq i32 %619, 135
  br i1 %620, label %708, label %621

621:                                              ; preds = %616
  %622 = load i32*, i32** %6, align 8
  %623 = getelementptr inbounds i32, i32* %622, i64 0
  %624 = load i32, i32* %623, align 4
  %625 = icmp eq i32 %624, 134
  br i1 %625, label %708, label %626

626:                                              ; preds = %621
  %627 = load i32*, i32** %6, align 8
  %628 = getelementptr inbounds i32, i32* %627, i64 0
  %629 = load i32, i32* %628, align 4
  %630 = load i32, i32* @BFD_RELOC_GPREL16, align 4
  %631 = icmp eq i32 %629, %630
  br i1 %631, label %708, label %632

632:                                              ; preds = %626
  %633 = load i32*, i32** %6, align 8
  %634 = getelementptr inbounds i32, i32* %633, i64 0
  %635 = load i32, i32* %634, align 4
  %636 = load i32, i32* @BFD_RELOC_MIPS_LITERAL, align 4
  %637 = icmp eq i32 %635, %636
  br i1 %637, label %708, label %638

638:                                              ; preds = %632
  %639 = load i32*, i32** %6, align 8
  %640 = getelementptr inbounds i32, i32* %639, i64 0
  %641 = load i32, i32* %640, align 4
  %642 = load i32, i32* @BFD_RELOC_GPREL32, align 4
  %643 = icmp eq i32 %641, %642
  br i1 %643, label %708, label %644

644:                                              ; preds = %638
  %645 = load i32*, i32** %6, align 8
  %646 = getelementptr inbounds i32, i32* %645, i64 0
  %647 = load i32, i32* %646, align 4
  %648 = load i32, i32* @BFD_RELOC_64, align 4
  %649 = icmp eq i32 %647, %648
  br i1 %649, label %708, label %650

650:                                              ; preds = %644
  %651 = load i32*, i32** %6, align 8
  %652 = getelementptr inbounds i32, i32* %651, i64 0
  %653 = load i32, i32* %652, align 4
  %654 = load i32, i32* @BFD_RELOC_CTOR, align 4
  %655 = icmp eq i32 %653, %654
  br i1 %655, label %708, label %656

656:                                              ; preds = %650
  %657 = load i32*, i32** %6, align 8
  %658 = getelementptr inbounds i32, i32* %657, i64 0
  %659 = load i32, i32* %658, align 4
  %660 = load i32, i32* @BFD_RELOC_MIPS_SUB, align 4
  %661 = icmp eq i32 %659, %660
  br i1 %661, label %708, label %662

662:                                              ; preds = %656
  %663 = load i32*, i32** %6, align 8
  %664 = getelementptr inbounds i32, i32* %663, i64 0
  %665 = load i32, i32* %664, align 4
  %666 = icmp eq i32 %665, 130
  br i1 %666, label %708, label %667

667:                                              ; preds = %662
  %668 = load i32*, i32** %6, align 8
  %669 = getelementptr inbounds i32, i32* %668, i64 0
  %670 = load i32, i32* %669, align 4
  %671 = icmp eq i32 %670, 131
  br i1 %671, label %708, label %672

672:                                              ; preds = %667
  %673 = load i32*, i32** %6, align 8
  %674 = getelementptr inbounds i32, i32* %673, i64 0
  %675 = load i32, i32* %674, align 4
  %676 = load i32, i32* @BFD_RELOC_MIPS_SCN_DISP, align 4
  %677 = icmp eq i32 %675, %676
  br i1 %677, label %708, label %678

678:                                              ; preds = %672
  %679 = load i32*, i32** %6, align 8
  %680 = getelementptr inbounds i32, i32* %679, i64 0
  %681 = load i32, i32* %680, align 4
  %682 = load i32, i32* @BFD_RELOC_MIPS_REL16, align 4
  %683 = icmp eq i32 %681, %682
  br i1 %683, label %708, label %684

684:                                              ; preds = %678
  %685 = load i32*, i32** %6, align 8
  %686 = getelementptr inbounds i32, i32* %685, i64 0
  %687 = load i32, i32* %686, align 4
  %688 = load i32, i32* @BFD_RELOC_MIPS_RELGOT, align 4
  %689 = icmp eq i32 %687, %688
  br i1 %689, label %708, label %690

690:                                              ; preds = %684
  %691 = load i32*, i32** %6, align 8
  %692 = getelementptr inbounds i32, i32* %691, i64 0
  %693 = load i32, i32* %692, align 4
  %694 = load i32, i32* @BFD_RELOC_MIPS16_GPREL, align 4
  %695 = icmp eq i32 %693, %694
  br i1 %695, label %708, label %696

696:                                              ; preds = %690
  %697 = load i32*, i32** %6, align 8
  %698 = getelementptr inbounds i32, i32* %697, i64 0
  %699 = load i32, i32* %698, align 4
  %700 = load i32, i32* @BFD_RELOC_MIPS16_HI16_S, align 4
  %701 = icmp eq i32 %699, %700
  br i1 %701, label %708, label %702

702:                                              ; preds = %696
  %703 = load i32*, i32** %6, align 8
  %704 = getelementptr inbounds i32, i32* %703, i64 0
  %705 = load i32, i32* %704, align 4
  %706 = load i32, i32* @BFD_RELOC_MIPS16_LO16, align 4
  %707 = icmp eq i32 %705, %706
  br i1 %707, label %708, label %715

708:                                              ; preds = %702, %696, %690, %684, %678, %672, %667, %662, %656, %650, %644, %638, %632, %626, %621, %616, %611, %606, %600
  %709 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %710 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %709, i32 0, i32 5
  %711 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %710, align 8
  %712 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %711, i64 0
  %713 = load %struct.TYPE_22__*, %struct.TYPE_22__** %712, align 8
  %714 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %713, i32 0, i32 0
  store i32 1, i32* %714, align 8
  br label %715

715:                                              ; preds = %708, %702, %595, %592
  %716 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @mips_relax, i32 0, i32 0), align 8
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %718, label %728

718:                                              ; preds = %715
  %719 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @mips_relax, i32 0, i32 2), align 8
  %720 = icmp eq %struct.TYPE_22__* %719, null
  br i1 %720, label %721, label %727

721:                                              ; preds = %718
  %722 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %723 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %722, i32 0, i32 5
  %724 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %723, align 8
  %725 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %724, i64 0
  %726 = load %struct.TYPE_22__*, %struct.TYPE_22__** %725, align 8
  store %struct.TYPE_22__* %726, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @mips_relax, i32 0, i32 2), align 8
  br label %727

727:                                              ; preds = %721, %718
  br label %762

728:                                              ; preds = %715
  %729 = load i32*, i32** %6, align 8
  %730 = load i32, i32* %729, align 4
  %731 = call i64 @reloc_needs_lo_p(i32 %730)
  %732 = icmp ne i64 %731, 0
  br i1 %732, label %733, label %761

733:                                              ; preds = %728
  %734 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** @mips_hi_fixup_list, align 8
  store %struct.mips_hi_fixup* %734, %struct.mips_hi_fixup** %20, align 8
  %735 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %20, align 8
  %736 = icmp eq %struct.mips_hi_fixup* %735, null
  br i1 %736, label %743, label %737

737:                                              ; preds = %733
  %738 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %20, align 8
  %739 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %738, i32 0, i32 1
  %740 = load %struct.TYPE_22__*, %struct.TYPE_22__** %739, align 8
  %741 = call i32 @fixup_has_matching_lo_p(%struct.TYPE_22__* %740)
  %742 = icmp ne i32 %741, 0
  br i1 %742, label %750, label %743

743:                                              ; preds = %737, %733
  %744 = call i64 @xmalloc(i32 24)
  %745 = inttoptr i64 %744 to %struct.mips_hi_fixup*
  store %struct.mips_hi_fixup* %745, %struct.mips_hi_fixup** %20, align 8
  %746 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** @mips_hi_fixup_list, align 8
  %747 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %20, align 8
  %748 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %747, i32 0, i32 2
  store %struct.mips_hi_fixup* %746, %struct.mips_hi_fixup** %748, align 8
  %749 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %20, align 8
  store %struct.mips_hi_fixup* %749, %struct.mips_hi_fixup** @mips_hi_fixup_list, align 8
  br label %750

750:                                              ; preds = %743, %737
  %751 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %752 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %751, i32 0, i32 5
  %753 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %752, align 8
  %754 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %753, i64 0
  %755 = load %struct.TYPE_22__*, %struct.TYPE_22__** %754, align 8
  %756 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %20, align 8
  %757 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %756, i32 0, i32 1
  store %struct.TYPE_22__* %755, %struct.TYPE_22__** %757, align 8
  %758 = load i32, i32* @now_seg, align 4
  %759 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %20, align 8
  %760 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %759, i32 0, i32 0
  store i32 %758, i32* %760, align 8
  br label %761

761:                                              ; preds = %750, %728
  br label %762

762:                                              ; preds = %761, %727
  store i32 1, i32* %19, align 4
  br label %763

763:                                              ; preds = %815, %762
  %764 = load i32, i32* %19, align 4
  %765 = icmp slt i32 %764, 3
  br i1 %765, label %766, label %818

766:                                              ; preds = %763
  %767 = load i32*, i32** %6, align 8
  %768 = load i32, i32* %19, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds i32, i32* %767, i64 %769
  %771 = load i32, i32* %770, align 4
  %772 = icmp ne i32 %771, 128
  br i1 %772, label %773, label %814

773:                                              ; preds = %766
  %774 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %775 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %774, i32 0, i32 4
  %776 = load %struct.TYPE_28__*, %struct.TYPE_28__** %775, align 8
  %777 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %778 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %777, i32 0, i32 3
  %779 = load i64, i64* %778, align 8
  %780 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %781 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %780, i32 0, i32 5
  %782 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %781, align 8
  %783 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %782, i64 0
  %784 = load %struct.TYPE_22__*, %struct.TYPE_22__** %783, align 8
  %785 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %784, i32 0, i32 2
  %786 = load i32, i32* %785, align 8
  %787 = load i64, i64* @FALSE, align 8
  %788 = load i32*, i32** %6, align 8
  %789 = load i32, i32* %19, align 4
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds i32, i32* %788, i64 %790
  %792 = load i32, i32* %791, align 4
  %793 = call %struct.TYPE_22__* @fix_new(%struct.TYPE_28__* %776, i64 %779, i32 %786, i32* null, i32 0, i64 %787, i32 %792)
  %794 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %795 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %794, i32 0, i32 5
  %796 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %795, align 8
  %797 = load i32, i32* %19, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %796, i64 %798
  store %struct.TYPE_22__* %793, %struct.TYPE_22__** %799, align 8
  %800 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %801 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %800, i32 0, i32 5
  %802 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %801, align 8
  %803 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %802, i64 0
  %804 = load %struct.TYPE_22__*, %struct.TYPE_22__** %803, align 8
  %805 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %804, i32 0, i32 1
  store i32 1, i32* %805, align 4
  %806 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %807 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %806, i32 0, i32 5
  %808 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %807, align 8
  %809 = load i32, i32* %19, align 4
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %808, i64 %810
  %812 = load %struct.TYPE_22__*, %struct.TYPE_22__** %811, align 8
  %813 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %812, i32 0, i32 1
  store i32 1, i32* %813, align 4
  br label %814

814:                                              ; preds = %773, %766
  br label %815

815:                                              ; preds = %814
  %816 = load i32, i32* %19, align 4
  %817 = add nsw i32 %816, 1
  store i32 %817, i32* %19, align 4
  br label %763

818:                                              ; preds = %763
  br label %819

819:                                              ; preds = %818, %518
  br label %820

820:                                              ; preds = %819, %517
  br label %821

821:                                              ; preds = %820, %336, %333
  %822 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %823 = call i32 @install_insn(%struct.mips_cl_insn* %822)
  %824 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %825 = icmp ne i64 %824, 0
  br i1 %825, label %943, label %826

826:                                              ; preds = %821
  %827 = load i64, i64* %8, align 8
  %828 = load i64, i64* @INSN_WRITE_GPR_D, align 8
  %829 = and i64 %827, %828
  %830 = icmp ne i64 %829, 0
  br i1 %830, label %831, label %838

831:                                              ; preds = %826
  %832 = load i32, i32* @RD, align 4
  %833 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %834 = call i32 @EXTRACT_OPERAND(i32 %832, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %833)
  %835 = shl i32 1, %834
  %836 = load i32, i32* @mips_gprmask, align 4
  %837 = or i32 %836, %835
  store i32 %837, i32* @mips_gprmask, align 4
  br label %838

838:                                              ; preds = %831, %826
  %839 = load i64, i64* %8, align 8
  %840 = load i64, i64* @INSN_WRITE_GPR_T, align 8
  %841 = load i64, i64* @INSN_READ_GPR_T, align 8
  %842 = or i64 %840, %841
  %843 = and i64 %839, %842
  %844 = icmp ne i64 %843, 0
  br i1 %844, label %845, label %852

845:                                              ; preds = %838
  %846 = load i32, i32* @RT, align 4
  %847 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %848 = call i32 @EXTRACT_OPERAND(i32 %846, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %847)
  %849 = shl i32 1, %848
  %850 = load i32, i32* @mips_gprmask, align 4
  %851 = or i32 %850, %849
  store i32 %851, i32* @mips_gprmask, align 4
  br label %852

852:                                              ; preds = %845, %838
  %853 = load i64, i64* %8, align 8
  %854 = load i64, i64* @INSN_READ_GPR_S, align 8
  %855 = and i64 %853, %854
  %856 = icmp ne i64 %855, 0
  br i1 %856, label %857, label %864

857:                                              ; preds = %852
  %858 = load i32, i32* @RS, align 4
  %859 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %860 = call i32 @EXTRACT_OPERAND(i32 %858, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %859)
  %861 = shl i32 1, %860
  %862 = load i32, i32* @mips_gprmask, align 4
  %863 = or i32 %862, %861
  store i32 %863, i32* @mips_gprmask, align 4
  br label %864

864:                                              ; preds = %857, %852
  %865 = load i64, i64* %8, align 8
  %866 = load i64, i64* @INSN_WRITE_GPR_31, align 8
  %867 = and i64 %865, %866
  %868 = icmp ne i64 %867, 0
  br i1 %868, label %869, label %874

869:                                              ; preds = %864
  %870 = load i32, i32* @RA, align 4
  %871 = shl i32 1, %870
  %872 = load i32, i32* @mips_gprmask, align 4
  %873 = or i32 %872, %871
  store i32 %873, i32* @mips_gprmask, align 4
  br label %874

874:                                              ; preds = %869, %864
  %875 = load i64, i64* %8, align 8
  %876 = load i64, i64* @INSN_WRITE_FPR_D, align 8
  %877 = and i64 %875, %876
  %878 = icmp ne i64 %877, 0
  br i1 %878, label %879, label %888

879:                                              ; preds = %874
  %880 = load i32, i32* @FD, align 4
  %881 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %882 = call i32 @EXTRACT_OPERAND(i32 %880, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %881)
  %883 = shl i32 1, %882
  %884 = load i32*, i32** @mips_cprmask, align 8
  %885 = getelementptr inbounds i32, i32* %884, i64 1
  %886 = load i32, i32* %885, align 4
  %887 = or i32 %886, %883
  store i32 %887, i32* %885, align 4
  br label %888

888:                                              ; preds = %879, %874
  %889 = load i64, i64* %8, align 8
  %890 = load i64, i64* @INSN_WRITE_FPR_S, align 8
  %891 = load i64, i64* @INSN_READ_FPR_S, align 8
  %892 = or i64 %890, %891
  %893 = and i64 %889, %892
  %894 = icmp ne i64 %893, 0
  br i1 %894, label %895, label %904

895:                                              ; preds = %888
  %896 = load i32, i32* @FS, align 4
  %897 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %898 = call i32 @EXTRACT_OPERAND(i32 %896, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %897)
  %899 = shl i32 1, %898
  %900 = load i32*, i32** @mips_cprmask, align 8
  %901 = getelementptr inbounds i32, i32* %900, i64 1
  %902 = load i32, i32* %901, align 4
  %903 = or i32 %902, %899
  store i32 %903, i32* %901, align 4
  br label %904

904:                                              ; preds = %895, %888
  %905 = load i64, i64* %8, align 8
  %906 = load i64, i64* @INSN_WRITE_FPR_T, align 8
  %907 = load i64, i64* @INSN_READ_FPR_T, align 8
  %908 = or i64 %906, %907
  %909 = and i64 %905, %908
  %910 = icmp ne i64 %909, 0
  br i1 %910, label %911, label %920

911:                                              ; preds = %904
  %912 = load i32, i32* @FT, align 4
  %913 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %914 = call i32 @EXTRACT_OPERAND(i32 %912, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %913)
  %915 = shl i32 1, %914
  %916 = load i32*, i32** @mips_cprmask, align 8
  %917 = getelementptr inbounds i32, i32* %916, i64 1
  %918 = load i32, i32* %917, align 4
  %919 = or i32 %918, %915
  store i32 %919, i32* %917, align 4
  br label %920

920:                                              ; preds = %911, %904
  %921 = load i64, i64* %8, align 8
  %922 = load i64, i64* @INSN_READ_FPR_R, align 8
  %923 = and i64 %921, %922
  %924 = icmp ne i64 %923, 0
  br i1 %924, label %925, label %934

925:                                              ; preds = %920
  %926 = load i32, i32* @FR, align 4
  %927 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %928 = call i32 @EXTRACT_OPERAND(i32 %926, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %927)
  %929 = shl i32 1, %928
  %930 = load i32*, i32** @mips_cprmask, align 8
  %931 = getelementptr inbounds i32, i32* %930, i64 1
  %932 = load i32, i32* %931, align 4
  %933 = or i32 %932, %929
  store i32 %933, i32* %931, align 4
  br label %934

934:                                              ; preds = %925, %920
  %935 = load i64, i64* %8, align 8
  %936 = load i64, i64* @INSN_COP, align 8
  %937 = and i64 %935, %936
  %938 = icmp ne i64 %937, 0
  br i1 %938, label %939, label %940

939:                                              ; preds = %934
  br label %940

940:                                              ; preds = %939, %934
  %941 = load i32, i32* @mips_gprmask, align 4
  %942 = and i32 %941, -2
  store i32 %942, i32* @mips_gprmask, align 4
  br label %1057

943:                                              ; preds = %821
  %944 = load i64, i64* %8, align 8
  %945 = load i64, i64* @MIPS16_INSN_WRITE_X, align 8
  %946 = load i64, i64* @MIPS16_INSN_READ_X, align 8
  %947 = or i64 %945, %946
  %948 = and i64 %944, %947
  %949 = icmp ne i64 %948, 0
  br i1 %949, label %950, label %957

950:                                              ; preds = %943
  %951 = load i32, i32* @RX, align 4
  %952 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %953 = call i32 @MIPS16_EXTRACT_OPERAND(i32 %951, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %952)
  %954 = shl i32 1, %953
  %955 = load i32, i32* @mips_gprmask, align 4
  %956 = or i32 %955, %954
  store i32 %956, i32* @mips_gprmask, align 4
  br label %957

957:                                              ; preds = %950, %943
  %958 = load i64, i64* %8, align 8
  %959 = load i64, i64* @MIPS16_INSN_WRITE_Y, align 8
  %960 = load i64, i64* @MIPS16_INSN_READ_Y, align 8
  %961 = or i64 %959, %960
  %962 = and i64 %958, %961
  %963 = icmp ne i64 %962, 0
  br i1 %963, label %964, label %971

964:                                              ; preds = %957
  %965 = load i32, i32* @RY, align 4
  %966 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %967 = call i32 @MIPS16_EXTRACT_OPERAND(i32 %965, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %966)
  %968 = shl i32 1, %967
  %969 = load i32, i32* @mips_gprmask, align 4
  %970 = or i32 %969, %968
  store i32 %970, i32* @mips_gprmask, align 4
  br label %971

971:                                              ; preds = %964, %957
  %972 = load i64, i64* %8, align 8
  %973 = load i64, i64* @MIPS16_INSN_WRITE_Z, align 8
  %974 = and i64 %972, %973
  %975 = icmp ne i64 %974, 0
  br i1 %975, label %976, label %983

976:                                              ; preds = %971
  %977 = load i32, i32* @RZ, align 4
  %978 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %979 = call i32 @MIPS16_EXTRACT_OPERAND(i32 %977, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %978)
  %980 = shl i32 1, %979
  %981 = load i32, i32* @mips_gprmask, align 4
  %982 = or i32 %981, %980
  store i32 %982, i32* @mips_gprmask, align 4
  br label %983

983:                                              ; preds = %976, %971
  %984 = load i64, i64* %8, align 8
  %985 = load i64, i64* @MIPS16_INSN_WRITE_T, align 8
  %986 = load i64, i64* @MIPS16_INSN_READ_T, align 8
  %987 = or i64 %985, %986
  %988 = and i64 %984, %987
  %989 = icmp ne i64 %988, 0
  br i1 %989, label %990, label %995

990:                                              ; preds = %983
  %991 = load i32, i32* @TREG, align 4
  %992 = shl i32 1, %991
  %993 = load i32, i32* @mips_gprmask, align 4
  %994 = or i32 %993, %992
  store i32 %994, i32* @mips_gprmask, align 4
  br label %995

995:                                              ; preds = %990, %983
  %996 = load i64, i64* %8, align 8
  %997 = load i64, i64* @MIPS16_INSN_WRITE_SP, align 8
  %998 = load i64, i64* @MIPS16_INSN_READ_SP, align 8
  %999 = or i64 %997, %998
  %1000 = and i64 %996, %999
  %1001 = icmp ne i64 %1000, 0
  br i1 %1001, label %1002, label %1007

1002:                                             ; preds = %995
  %1003 = load i32, i32* @SP, align 4
  %1004 = shl i32 1, %1003
  %1005 = load i32, i32* @mips_gprmask, align 4
  %1006 = or i32 %1005, %1004
  store i32 %1006, i32* @mips_gprmask, align 4
  br label %1007

1007:                                             ; preds = %1002, %995
  %1008 = load i64, i64* %8, align 8
  %1009 = load i64, i64* @MIPS16_INSN_WRITE_31, align 8
  %1010 = load i64, i64* @MIPS16_INSN_READ_31, align 8
  %1011 = or i64 %1009, %1010
  %1012 = and i64 %1008, %1011
  %1013 = icmp ne i64 %1012, 0
  br i1 %1013, label %1014, label %1019

1014:                                             ; preds = %1007
  %1015 = load i32, i32* @RA, align 4
  %1016 = shl i32 1, %1015
  %1017 = load i32, i32* @mips_gprmask, align 4
  %1018 = or i32 %1017, %1016
  store i32 %1018, i32* @mips_gprmask, align 4
  br label %1019

1019:                                             ; preds = %1014, %1007
  %1020 = load i64, i64* %8, align 8
  %1021 = load i64, i64* @MIPS16_INSN_WRITE_GPR_Y, align 8
  %1022 = and i64 %1020, %1021
  %1023 = icmp ne i64 %1022, 0
  br i1 %1023, label %1024, label %1032

1024:                                             ; preds = %1019
  %1025 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1026 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1025, i32 0, i32 2
  %1027 = load i32, i32* %1026, align 8
  %1028 = call i32 @MIPS16OP_EXTRACT_REG32R(i32 %1027)
  %1029 = shl i32 1, %1028
  %1030 = load i32, i32* @mips_gprmask, align 4
  %1031 = or i32 %1030, %1029
  store i32 %1031, i32* @mips_gprmask, align 4
  br label %1032

1032:                                             ; preds = %1024, %1019
  %1033 = load i64, i64* %8, align 8
  %1034 = load i64, i64* @MIPS16_INSN_READ_Z, align 8
  %1035 = and i64 %1033, %1034
  %1036 = icmp ne i64 %1035, 0
  br i1 %1036, label %1037, label %1044

1037:                                             ; preds = %1032
  %1038 = load i32, i32* @MOVE32Z, align 4
  %1039 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1040 = call i32 @MIPS16_EXTRACT_OPERAND(i32 %1038, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %1039)
  %1041 = shl i32 1, %1040
  %1042 = load i32, i32* @mips_gprmask, align 4
  %1043 = or i32 %1042, %1041
  store i32 %1043, i32* @mips_gprmask, align 4
  br label %1044

1044:                                             ; preds = %1037, %1032
  %1045 = load i64, i64* %8, align 8
  %1046 = load i64, i64* @MIPS16_INSN_READ_GPR_X, align 8
  %1047 = and i64 %1045, %1046
  %1048 = icmp ne i64 %1047, 0
  br i1 %1048, label %1049, label %1056

1049:                                             ; preds = %1044
  %1050 = load i32, i32* @REGR32, align 4
  %1051 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1052 = call i32 @MIPS16_EXTRACT_OPERAND(i32 %1050, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %1051)
  %1053 = shl i32 1, %1052
  %1054 = load i32, i32* @mips_gprmask, align 4
  %1055 = or i32 %1054, %1053
  store i32 %1055, i32* @mips_gprmask, align 4
  br label %1056

1056:                                             ; preds = %1049, %1044
  br label %1057

1057:                                             ; preds = %1056, %940
  %1058 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @mips_relax, i32 0, i32 0), align 8
  %1059 = icmp ne i32 %1058, 2
  br i1 %1059, label %1060, label %1573

1060:                                             ; preds = %1057
  %1061 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 2), align 8
  %1062 = icmp ne i64 %1061, 0
  br i1 %1062, label %1573, label %1063

1063:                                             ; preds = %1060
  %1064 = load i64, i64* %8, align 8
  %1065 = load i64, i64* @INSN_UNCOND_BRANCH_DELAY, align 8
  %1066 = and i64 %1064, %1065
  %1067 = icmp ne i64 %1066, 0
  br i1 %1067, label %1073, label %1068

1068:                                             ; preds = %1063
  %1069 = load i64, i64* %8, align 8
  %1070 = load i64, i64* @INSN_COND_BRANCH_DELAY, align 8
  %1071 = and i64 %1069, %1070
  %1072 = icmp ne i64 %1071, 0
  br i1 %1072, label %1073, label %1559

1073:                                             ; preds = %1068, %1063
  %1074 = load i32, i32* @mips_optimize, align 4
  %1075 = icmp slt i32 %1074, 2
  br i1 %1075, label %1422, label %1076

1076:                                             ; preds = %1073
  %1077 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 0), align 8
  %1078 = icmp ne i64 %1077, 0
  br i1 %1078, label %1422, label %1079

1079:                                             ; preds = %1076
  %1080 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1081 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1080, i64 0
  %1082 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1081, i32 0, i32 1
  %1083 = load i32, i32* %1082, align 4
  %1084 = icmp ne i32 %1083, 0
  br i1 %1084, label %1422, label %1085

1085:                                             ; preds = %1079
  %1086 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1087 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1086, i64 1
  %1088 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1087, i32 0, i32 6
  %1089 = load i64, i64* %1088, align 8
  %1090 = icmp ne i64 %1089, 0
  br i1 %1090, label %1422, label %1091

1091:                                             ; preds = %1085
  %1092 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %1093 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1092, i32 0, i32 0
  %1094 = load i32*, i32** %1093, align 8
  %1095 = icmp ne i32* %1094, null
  br i1 %1095, label %1422, label %1096

1096:                                             ; preds = %1091
  %1097 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %1098 = icmp ne i64 %1097, 0
  br i1 %1098, label %1103, label %1099

1099:                                             ; preds = %1096
  %1100 = load i64, i64* %9, align 8
  %1101 = load i64, i64* @rs_machine_dependent, align 8
  %1102 = icmp eq i64 %1100, %1101
  br i1 %1102, label %1422, label %1103

1103:                                             ; preds = %1099, %1096
  %1104 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1105 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1104, i64 1
  %1106 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1107 = call i64 @nops_for_insn(%struct.mips_cl_insn* %1105, %struct.mips_cl_insn* %1106)
  %1108 = icmp sgt i64 %1107, 0
  br i1 %1108, label %1422, label %1109

1109:                                             ; preds = %1103
  %1110 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1111 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1110, i64 1
  %1112 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1113 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1114 = call i64 @nops_for_sequence(i32 2, %struct.mips_cl_insn* %1111, %struct.mips_cl_insn* %1112, %struct.mips_cl_insn* %1113)
  %1115 = icmp sgt i64 %1114, 0
  br i1 %1115, label %1422, label %1116

1116:                                             ; preds = %1109
  %1117 = load i64, i64* %7, align 8
  %1118 = load i64, i64* @INSN_TRAP, align 8
  %1119 = and i64 %1117, %1118
  %1120 = icmp ne i64 %1119, 0
  br i1 %1120, label %1422, label %1121

1121:                                             ; preds = %1116
  %1122 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %1123 = icmp ne i64 %1122, 0
  br i1 %1123, label %1138, label %1124

1124:                                             ; preds = %1121
  %1125 = load i64, i64* %7, align 8
  %1126 = load i64, i64* @INSN_WRITE_GPR_T, align 8
  %1127 = and i64 %1125, %1126
  %1128 = icmp ne i64 %1127, 0
  br i1 %1128, label %1129, label %1138

1129:                                             ; preds = %1124
  %1130 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1131 = load i32, i32* @RT, align 4
  %1132 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1133 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1132, i64 0
  %1134 = call i32 @EXTRACT_OPERAND(i32 %1131, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %1133)
  %1135 = load i32, i32* @MIPS_GR_REG, align 4
  %1136 = call i64 @insn_uses_reg(%struct.mips_cl_insn* %1130, i32 %1134, i32 %1135)
  %1137 = icmp ne i64 %1136, 0
  br i1 %1137, label %1422, label %1138

1138:                                             ; preds = %1129, %1124, %1121
  %1139 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %1140 = icmp ne i64 %1139, 0
  br i1 %1140, label %1155, label %1141

1141:                                             ; preds = %1138
  %1142 = load i64, i64* %7, align 8
  %1143 = load i64, i64* @INSN_WRITE_GPR_D, align 8
  %1144 = and i64 %1142, %1143
  %1145 = icmp ne i64 %1144, 0
  br i1 %1145, label %1146, label %1155

1146:                                             ; preds = %1141
  %1147 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1148 = load i32, i32* @RD, align 4
  %1149 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1150 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1149, i64 0
  %1151 = call i32 @EXTRACT_OPERAND(i32 %1148, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %1150)
  %1152 = load i32, i32* @MIPS_GR_REG, align 4
  %1153 = call i64 @insn_uses_reg(%struct.mips_cl_insn* %1147, i32 %1151, i32 %1152)
  %1154 = icmp ne i64 %1153, 0
  br i1 %1154, label %1422, label %1155

1155:                                             ; preds = %1146, %1141, %1138
  %1156 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %1157 = icmp ne i64 %1156, 0
  br i1 %1157, label %1158, label %1237

1158:                                             ; preds = %1155
  %1159 = load i64, i64* %7, align 8
  %1160 = load i64, i64* @MIPS16_INSN_WRITE_X, align 8
  %1161 = and i64 %1159, %1160
  %1162 = icmp ne i64 %1161, 0
  br i1 %1162, label %1163, label %1172

1163:                                             ; preds = %1158
  %1164 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1165 = load i32, i32* @RX, align 4
  %1166 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1167 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1166, i64 0
  %1168 = call i32 @MIPS16_EXTRACT_OPERAND(i32 %1165, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %1167)
  %1169 = load i32, i32* @MIPS16_REG, align 4
  %1170 = call i64 @insn_uses_reg(%struct.mips_cl_insn* %1164, i32 %1168, i32 %1169)
  %1171 = icmp ne i64 %1170, 0
  br i1 %1171, label %1422, label %1172

1172:                                             ; preds = %1163, %1158
  %1173 = load i64, i64* %7, align 8
  %1174 = load i64, i64* @MIPS16_INSN_WRITE_Y, align 8
  %1175 = and i64 %1173, %1174
  %1176 = icmp ne i64 %1175, 0
  br i1 %1176, label %1177, label %1186

1177:                                             ; preds = %1172
  %1178 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1179 = load i32, i32* @RY, align 4
  %1180 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1181 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1180, i64 0
  %1182 = call i32 @MIPS16_EXTRACT_OPERAND(i32 %1179, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %1181)
  %1183 = load i32, i32* @MIPS16_REG, align 4
  %1184 = call i64 @insn_uses_reg(%struct.mips_cl_insn* %1178, i32 %1182, i32 %1183)
  %1185 = icmp ne i64 %1184, 0
  br i1 %1185, label %1422, label %1186

1186:                                             ; preds = %1177, %1172
  %1187 = load i64, i64* %7, align 8
  %1188 = load i64, i64* @MIPS16_INSN_WRITE_Z, align 8
  %1189 = and i64 %1187, %1188
  %1190 = icmp ne i64 %1189, 0
  br i1 %1190, label %1191, label %1200

1191:                                             ; preds = %1186
  %1192 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1193 = load i32, i32* @RZ, align 4
  %1194 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1195 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1194, i64 0
  %1196 = call i32 @MIPS16_EXTRACT_OPERAND(i32 %1193, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %1195)
  %1197 = load i32, i32* @MIPS16_REG, align 4
  %1198 = call i64 @insn_uses_reg(%struct.mips_cl_insn* %1192, i32 %1196, i32 %1197)
  %1199 = icmp ne i64 %1198, 0
  br i1 %1199, label %1422, label %1200

1200:                                             ; preds = %1191, %1186
  %1201 = load i64, i64* %7, align 8
  %1202 = load i64, i64* @MIPS16_INSN_WRITE_T, align 8
  %1203 = and i64 %1201, %1202
  %1204 = icmp ne i64 %1203, 0
  br i1 %1204, label %1205, label %1211

1205:                                             ; preds = %1200
  %1206 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1207 = load i32, i32* @TREG, align 4
  %1208 = load i32, i32* @MIPS_GR_REG, align 4
  %1209 = call i64 @insn_uses_reg(%struct.mips_cl_insn* %1206, i32 %1207, i32 %1208)
  %1210 = icmp ne i64 %1209, 0
  br i1 %1210, label %1422, label %1211

1211:                                             ; preds = %1205, %1200
  %1212 = load i64, i64* %7, align 8
  %1213 = load i64, i64* @MIPS16_INSN_WRITE_31, align 8
  %1214 = and i64 %1212, %1213
  %1215 = icmp ne i64 %1214, 0
  br i1 %1215, label %1216, label %1222

1216:                                             ; preds = %1211
  %1217 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1218 = load i32, i32* @RA, align 4
  %1219 = load i32, i32* @MIPS_GR_REG, align 4
  %1220 = call i64 @insn_uses_reg(%struct.mips_cl_insn* %1217, i32 %1218, i32 %1219)
  %1221 = icmp ne i64 %1220, 0
  br i1 %1221, label %1422, label %1222

1222:                                             ; preds = %1216, %1211
  %1223 = load i64, i64* %7, align 8
  %1224 = load i64, i64* @MIPS16_INSN_WRITE_GPR_Y, align 8
  %1225 = and i64 %1223, %1224
  %1226 = icmp ne i64 %1225, 0
  br i1 %1226, label %1227, label %1237

1227:                                             ; preds = %1222
  %1228 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1229 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1230 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1229, i64 0
  %1231 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1230, i32 0, i32 2
  %1232 = load i32, i32* %1231, align 8
  %1233 = call i32 @MIPS16OP_EXTRACT_REG32R(i32 %1232)
  %1234 = load i32, i32* @MIPS_GR_REG, align 4
  %1235 = call i64 @insn_uses_reg(%struct.mips_cl_insn* %1228, i32 %1233, i32 %1234)
  %1236 = icmp ne i64 %1235, 0
  br i1 %1236, label %1422, label %1237

1237:                                             ; preds = %1227, %1222, %1155
  %1238 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %1239 = icmp ne i64 %1238, 0
  br i1 %1239, label %1271, label %1240

1240:                                             ; preds = %1237
  %1241 = load i64, i64* %7, align 8
  %1242 = load i64, i64* @INSN_WRITE_GPR_T, align 8
  %1243 = and i64 %1241, %1242
  %1244 = icmp ne i64 %1243, 0
  br i1 %1244, label %1245, label %1271

1245:                                             ; preds = %1240
  %1246 = load i64, i64* %8, align 8
  %1247 = load i64, i64* @INSN_WRITE_GPR_D, align 8
  %1248 = and i64 %1246, %1247
  %1249 = icmp ne i64 %1248, 0
  br i1 %1249, label %1250, label %1259

1250:                                             ; preds = %1245
  %1251 = load i32, i32* @RT, align 4
  %1252 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1253 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1252, i64 0
  %1254 = call i32 @EXTRACT_OPERAND(i32 %1251, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %1253)
  %1255 = load i32, i32* @RD, align 4
  %1256 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1257 = call i32 @EXTRACT_OPERAND(i32 %1255, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %1256)
  %1258 = icmp eq i32 %1254, %1257
  br i1 %1258, label %1422, label %1259

1259:                                             ; preds = %1250, %1245
  %1260 = load i64, i64* %8, align 8
  %1261 = load i64, i64* @INSN_WRITE_GPR_31, align 8
  %1262 = and i64 %1260, %1261
  %1263 = icmp ne i64 %1262, 0
  br i1 %1263, label %1264, label %1271

1264:                                             ; preds = %1259
  %1265 = load i32, i32* @RT, align 4
  %1266 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1267 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1266, i64 0
  %1268 = call i32 @EXTRACT_OPERAND(i32 %1265, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %1267)
  %1269 = load i32, i32* @RA, align 4
  %1270 = icmp eq i32 %1268, %1269
  br i1 %1270, label %1422, label %1271

1271:                                             ; preds = %1264, %1259, %1240, %1237
  %1272 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %1273 = icmp ne i64 %1272, 0
  br i1 %1273, label %1305, label %1274

1274:                                             ; preds = %1271
  %1275 = load i64, i64* %7, align 8
  %1276 = load i64, i64* @INSN_WRITE_GPR_D, align 8
  %1277 = and i64 %1275, %1276
  %1278 = icmp ne i64 %1277, 0
  br i1 %1278, label %1279, label %1305

1279:                                             ; preds = %1274
  %1280 = load i64, i64* %8, align 8
  %1281 = load i64, i64* @INSN_WRITE_GPR_D, align 8
  %1282 = and i64 %1280, %1281
  %1283 = icmp ne i64 %1282, 0
  br i1 %1283, label %1284, label %1293

1284:                                             ; preds = %1279
  %1285 = load i32, i32* @RD, align 4
  %1286 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1287 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1286, i64 0
  %1288 = call i32 @EXTRACT_OPERAND(i32 %1285, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %1287)
  %1289 = load i32, i32* @RD, align 4
  %1290 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1291 = call i32 @EXTRACT_OPERAND(i32 %1289, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %1290)
  %1292 = icmp eq i32 %1288, %1291
  br i1 %1292, label %1422, label %1293

1293:                                             ; preds = %1284, %1279
  %1294 = load i64, i64* %8, align 8
  %1295 = load i64, i64* @INSN_WRITE_GPR_31, align 8
  %1296 = and i64 %1294, %1295
  %1297 = icmp ne i64 %1296, 0
  br i1 %1297, label %1298, label %1305

1298:                                             ; preds = %1293
  %1299 = load i32, i32* @RD, align 4
  %1300 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1301 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1300, i64 0
  %1302 = call i32 @EXTRACT_OPERAND(i32 %1299, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %1301)
  %1303 = load i32, i32* @RA, align 4
  %1304 = icmp eq i32 %1302, %1303
  br i1 %1304, label %1422, label %1305

1305:                                             ; preds = %1298, %1293, %1274, %1271
  %1306 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %1307 = icmp ne i64 %1306, 0
  br i1 %1307, label %1308, label %1331

1308:                                             ; preds = %1305
  %1309 = load i64, i64* %8, align 8
  %1310 = load i64, i64* @MIPS16_INSN_WRITE_31, align 8
  %1311 = and i64 %1309, %1310
  %1312 = icmp ne i64 %1311, 0
  br i1 %1312, label %1313, label %1331

1313:                                             ; preds = %1308
  %1314 = load i64, i64* %7, align 8
  %1315 = load i64, i64* @MIPS16_INSN_WRITE_31, align 8
  %1316 = and i64 %1314, %1315
  %1317 = icmp ne i64 %1316, 0
  br i1 %1317, label %1422, label %1318

1318:                                             ; preds = %1313
  %1319 = load i64, i64* %7, align 8
  %1320 = load i64, i64* @MIPS16_INSN_WRITE_GPR_Y, align 8
  %1321 = and i64 %1319, %1320
  %1322 = icmp ne i64 %1321, 0
  br i1 %1322, label %1323, label %1331

1323:                                             ; preds = %1318
  %1324 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1325 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1324, i64 0
  %1326 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1325, i32 0, i32 2
  %1327 = load i32, i32* %1326, align 8
  %1328 = call i32 @MIPS16OP_EXTRACT_REG32R(i32 %1327)
  %1329 = load i32, i32* @RA, align 4
  %1330 = icmp eq i32 %1328, %1329
  br i1 %1330, label %1422, label %1331

1331:                                             ; preds = %1323, %1318, %1308, %1305
  %1332 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %1333 = icmp ne i64 %1332, 0
  br i1 %1333, label %1348, label %1334

1334:                                             ; preds = %1331
  %1335 = load i64, i64* %8, align 8
  %1336 = load i64, i64* @INSN_WRITE_GPR_D, align 8
  %1337 = and i64 %1335, %1336
  %1338 = icmp ne i64 %1337, 0
  br i1 %1338, label %1339, label %1348

1339:                                             ; preds = %1334
  %1340 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1341 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1340, i64 0
  %1342 = load i32, i32* @RD, align 4
  %1343 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1344 = call i32 @EXTRACT_OPERAND(i32 %1342, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8 %1343)
  %1345 = load i32, i32* @MIPS_GR_REG, align 4
  %1346 = call i64 @insn_uses_reg(%struct.mips_cl_insn* %1341, i32 %1344, i32 %1345)
  %1347 = icmp ne i64 %1346, 0
  br i1 %1347, label %1422, label %1348

1348:                                             ; preds = %1339, %1334, %1331
  %1349 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %1350 = icmp ne i64 %1349, 0
  br i1 %1350, label %1363, label %1351

1351:                                             ; preds = %1348
  %1352 = load i64, i64* %8, align 8
  %1353 = load i64, i64* @INSN_WRITE_GPR_31, align 8
  %1354 = and i64 %1352, %1353
  %1355 = icmp ne i64 %1354, 0
  br i1 %1355, label %1356, label %1363

1356:                                             ; preds = %1351
  %1357 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1358 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1357, i64 0
  %1359 = load i32, i32* @RA, align 4
  %1360 = load i32, i32* @MIPS_GR_REG, align 4
  %1361 = call i64 @insn_uses_reg(%struct.mips_cl_insn* %1358, i32 %1359, i32 %1360)
  %1362 = icmp ne i64 %1361, 0
  br i1 %1362, label %1422, label %1363

1363:                                             ; preds = %1356, %1351, %1348
  %1364 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %1365 = icmp ne i64 %1364, 0
  br i1 %1365, label %1366, label %1378

1366:                                             ; preds = %1363
  %1367 = load i64, i64* %8, align 8
  %1368 = load i64, i64* @MIPS16_INSN_WRITE_31, align 8
  %1369 = and i64 %1367, %1368
  %1370 = icmp ne i64 %1369, 0
  br i1 %1370, label %1371, label %1378

1371:                                             ; preds = %1366
  %1372 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1373 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1372, i64 0
  %1374 = load i32, i32* @RA, align 4
  %1375 = load i32, i32* @MIPS_GR_REG, align 4
  %1376 = call i64 @insn_uses_reg(%struct.mips_cl_insn* %1373, i32 %1374, i32 %1375)
  %1377 = icmp ne i64 %1376, 0
  br i1 %1377, label %1422, label %1378

1378:                                             ; preds = %1371, %1366, %1363
  %1379 = load i64, i64* %8, align 8
  %1380 = load i64, i64* @INSN_READ_COND_CODE, align 8
  %1381 = and i64 %1379, %1380
  %1382 = icmp ne i64 %1381, 0
  br i1 %1382, label %1383, label %1388

1383:                                             ; preds = %1378
  %1384 = load i64, i64* %7, align 8
  %1385 = load i64, i64* @INSN_WRITE_COND_CODE, align 8
  %1386 = and i64 %1384, %1385
  %1387 = icmp ne i64 %1386, 0
  br i1 %1387, label %1422, label %1388

1388:                                             ; preds = %1383, %1378
  %1389 = load i64, i64* %8, align 8
  %1390 = load i64, i64* @INSN_WRITE_COND_CODE, align 8
  %1391 = and i64 %1389, %1390
  %1392 = icmp ne i64 %1391, 0
  br i1 %1392, label %1393, label %1398

1393:                                             ; preds = %1388
  %1394 = load i64, i64* %7, align 8
  %1395 = load i64, i64* @INSN_READ_COND_CODE, align 8
  %1396 = and i64 %1394, %1395
  %1397 = icmp ne i64 %1396, 0
  br i1 %1397, label %1422, label %1398

1398:                                             ; preds = %1393, %1388
  %1399 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %1400 = icmp ne i64 %1399, 0
  br i1 %1400, label %1401, label %1406

1401:                                             ; preds = %1398
  %1402 = load i64, i64* %7, align 8
  %1403 = load i64, i64* @MIPS16_INSN_READ_PC, align 8
  %1404 = and i64 %1402, %1403
  %1405 = icmp ne i64 %1404, 0
  br i1 %1405, label %1422, label %1406

1406:                                             ; preds = %1401, %1398
  %1407 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %1408 = icmp ne i64 %1407, 0
  br i1 %1408, label %1409, label %1417

1409:                                             ; preds = %1406
  %1410 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1411 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1410, i64 0
  %1412 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1411, i32 0, i32 5
  %1413 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %1412, align 8
  %1414 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %1413, i64 0
  %1415 = load %struct.TYPE_22__*, %struct.TYPE_22__** %1414, align 8
  %1416 = icmp ne %struct.TYPE_22__* %1415, null
  br i1 %1416, label %1422, label %1417

1417:                                             ; preds = %1409, %1406
  %1418 = load i64, i64* %7, align 8
  %1419 = load i64, i64* @INSN_SYNC, align 8
  %1420 = and i64 %1418, %1419
  %1421 = icmp ne i64 %1420, 0
  br i1 %1421, label %1422, label %1465

1422:                                             ; preds = %1417, %1409, %1401, %1393, %1383, %1371, %1356, %1339, %1323, %1313, %1298, %1284, %1264, %1250, %1227, %1216, %1205, %1191, %1177, %1163, %1146, %1129, %1116, %1109, %1103, %1099, %1091, %1085, %1079, %1076, %1073
  %1423 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %1424 = icmp ne i64 %1423, 0
  br i1 %1424, label %1425, label %1449

1425:                                             ; preds = %1422
  %1426 = load i64, i64* %8, align 8
  %1427 = load i64, i64* @INSN_UNCOND_BRANCH_DELAY, align 8
  %1428 = and i64 %1426, %1427
  %1429 = icmp ne i64 %1428, 0
  br i1 %1429, label %1430, label %1449

1430:                                             ; preds = %1425
  %1431 = load i64, i64* %8, align 8
  %1432 = load i64, i64* @MIPS16_INSN_READ_X, align 8
  %1433 = load i64, i64* @MIPS16_INSN_READ_31, align 8
  %1434 = or i64 %1432, %1433
  %1435 = and i64 %1431, %1434
  %1436 = icmp ne i64 %1435, 0
  br i1 %1436, label %1437, label %1449

1437:                                             ; preds = %1430
  %1438 = load i64, i64* @ISA_SUPPORTS_MIPS16E, align 8
  %1439 = icmp ne i64 %1438, 0
  br i1 %1439, label %1440, label %1449

1440:                                             ; preds = %1437
  %1441 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1442 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1441, i32 0, i32 2
  %1443 = load i32, i32* %1442, align 8
  %1444 = or i32 %1443, 128
  store i32 %1444, i32* %1442, align 8
  %1445 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1446 = call i32 @install_insn(%struct.mips_cl_insn* %1445)
  %1447 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1448 = call i32 @insert_into_history(i32 0, i32 1, %struct.mips_cl_insn* %1447)
  br label %1453

1449:                                             ; preds = %1437, %1430, %1425, %1422
  %1450 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1451 = call i32 @insert_into_history(i32 0, i32 1, %struct.mips_cl_insn* %1450)
  %1452 = call i32 (...) @emit_nop()
  br label %1453

1453:                                             ; preds = %1449, %1440
  %1454 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @mips_relax, i32 0, i32 0), align 8
  %1455 = icmp ne i32 %1454, 0
  br i1 %1455, label %1456, label %1464

1456:                                             ; preds = %1453
  %1457 = load i32*, i32** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @mips_relax, i32 0, i32 1), align 8
  %1458 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @mips_relax, i32 0, i32 0), align 8
  %1459 = sub nsw i32 %1458, 1
  %1460 = sext i32 %1459 to i64
  %1461 = getelementptr inbounds i32, i32* %1457, i64 %1460
  %1462 = load i32, i32* %1461, align 4
  %1463 = add nsw i32 %1462, 4
  store i32 %1463, i32* %1461, align 4
  br label %1464

1464:                                             ; preds = %1456, %1453
  br label %1551

1465:                                             ; preds = %1417
  %1466 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1467 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1466, i64 0
  %1468 = bitcast %struct.mips_cl_insn* %21 to i8*
  %1469 = bitcast %struct.mips_cl_insn* %1467 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1468, i8* align 8 %1469, i64 64, i1 false)
  %1470 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @mips_opts, i32 0, i32 1), align 8
  %1471 = icmp ne i64 %1470, 0
  br i1 %1471, label %1472, label %1497

1472:                                             ; preds = %1465
  %1473 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %21, i32 0, i32 4
  %1474 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1473, align 8
  %1475 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1476 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1475, i32 0, i32 4
  %1477 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1476, align 8
  %1478 = icmp eq %struct.TYPE_28__* %1474, %1477
  %1479 = zext i1 %1478 to i32
  %1480 = call i32 @know(i32 %1479)
  %1481 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1482 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %21, i32 0, i32 4
  %1483 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1482, align 8
  %1484 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %21, i32 0, i32 3
  %1485 = load i64, i64* %1484, align 8
  %1486 = call i32 @move_insn(%struct.mips_cl_insn* %1481, %struct.TYPE_28__* %1483, i64 %1485)
  %1487 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1488 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1487, i32 0, i32 4
  %1489 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1488, align 8
  %1490 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1491 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1490, i32 0, i32 3
  %1492 = load i64, i64* %1491, align 8
  %1493 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1494 = call i64 @insn_length(%struct.mips_cl_insn* %1493)
  %1495 = add nsw i64 %1492, %1494
  %1496 = call i32 @move_insn(%struct.mips_cl_insn* %21, %struct.TYPE_28__* %1489, i64 %1495)
  br label %1543

1497:                                             ; preds = %1465
  %1498 = load i64, i64* %10, align 8
  %1499 = icmp ne i64 %1498, 0
  br i1 %1499, label %1500, label %1524

1500:                                             ; preds = %1497
  %1501 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %21, i32 0, i32 4
  %1502 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1501, align 8
  %1503 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %1502, i32 0, i32 1
  %1504 = load i32, i32* %1503, align 8
  %1505 = sub nsw i32 %1504, 4
  store i32 %1505, i32* %1503, align 8
  %1506 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %21, i32 0, i32 4
  %1507 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1506, align 8
  %1508 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1509 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1508, i32 0, i32 4
  %1510 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1509, align 8
  %1511 = icmp eq %struct.TYPE_28__* %1507, %1510
  br i1 %1511, label %1512, label %1522

1512:                                             ; preds = %1500
  %1513 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1514 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1515 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1514, i32 0, i32 4
  %1516 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1515, align 8
  %1517 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1518 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1517, i32 0, i32 3
  %1519 = load i64, i64* %1518, align 8
  %1520 = sub nsw i64 %1519, 4
  %1521 = call i32 @move_insn(%struct.mips_cl_insn* %1513, %struct.TYPE_28__* %1516, i64 %1520)
  br label %1522

1522:                                             ; preds = %1512, %1500
  %1523 = call i32 @add_fixed_insn(%struct.mips_cl_insn* %21)
  br label %1542

1524:                                             ; preds = %1497
  %1525 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1526 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1525, i32 0, i32 4
  %1527 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1526, align 8
  %1528 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1529 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1528, i32 0, i32 3
  %1530 = load i64, i64* %1529, align 8
  %1531 = call i32 @move_insn(%struct.mips_cl_insn* %21, %struct.TYPE_28__* %1527, i64 %1530)
  %1532 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1533 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1534 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1533, i64 0
  %1535 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1534, i32 0, i32 4
  %1536 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1535, align 8
  %1537 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1538 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1537, i64 0
  %1539 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1538, i32 0, i32 3
  %1540 = load i64, i64* %1539, align 8
  %1541 = call i32 @move_insn(%struct.mips_cl_insn* %1532, %struct.TYPE_28__* %1536, i64 %1540)
  br label %1542

1542:                                             ; preds = %1524, %1522
  br label %1543

1543:                                             ; preds = %1542, %1472
  %1544 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** @history, align 8
  %1545 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %1544, i64 0
  %1546 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1547 = bitcast %struct.mips_cl_insn* %1545 to i8*
  %1548 = bitcast %struct.mips_cl_insn* %1546 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1547, i8* align 8 %1548, i64 64, i1 false)
  %1549 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %21, i32 0, i32 1
  store i32 1, i32* %1549, align 4
  %1550 = call i32 @insert_into_history(i32 0, i32 1, %struct.mips_cl_insn* %21)
  br label %1551

1551:                                             ; preds = %1543, %1464
  %1552 = load i64, i64* %8, align 8
  %1553 = load i64, i64* @INSN_UNCOND_BRANCH_DELAY, align 8
  %1554 = and i64 %1552, %1553
  %1555 = icmp ne i64 %1554, 0
  br i1 %1555, label %1556, label %1558

1556:                                             ; preds = %1551
  %1557 = call i32 (...) @mips_no_prev_insn()
  br label %1558

1558:                                             ; preds = %1556, %1551
  br label %1572

1559:                                             ; preds = %1068
  %1560 = load i64, i64* %8, align 8
  %1561 = load i64, i64* @INSN_COND_BRANCH_LIKELY, align 8
  %1562 = and i64 %1560, %1561
  %1563 = icmp ne i64 %1562, 0
  br i1 %1563, label %1564, label %1568

1564:                                             ; preds = %1559
  %1565 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1566 = call i32 @insert_into_history(i32 0, i32 1, %struct.mips_cl_insn* %1565)
  %1567 = call i32 (...) @emit_nop()
  br label %1571

1568:                                             ; preds = %1559
  %1569 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1570 = call i32 @insert_into_history(i32 0, i32 1, %struct.mips_cl_insn* %1569)
  br label %1571

1571:                                             ; preds = %1568, %1564
  br label %1572

1572:                                             ; preds = %1571, %1558
  br label %1576

1573:                                             ; preds = %1060, %1057
  %1574 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %1575 = call i32 @insert_into_history(i32 0, i32 1, %struct.mips_cl_insn* %1574)
  br label %1576

1576:                                             ; preds = %1573, %1572
  %1577 = call i32 (...) @mips_clear_insn_labels()
  ret void
}

declare dso_local %struct.TYPE_24__* @seg_info(i32) #1

declare dso_local i32 @mips16_mark_labels(...) #1

declare dso_local i64 @nops_for_insn(%struct.mips_cl_insn*, %struct.mips_cl_insn*) #1

declare dso_local i64 @nops_for_insn_or_target(%struct.mips_cl_insn*, %struct.mips_cl_insn*) #1

declare dso_local i64 @frag_now_fix(...) #1

declare dso_local i32 @emit_nop(...) #1

declare dso_local i32 @listing_prev_line(...) #1

declare dso_local i32 @frag_grow(i32) #1

declare dso_local i32 @mips_move_labels(...) #1

declare dso_local i32 @ecoff_fix_loc(i32*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @insert_into_history(i32, i32, %struct.mips_cl_insn*) #1

declare dso_local i32 @add_relaxed_insn(%struct.mips_cl_insn*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @relaxed_branch_length(i32*, i32*, i32) #1

declare dso_local i32 @RELAX_BRANCH_ENCODE(i64, i64, i64, i32) #1

declare dso_local i32 @RELAX_MIPS16_ENCODE(i32, i32, i32, i64, i32) #1

declare dso_local i32 @make_expr_symbol(%struct.TYPE_26__*) #1

declare dso_local i32 @add_fixed_insn(%struct.mips_cl_insn*) #1

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @frag_room(...) #1

declare dso_local i32 @relax_close_frag(...) #1

declare dso_local i32 @as_bad(i32, i64) #1

declare dso_local i32 @internalError(...) #1

declare dso_local %struct.TYPE_25__* @bfd_reloc_type_lookup(i32, i32) #1

declare dso_local %struct.TYPE_22__* @fix_new_exp(%struct.TYPE_28__*, i64, i32, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @bfd_get_reloc_size(%struct.TYPE_25__*) #1

declare dso_local i32* @symbol_get_tc(i64) #1

declare dso_local i64 @reloc_needs_lo_p(i32) #1

declare dso_local i32 @fixup_has_matching_lo_p(%struct.TYPE_22__*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local %struct.TYPE_22__* @fix_new(%struct.TYPE_28__*, i64, i32, i32*, i32, i64, i32) #1

declare dso_local i32 @install_insn(%struct.mips_cl_insn*) #1

declare dso_local i32 @EXTRACT_OPERAND(i32, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8) #1

declare dso_local i32 @MIPS16_EXTRACT_OPERAND(i32, %struct.mips_cl_insn* byval(%struct.mips_cl_insn) align 8) #1

declare dso_local i32 @MIPS16OP_EXTRACT_REG32R(i32) #1

declare dso_local i64 @nops_for_sequence(i32, %struct.mips_cl_insn*, %struct.mips_cl_insn*, %struct.mips_cl_insn*) #1

declare dso_local i64 @insn_uses_reg(%struct.mips_cl_insn*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @know(i32) #1

declare dso_local i32 @move_insn(%struct.mips_cl_insn*, %struct.TYPE_28__*, i64) #1

declare dso_local i64 @insn_length(%struct.mips_cl_insn*) #1

declare dso_local i32 @mips_no_prev_insn(...) #1

declare dso_local i32 @mips_clear_insn_labels(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
