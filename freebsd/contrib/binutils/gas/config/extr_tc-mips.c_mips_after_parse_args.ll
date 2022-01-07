; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_after_parse_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_after_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mips_cpu_info = type { i64, i32, i32 }

@TARGET_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"pe\00", align 1
@g_switch_seen = common dso_local global i64 0, align 8
@g_switch_value = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"-G not supported in this configuration.\00", align 1
@mips_abi = common dso_local global i64 0, align 8
@NO_ABI = common dso_local global i64 0, align 8
@MIPS_DEFAULT_ABI = common dso_local global i64 0, align 8
@mips_arch_string = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"-march\00", align 1
@file_mips_isa = common dso_local global i64 0, align 8
@ISA_UNKNOWN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"-%s conflicts with the other architecture options, which imply -%s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"default CPU\00", align 1
@MIPS_CPU_STRING_DEFAULT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"-march=%s is not compatible with the selected ABI\00", align 1
@mips_tune_string = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"-mtune\00", align 1
@file_mips_gp32 = common dso_local global i32 0, align 4
@mips_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"-mgp64 used with a 32-bit processor\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"-mgp32 used with a 64-bit ABI\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"-mgp64 used with a 32-bit ABI\00", align 1
@file_mips_fp32 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"-mfp64 used with a 32-bit fpu\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"-mfp64 used with a 32-bit ABI\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"-mfp32 used with a 64-bit ABI\00", align 1
@O32_ABI = common dso_local global i64 0, align 8
@mips_32bitmode = common dso_local global i32 0, align 4
@ISA_MIPS1 = common dso_local global i64 0, align 8
@mips_trap = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [38 x i8] c"trap exception not supported at ISA 1\00", align 1
@file_mips_arch = common dso_local global i32 0, align 4
@MIPS_CPU_ASE_MIPS3D = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"-mfp32 used with -mips3d\00", align 1
@MIPS_CPU_ASE_MDMX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"-mfp32 used with -mdmx\00", align 1
@MIPS_CPU_ASE_SMARTMIPS = common dso_local global i32 0, align 4
@ISA_SUPPORTS_SMARTMIPS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [34 x i8] c"%s ISA does not support SmartMIPS\00", align 1
@MIPS_CPU_ASE_DSP = common dso_local global i32 0, align 4
@ISA_SUPPORTS_DSP_ASE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [32 x i8] c"%s ISA does not support DSP ASE\00", align 1
@MIPS_CPU_ASE_DSPR2 = common dso_local global i32 0, align 4
@ISA_SUPPORTS_DSPR2_ASE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [35 x i8] c"%s ISA does not support DSP R2 ASE\00", align 1
@MIPS_CPU_ASE_MT = common dso_local global i32 0, align 4
@ISA_SUPPORTS_MT_ASE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [31 x i8] c"%s ISA does not support MT ASE\00", align 1
@file_ase_mips16 = common dso_local global i32 0, align 4
@file_ase_mips3d = common dso_local global i32 0, align 4
@file_ase_mdmx = common dso_local global i32 0, align 4
@file_ase_smartmips = common dso_local global i32 0, align 4
@file_ase_dsp = common dso_local global i32 0, align 4
@file_ase_dspr2 = common dso_local global i32 0, align 4
@file_ase_mt = common dso_local global i32 0, align 4
@mips_flag_mdebug = common dso_local global i32 0, align 4
@OUTPUT_FLAVOR = common dso_local global i64 0, align 8
@bfd_target_ecoff_flavour = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_after_parse_args() #0 {
  %1 = alloca %struct.mips_cpu_info*, align 8
  %2 = alloca %struct.mips_cpu_info*, align 8
  store %struct.mips_cpu_info* null, %struct.mips_cpu_info** %1, align 8
  store %struct.mips_cpu_info* null, %struct.mips_cpu_info** %2, align 8
  %3 = load i32, i32* @TARGET_OS, align 4
  %4 = call i64 @strncmp(i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %0
  %7 = load i64, i64* @g_switch_seen, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i64, i64* @g_switch_value, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 (i8*, ...) @as_bad(i8* %15)
  br label %17

17:                                               ; preds = %12, %9, %6
  store i64 0, i64* @g_switch_value, align 8
  br label %18

18:                                               ; preds = %17, %0
  %19 = load i64, i64* @mips_abi, align 8
  %20 = load i64, i64* @NO_ABI, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @MIPS_DEFAULT_ABI, align 8
  store i64 %23, i64* @mips_abi, align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i64, i64* @mips_arch_string, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* @mips_arch_string, align 8
  %29 = call %struct.mips_cpu_info* @mips_parse_cpu(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  store %struct.mips_cpu_info* %29, %struct.mips_cpu_info** %1, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i64, i64* @file_mips_isa, align 8
  %32 = load i64, i64* @ISA_UNKNOWN, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %30
  %35 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %1, align 8
  %36 = icmp ne %struct.mips_cpu_info* %35, null
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i64, i64* @file_mips_isa, align 8
  %39 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %1, align 8
  %40 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load i64, i64* @file_mips_isa, align 8
  %48 = call %struct.mips_cpu_info* @mips_cpu_info_from_isa(i64 %47)
  %49 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %1, align 8
  %52 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call %struct.mips_cpu_info* @mips_cpu_info_from_isa(i64 %53)
  %55 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @as_bad(i8* %46, i32 %50, i32 %56)
  br label %58

58:                                               ; preds = %43, %37
  br label %62

59:                                               ; preds = %34
  %60 = load i64, i64* @file_mips_isa, align 8
  %61 = call %struct.mips_cpu_info* @mips_cpu_info_from_isa(i64 %60)
  store %struct.mips_cpu_info* %61, %struct.mips_cpu_info** %1, align 8
  br label %62

62:                                               ; preds = %59, %58
  br label %63

63:                                               ; preds = %62, %30
  %64 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %1, align 8
  %65 = icmp eq %struct.mips_cpu_info* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i64, i64* @MIPS_CPU_STRING_DEFAULT, align 8
  %68 = call %struct.mips_cpu_info* @mips_parse_cpu(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %67)
  store %struct.mips_cpu_info* %68, %struct.mips_cpu_info** %1, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i64, i64* @mips_abi, align 8
  %71 = call i64 @ABI_NEEDS_64BIT_REGS(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %1, align 8
  %75 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @ISA_HAS_64BIT_REGS(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %1, align 8
  %81 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79, %73, %69
  %85 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %1, align 8
  %86 = call i32 @mips_set_architecture(%struct.mips_cpu_info* %85)
  %87 = load i64, i64* @mips_tune_string, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i64, i64* @mips_tune_string, align 8
  %91 = call %struct.mips_cpu_info* @mips_parse_cpu(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 %90)
  store %struct.mips_cpu_info* %91, %struct.mips_cpu_info** %2, align 8
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %2, align 8
  %94 = icmp eq %struct.mips_cpu_info* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %1, align 8
  %97 = call i32 @mips_set_tune(%struct.mips_cpu_info* %96)
  br label %101

98:                                               ; preds = %92
  %99 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %2, align 8
  %100 = call i32 @mips_set_tune(%struct.mips_cpu_info* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* @file_mips_gp32, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %143

104:                                              ; preds = %101
  %105 = load i32, i32* @file_mips_gp32, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  %109 = call i64 @ISA_HAS_64BIT_REGS(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  %112 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 (i8*, ...) @as_bad(i8* %114)
  br label %142

116:                                              ; preds = %107, %104
  %117 = load i32, i32* @file_mips_gp32, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load i64, i64* @mips_abi, align 8
  %121 = call i64 @ABI_NEEDS_64BIT_REGS(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = call i32 (i8*, ...) @as_bad(i8* %126)
  br label %141

128:                                              ; preds = %119, %116
  %129 = load i32, i32* @file_mips_gp32, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load i64, i64* @mips_abi, align 8
  %133 = call i64 @ABI_NEEDS_32BIT_REGS(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = call i32 (i8*, ...) @as_bad(i8* %138)
  br label %140

140:                                              ; preds = %135, %131, %128
  br label %141

141:                                              ; preds = %140, %123
  br label %142

142:                                              ; preds = %141, %111
  br label %155

143:                                              ; preds = %101
  %144 = load i64, i64* @mips_abi, align 8
  %145 = call i64 @ABI_NEEDS_32BIT_REGS(i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %143
  %148 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  %149 = call i64 @ISA_HAS_64BIT_REGS(i64 %148)
  %150 = icmp ne i64 %149, 0
  %151 = xor i1 %150, true
  br label %152

152:                                              ; preds = %147, %143
  %153 = phi i1 [ true, %143 ], [ %151, %147 ]
  %154 = zext i1 %153 to i32
  store i32 %154, i32* @file_mips_gp32, align 4
  br label %155

155:                                              ; preds = %152, %142
  %156 = load i32, i32* @file_mips_fp32, align 4
  switch i32 %156, label %157 [
    i32 -1, label %158
    i32 0, label %176
    i32 1, label %200
  ]

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %155, %157
  %159 = load i32, i32* @file_mips_gp32, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 0, i32* @file_mips_fp32, align 4
  br label %175

162:                                              ; preds = %158
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 1), align 8
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 2), align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %165, %162
  %169 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  %170 = call i32 @ISA_HAS_64BIT_FPRS(i64 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  store i32 0, i32* @file_mips_fp32, align 4
  br label %174

173:                                              ; preds = %168, %165
  store i32 1, i32* @file_mips_fp32, align 4
  br label %174

174:                                              ; preds = %173, %172
  br label %175

175:                                              ; preds = %174, %161
  br label %210

176:                                              ; preds = %155
  %177 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  %178 = call i32 @ISA_HAS_64BIT_FPRS(i64 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %176
  %181 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i8*
  %184 = call i32 (i8*, ...) @as_bad(i8* %183)
  br label %199

185:                                              ; preds = %176
  %186 = load i64, i64* @mips_abi, align 8
  %187 = call i64 @ABI_NEEDS_32BIT_REGS(i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %185
  %190 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  %191 = call i32 @ISA_HAS_MXHC1(i64 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %189
  %194 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to i8*
  %197 = call i32 (i8*, ...) @as_warn(i8* %196)
  br label %198

198:                                              ; preds = %193, %189, %185
  br label %199

199:                                              ; preds = %198, %180
  br label %210

200:                                              ; preds = %155
  %201 = load i64, i64* @mips_abi, align 8
  %202 = call i64 @ABI_NEEDS_64BIT_REGS(i64 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  %205 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to i8*
  %208 = call i32 (i8*, ...) @as_warn(i8* %207)
  br label %209

209:                                              ; preds = %204, %200
  br label %210

210:                                              ; preds = %209, %199, %175
  %211 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  %212 = call i64 @ISA_HAS_64BIT_REGS(i64 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %226

214:                                              ; preds = %210
  %215 = load i64, i64* @mips_abi, align 8
  %216 = load i64, i64* @NO_ABI, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load i32, i32* @file_mips_gp32, align 4
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %225, label %221

221:                                              ; preds = %218, %214
  %222 = load i64, i64* @mips_abi, align 8
  %223 = load i64, i64* @O32_ABI, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %221, %218
  store i32 1, i32* @mips_32bitmode, align 4
  br label %226

226:                                              ; preds = %225, %221, %210
  %227 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  %228 = load i64, i64* @ISA_MIPS1, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %226
  %231 = load i64, i64* @mips_trap, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  %235 = sext i32 %234 to i64
  %236 = inttoptr i64 %235 to i8*
  %237 = call i32 (i8*, ...) @as_bad(i8* %236)
  br label %238

238:                                              ; preds = %233, %230, %226
  %239 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 3), align 8
  %240 = icmp eq i32 %239, -1
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = load i32, i32* @file_mips_arch, align 4
  %243 = call i64 @CPU_HAS_MIPS16(i32 %242)
  %244 = icmp ne i64 %243, 0
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i32 1, i32 0
  store i32 %246, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 3), align 8
  br label %247

247:                                              ; preds = %241, %238
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 1), align 8
  %249 = icmp eq i32 %248, -1
  br i1 %249, label %250, label %264

250:                                              ; preds = %247
  %251 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %1, align 8
  %252 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @MIPS_CPU_ASE_MIPS3D, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %250
  %258 = load i32, i32* @file_mips_fp32, align 4
  %259 = icmp eq i32 %258, 0
  br label %260

260:                                              ; preds = %257, %250
  %261 = phi i1 [ false, %250 ], [ %259, %257 ]
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 1, i32 0
  store i32 %263, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 1), align 8
  br label %264

264:                                              ; preds = %260, %247
  %265 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 1), align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %264
  %268 = load i32, i32* @file_mips_fp32, align 4
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %275

270:                                              ; preds = %267
  %271 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %272 = sext i32 %271 to i64
  %273 = inttoptr i64 %272 to i8*
  %274 = call i32 (i8*, ...) @as_bad(i8* %273)
  br label %275

275:                                              ; preds = %270, %267, %264
  %276 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 2), align 4
  %277 = icmp eq i32 %276, -1
  br i1 %277, label %278, label %292

278:                                              ; preds = %275
  %279 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %1, align 8
  %280 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @MIPS_CPU_ASE_MDMX, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %278
  %286 = load i32, i32* @file_mips_fp32, align 4
  %287 = icmp eq i32 %286, 0
  br label %288

288:                                              ; preds = %285, %278
  %289 = phi i1 [ false, %278 ], [ %287, %285 ]
  %290 = zext i1 %289 to i64
  %291 = select i1 %289, i32 1, i32 0
  store i32 %291, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 2), align 4
  br label %292

292:                                              ; preds = %288, %275
  %293 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 2), align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %303

295:                                              ; preds = %292
  %296 = load i32, i32* @file_mips_fp32, align 4
  %297 = icmp eq i32 %296, 1
  br i1 %297, label %298, label %303

298:                                              ; preds = %295
  %299 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %300 = sext i32 %299 to i64
  %301 = inttoptr i64 %300 to i8*
  %302 = call i32 (i8*, ...) @as_bad(i8* %301)
  br label %303

303:                                              ; preds = %298, %295, %292
  %304 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 4), align 4
  %305 = icmp eq i32 %304, -1
  br i1 %305, label %306, label %315

306:                                              ; preds = %303
  %307 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %1, align 8
  %308 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @MIPS_CPU_ASE_SMARTMIPS, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  %313 = zext i1 %312 to i64
  %314 = select i1 %312, i32 1, i32 0
  store i32 %314, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 4), align 4
  br label %315

315:                                              ; preds = %306, %303
  %316 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 4), align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %327

318:                                              ; preds = %315
  %319 = load i32, i32* @ISA_SUPPORTS_SMARTMIPS, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %327, label %321

321:                                              ; preds = %318
  %322 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  %323 = call %struct.mips_cpu_info* @mips_cpu_info_from_isa(i64 %322)
  %324 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = call i32 (i8*, ...) @as_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i32 %325)
  br label %327

327:                                              ; preds = %321, %318, %315
  %328 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 5), align 8
  %329 = icmp eq i32 %328, -1
  br i1 %329, label %330, label %339

330:                                              ; preds = %327
  %331 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %1, align 8
  %332 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @MIPS_CPU_ASE_DSP, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  %337 = zext i1 %336 to i64
  %338 = select i1 %336, i32 1, i32 0
  store i32 %338, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 5), align 8
  br label %339

339:                                              ; preds = %330, %327
  %340 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 5), align 8
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %351

342:                                              ; preds = %339
  %343 = load i32, i32* @ISA_SUPPORTS_DSP_ASE, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %351, label %345

345:                                              ; preds = %342
  %346 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  %347 = call %struct.mips_cpu_info* @mips_cpu_info_from_isa(i64 %346)
  %348 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 4
  %350 = call i32 (i8*, ...) @as_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i32 %349)
  br label %351

351:                                              ; preds = %345, %342, %339
  %352 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 6), align 4
  %353 = icmp eq i32 %352, -1
  br i1 %353, label %354, label %371

354:                                              ; preds = %351
  %355 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %1, align 8
  %356 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* @MIPS_CPU_ASE_DSPR2, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  %361 = zext i1 %360 to i64
  %362 = select i1 %360, i32 1, i32 0
  store i32 %362, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 6), align 4
  %363 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %1, align 8
  %364 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @MIPS_CPU_ASE_DSP, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  %369 = zext i1 %368 to i64
  %370 = select i1 %368, i32 1, i32 0
  store i32 %370, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 5), align 8
  br label %371

371:                                              ; preds = %354, %351
  %372 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 6), align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %383

374:                                              ; preds = %371
  %375 = load i32, i32* @ISA_SUPPORTS_DSPR2_ASE, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %383, label %377

377:                                              ; preds = %374
  %378 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  %379 = call %struct.mips_cpu_info* @mips_cpu_info_from_isa(i64 %378)
  %380 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = call i32 (i8*, ...) @as_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i32 %381)
  br label %383

383:                                              ; preds = %377, %374, %371
  %384 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 7), align 8
  %385 = icmp eq i32 %384, -1
  br i1 %385, label %386, label %395

386:                                              ; preds = %383
  %387 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %1, align 8
  %388 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @MIPS_CPU_ASE_MT, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  %393 = zext i1 %392 to i64
  %394 = select i1 %392, i32 1, i32 0
  store i32 %394, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 7), align 8
  br label %395

395:                                              ; preds = %386, %383
  %396 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 7), align 8
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %407

398:                                              ; preds = %395
  %399 = load i32, i32* @ISA_SUPPORTS_MT_ASE, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %407, label %401

401:                                              ; preds = %398
  %402 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  %403 = call %struct.mips_cpu_info* @mips_cpu_info_from_isa(i64 %402)
  %404 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 4
  %406 = call i32 (i8*, ...) @as_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i32 %405)
  br label %407

407:                                              ; preds = %401, %398, %395
  %408 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  store i64 %408, i64* @file_mips_isa, align 8
  %409 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 3), align 8
  store i32 %409, i32* @file_ase_mips16, align 4
  %410 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 1), align 8
  store i32 %410, i32* @file_ase_mips3d, align 4
  %411 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 2), align 4
  store i32 %411, i32* @file_ase_mdmx, align 4
  %412 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 4), align 4
  store i32 %412, i32* @file_ase_smartmips, align 4
  %413 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 5), align 8
  store i32 %413, i32* @file_ase_dsp, align 4
  %414 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 6), align 4
  store i32 %414, i32* @file_ase_dspr2, align 4
  %415 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 7), align 8
  store i32 %415, i32* @file_ase_mt, align 4
  %416 = load i32, i32* @file_mips_gp32, align 4
  store i32 %416, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 8), align 4
  %417 = load i32, i32* @file_mips_fp32, align 4
  store i32 %417, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 9), align 8
  %418 = load i32, i32* @mips_flag_mdebug, align 4
  %419 = icmp slt i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %407
  store i32 0, i32* @mips_flag_mdebug, align 4
  br label %421

421:                                              ; preds = %420, %407
  ret void
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @as_bad(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.mips_cpu_info* @mips_parse_cpu(i8*, i64) #1

declare dso_local %struct.mips_cpu_info* @mips_cpu_info_from_isa(i64) #1

declare dso_local i64 @ABI_NEEDS_64BIT_REGS(i64) #1

declare dso_local i64 @ISA_HAS_64BIT_REGS(i64) #1

declare dso_local i32 @mips_set_architecture(%struct.mips_cpu_info*) #1

declare dso_local i32 @mips_set_tune(%struct.mips_cpu_info*) #1

declare dso_local i64 @ABI_NEEDS_32BIT_REGS(i64) #1

declare dso_local i32 @ISA_HAS_64BIT_FPRS(i64) #1

declare dso_local i32 @ISA_HAS_MXHC1(i64) #1

declare dso_local i32 @as_warn(i8*, ...) #1

declare dso_local i64 @CPU_HAS_MIPS16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
