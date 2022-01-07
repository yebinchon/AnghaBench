; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_mov_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_mov_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i64 }

@unified_syntax = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@current_it_mask = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@REG_PC = common dso_local global i32 0, align 4
@REG_LR = common dso_local global i32 0, align 4
@T2_SUBS_PC_LR = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_THUMB_IMM = common dso_local global i8* null, align 8
@BFD_RELOC_ARM_T32_IMMEDIATE = common dso_local global i8* null, align 8
@T_OPCODE_LSL_R = common dso_local global i8* null, align 8
@T_MNEM_lsl = common dso_local global i32 0, align 4
@T_OPCODE_ASR_R = common dso_local global i8* null, align 8
@T_MNEM_asr = common dso_local global i32 0, align 4
@T_OPCODE_LSR_R = common dso_local global i8* null, align 8
@T_MNEM_lsr = common dso_local global i32 0, align 4
@T_OPCODE_ROR_R = common dso_local global i8* null, align 8
@T_MNEM_ror = common dso_local global i32 0, align 4
@CONDS_BIT = common dso_local global i32 0, align 4
@T_OPCODE_LSL_I = common dso_local global i64 0, align 8
@T_OPCODE_LSR_I = common dso_local global i64 0, align 8
@T_OPCODE_ASR_I = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_THUMB_SHIFT = common dso_local global i8* null, align 8
@T_OPCODE_MOV_HR = common dso_local global i8* null, align 8
@T_OPCODE_ADD_I3 = common dso_local global i8* null, align 8
@T_OPCODE_CMP_LR = common dso_local global i8* null, align 8
@T_OPCODE_CMP_HR = common dso_local global i8* null, align 8
@T_OPCODE_MOV_I8 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"only lo regs allowed with immediate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_t_mov_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_t_mov_cmp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* @unified_syntax, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %495

8:                                                ; preds = %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %10 = icmp eq i64 %9, 129
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %13 = icmp eq i64 %12, 128
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i1 [ true, %8 ], [ %13, %11 ]
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 8, i32 16
  store i32 %17, i32* %1, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %21, 7
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sle i32 %27, 7
  br label %29

29:                                               ; preds = %23, %14
  %30 = phi i1 [ false, %14 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  store i64 %32, i64* %2, align 8
  %33 = load i64, i64* @current_it_mask, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* %2, align 8
  %37 = icmp ne i64 %36, 128
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %48

39:                                               ; preds = %29
  %40 = load i64, i64* %2, align 8
  %41 = icmp ne i64 %40, 128
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ true, %39 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %35
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1), align 8
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51, %48
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %51
  %60 = load i64, i64* %2, align 8
  %61 = icmp eq i64 %60, 128
  br i1 %61, label %62, label %90

62:                                               ; preds = %59
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %62
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %68
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @REG_PC, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @REG_LR, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i64, i64* @T2_SUBS_PC_LR, align 8
  store i64 %89, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %573

90:                                               ; preds = %81, %74, %68, %62, %59
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %147, label %96

96:                                               ; preds = %90
  %97 = load i64, i64* @current_it_mask, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i64, i64* %2, align 8
  %101 = icmp eq i64 %100, 129
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %99, %96
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %103
  %107 = load i32, i32* %3, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %106
  %110 = load i64, i64* %2, align 8
  %111 = call i8* @THUMB_OP16(i64 %110)
  %112 = ptrtoint i8* %111 to i64
  store i64 %112, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = shl i32 %116, 8
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1), align 8
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %125

123:                                              ; preds = %109
  %124 = load i8*, i8** @BFD_RELOC_ARM_THUMB_IMM, align 8
  store i8* %124, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 3, i32 0), align 8
  br label %127

125:                                              ; preds = %109
  %126 = load i64, i64* %2, align 8
  store i64 %126, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  br label %127

127:                                              ; preds = %125, %123
  br label %146

128:                                              ; preds = %106, %103
  %129 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %130 = trunc i64 %129 to i32
  %131 = call i8* @THUMB_OP32(i32 %130)
  %132 = ptrtoint i8* %131 to i64
  store i64 %132, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %134 = and i64 %133, 3791650815
  %135 = or i64 %134, 268435456
  store i64 %135, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %1, align 4
  %141 = shl i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %144 = or i64 %143, %142
  store i64 %144, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %145 = load i8*, i8** @BFD_RELOC_ARM_T32_IMMEDIATE, align 8
  store i8* %145, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 3, i32 0), align 8
  br label %146

146:                                              ; preds = %128, %127
  br label %494

147:                                              ; preds = %90
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 1
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %310

153:                                              ; preds = %147
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i64 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %310

159:                                              ; preds = %153
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %161 = icmp eq i64 %160, 129
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %164 = icmp eq i64 %163, 128
  br i1 %164, label %165, label %310

165:                                              ; preds = %162, %159
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %167 = icmp eq i64 %166, 128
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %5, align 4
  %169 = load i64, i64* @current_it_mask, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %165
  %172 = load i32, i32* %5, align 4
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %3, align 4
  br label %178

176:                                              ; preds = %165
  %177 = load i32, i32* %5, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %171
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1), align 8
  %180 = icmp eq i32 %179, 4
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i32, i32* @FALSE, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %181, %178
  %184 = load i32, i32* %4, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %183
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i64 1
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp sgt i32 %190, 7
  br i1 %191, label %192, label %194

192:                                              ; preds = %186, %183
  %193 = load i32, i32* @FALSE, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %192, %186
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i64 1
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %198, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %194
  %205 = load i32, i32* @FALSE, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %204, %194
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i64 1
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  switch i32 %210, label %255 [
    i32 133, label %211
    i32 134, label %222
    i32 132, label %233
    i32 131, label %244
  ]

211:                                              ; preds = %206
  %212 = load i32, i32* %3, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  %215 = load i8*, i8** @T_OPCODE_LSL_R, align 8
  br label %219

216:                                              ; preds = %211
  %217 = load i32, i32* @T_MNEM_lsl, align 4
  %218 = call i8* @THUMB_OP32(i32 %217)
  br label %219

219:                                              ; preds = %216, %214
  %220 = phi i8* [ %215, %214 ], [ %218, %216 ]
  %221 = ptrtoint i8* %220 to i64
  store i64 %221, i64* %2, align 8
  br label %257

222:                                              ; preds = %206
  %223 = load i32, i32* %3, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = load i8*, i8** @T_OPCODE_ASR_R, align 8
  br label %230

227:                                              ; preds = %222
  %228 = load i32, i32* @T_MNEM_asr, align 4
  %229 = call i8* @THUMB_OP32(i32 %228)
  br label %230

230:                                              ; preds = %227, %225
  %231 = phi i8* [ %226, %225 ], [ %229, %227 ]
  %232 = ptrtoint i8* %231 to i64
  store i64 %232, i64* %2, align 8
  br label %257

233:                                              ; preds = %206
  %234 = load i32, i32* %3, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = load i8*, i8** @T_OPCODE_LSR_R, align 8
  br label %241

238:                                              ; preds = %233
  %239 = load i32, i32* @T_MNEM_lsr, align 4
  %240 = call i8* @THUMB_OP32(i32 %239)
  br label %241

241:                                              ; preds = %238, %236
  %242 = phi i8* [ %237, %236 ], [ %240, %238 ]
  %243 = ptrtoint i8* %242 to i64
  store i64 %243, i64* %2, align 8
  br label %257

244:                                              ; preds = %206
  %245 = load i32, i32* %3, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %244
  %248 = load i8*, i8** @T_OPCODE_ROR_R, align 8
  br label %252

249:                                              ; preds = %244
  %250 = load i32, i32* @T_MNEM_ror, align 4
  %251 = call i8* @THUMB_OP32(i32 %250)
  br label %252

252:                                              ; preds = %249, %247
  %253 = phi i8* [ %248, %247 ], [ %251, %249 ]
  %254 = ptrtoint i8* %253 to i64
  store i64 %254, i64* %2, align 8
  br label %257

255:                                              ; preds = %206
  %256 = call i32 (...) @abort() #3
  unreachable

257:                                              ; preds = %252, %241, %230, %219
  %258 = load i64, i64* %2, align 8
  store i64 %258, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %259 = load i32, i32* %3, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %277

261:                                              ; preds = %257
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i64 0
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %268 = or i64 %267, %266
  store i64 %268, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i64 1
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = shl i32 %272, 3
  %274 = sext i32 %273 to i64
  %275 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %276 = or i64 %275, %274
  store i64 %276, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %309

277:                                              ; preds = %257
  %278 = load i32, i32* %5, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = load i32, i32* @CONDS_BIT, align 4
  %282 = sext i32 %281 to i64
  %283 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %284 = or i64 %283, %282
  store i64 %284, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %285

285:                                              ; preds = %280, %277
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i64 0
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = shl i32 %289, 8
  %291 = sext i32 %290 to i64
  %292 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %293 = or i64 %292, %291
  store i64 %293, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i64 1
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = shl i32 %297, 16
  %299 = sext i32 %298 to i64
  %300 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %301 = or i64 %300, %299
  store i64 %301, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i64 1
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = sext i32 %305 to i64
  %307 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %308 = or i64 %307, %306
  store i64 %308, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %309

309:                                              ; preds = %285, %261
  br label %493

310:                                              ; preds = %162, %153, %147
  %311 = load i32, i32* %3, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %393, label %313

313:                                              ; preds = %310
  %314 = load i32, i32* %4, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %340

316:                                              ; preds = %313
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i64 1
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 4
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %340

322:                                              ; preds = %316
  %323 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %324 = icmp eq i64 %323, 129
  br i1 %324, label %328, label %325

325:                                              ; preds = %322
  %326 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %327 = icmp eq i64 %326, 128
  br i1 %327, label %328, label %340

328:                                              ; preds = %325, %322
  %329 = load i64, i64* @current_it_mask, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %328
  %332 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %333 = icmp eq i64 %332, 129
  %334 = zext i1 %333 to i32
  store i32 %334, i32* %3, align 4
  br label %339

335:                                              ; preds = %328
  %336 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %337 = icmp eq i64 %336, 128
  %338 = zext i1 %337 to i32
  store i32 %338, i32* %3, align 4
  br label %339

339:                                              ; preds = %335, %331
  br label %340

340:                                              ; preds = %339, %325, %316, %313
  %341 = load i32, i32* %3, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %357

343:                                              ; preds = %340
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i64 1
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  switch i32 %347, label %354 [
    i32 133, label %348
    i32 132, label %350
    i32 134, label %352
  ]

348:                                              ; preds = %343
  %349 = load i64, i64* @T_OPCODE_LSL_I, align 8
  store i64 %349, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %356

350:                                              ; preds = %343
  %351 = load i64, i64* @T_OPCODE_LSR_I, align 8
  store i64 %351, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %356

352:                                              ; preds = %343
  %353 = load i64, i64* @T_OPCODE_ASR_I, align 8
  store i64 %353, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %356

354:                                              ; preds = %343
  %355 = load i32, i32* @FALSE, align 4
  store i32 %355, i32* %3, align 4
  br label %356

356:                                              ; preds = %354, %352, %350, %348
  br label %357

357:                                              ; preds = %356, %340
  %358 = load i32, i32* %3, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %377

360:                                              ; preds = %357
  %361 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i64 0
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = sext i32 %364 to i64
  %366 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %367 = or i64 %366, %365
  store i64 %367, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %368 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i64 1
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = shl i32 %371, 3
  %373 = sext i32 %372 to i64
  %374 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %375 = or i64 %374, %373
  store i64 %375, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %376 = load i8*, i8** @BFD_RELOC_ARM_THUMB_SHIFT, align 8
  store i8* %376, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 3, i32 0), align 8
  br label %392

377:                                              ; preds = %357
  %378 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %379 = trunc i64 %378 to i32
  %380 = call i8* @THUMB_OP32(i32 %379)
  %381 = ptrtoint i8* %380 to i64
  store i64 %381, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %382 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i64 0
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* %1, align 4
  %387 = shl i32 %385, %386
  %388 = sext i32 %387 to i64
  %389 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %390 = or i64 %389, %388
  store i64 %390, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %391 = call i32 @encode_thumb32_shifted_operand(i32 1)
  br label %392

392:                                              ; preds = %377, %360
  br label %492

393:                                              ; preds = %310
  %394 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  switch i64 %394, label %491 [
    i64 129, label %395
    i64 128, label %423
    i64 130, label %441
  ]

395:                                              ; preds = %393
  %396 = load i8*, i8** @T_OPCODE_MOV_HR, align 8
  %397 = ptrtoint i8* %396 to i64
  store i64 %397, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i64 0
  %400 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = and i32 %401, 8
  %403 = shl i32 %402, 4
  %404 = sext i32 %403 to i64
  %405 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %406 = or i64 %405, %404
  store i64 %406, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %407 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %408 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %407, i64 0
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = and i32 %410, 7
  %412 = sext i32 %411 to i64
  %413 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %414 = or i64 %413, %412
  store i64 %414, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %415 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %416 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %415, i64 1
  %417 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = shl i32 %418, 3
  %420 = sext i32 %419 to i64
  %421 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %422 = or i64 %421, %420
  store i64 %422, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %491

423:                                              ; preds = %393
  %424 = load i8*, i8** @T_OPCODE_ADD_I3, align 8
  %425 = ptrtoint i8* %424 to i64
  store i64 %425, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %426 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i64 0
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = sext i32 %429 to i64
  %431 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %432 = or i64 %431, %430
  store i64 %432, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %433 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i64 1
  %435 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = shl i32 %436, 3
  %438 = sext i32 %437 to i64
  %439 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %440 = or i64 %439, %438
  store i64 %440, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %491

441:                                              ; preds = %393
  %442 = load i32, i32* %4, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %462

444:                                              ; preds = %441
  %445 = load i8*, i8** @T_OPCODE_CMP_LR, align 8
  %446 = ptrtoint i8* %445 to i64
  store i64 %446, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %447 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %448 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %447, i64 0
  %449 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = sext i32 %450 to i64
  %452 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %453 = or i64 %452, %451
  store i64 %453, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %454 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %455 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %454, i64 1
  %456 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = shl i32 %457, 3
  %459 = sext i32 %458 to i64
  %460 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %461 = or i64 %460, %459
  store i64 %461, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %490

462:                                              ; preds = %441
  %463 = load i8*, i8** @T_OPCODE_CMP_HR, align 8
  %464 = ptrtoint i8* %463 to i64
  store i64 %464, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %465 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %466 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %465, i64 0
  %467 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = and i32 %468, 8
  %470 = shl i32 %469, 4
  %471 = sext i32 %470 to i64
  %472 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %473 = or i64 %472, %471
  store i64 %473, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %474 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %475 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %474, i64 0
  %476 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = and i32 %477, 7
  %479 = sext i32 %478 to i64
  %480 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %481 = or i64 %480, %479
  store i64 %481, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %482 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %483 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %482, i64 1
  %484 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = shl i32 %485, 3
  %487 = sext i32 %486 to i64
  %488 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %489 = or i64 %488, %487
  store i64 %489, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %490

490:                                              ; preds = %462, %444
  br label %491

491:                                              ; preds = %393, %490, %423, %395
  br label %492

492:                                              ; preds = %491, %392
  br label %493

493:                                              ; preds = %492, %309
  br label %494

494:                                              ; preds = %493, %146
  br label %573

495:                                              ; preds = %0
  %496 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %497 = call i8* @THUMB_OP16(i64 %496)
  %498 = ptrtoint i8* %497 to i64
  store i64 %498, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %499 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %500 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %499, i64 1
  %501 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %500, i32 0, i32 3
  %502 = load i64, i64* %501, align 8
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %555

504:                                              ; preds = %495
  %505 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %506 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %505, i64 0
  %507 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = icmp slt i32 %508, 8
  br i1 %509, label %510, label %542

510:                                              ; preds = %504
  %511 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %512 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %511, i64 1
  %513 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = icmp slt i32 %514, 8
  br i1 %515, label %516, label %542

516:                                              ; preds = %510
  %517 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %518 = load i64, i64* @T_OPCODE_MOV_I8, align 8
  %519 = icmp eq i64 %517, %518
  br i1 %519, label %520, label %523

520:                                              ; preds = %516
  %521 = load i8*, i8** @T_OPCODE_ADD_I3, align 8
  %522 = ptrtoint i8* %521 to i64
  store i64 %522, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %526

523:                                              ; preds = %516
  %524 = load i8*, i8** @T_OPCODE_CMP_LR, align 8
  %525 = ptrtoint i8* %524 to i64
  store i64 %525, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %526

526:                                              ; preds = %523, %520
  %527 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %528 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %527, i64 0
  %529 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 8
  %531 = sext i32 %530 to i64
  %532 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %533 = or i64 %532, %531
  store i64 %533, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %534 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %535 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %534, i64 1
  %536 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = shl i32 %537, 3
  %539 = sext i32 %538 to i64
  %540 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %541 = or i64 %540, %539
  store i64 %541, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %554

542:                                              ; preds = %510, %504
  %543 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %544 = load i64, i64* @T_OPCODE_MOV_I8, align 8
  %545 = icmp eq i64 %543, %544
  br i1 %545, label %546, label %549

546:                                              ; preds = %542
  %547 = load i8*, i8** @T_OPCODE_MOV_HR, align 8
  %548 = ptrtoint i8* %547 to i64
  store i64 %548, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %552

549:                                              ; preds = %542
  %550 = load i8*, i8** @T_OPCODE_CMP_HR, align 8
  %551 = ptrtoint i8* %550 to i64
  store i64 %551, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %552

552:                                              ; preds = %549, %546
  %553 = call i32 (...) @do_t_cpy()
  br label %554

554:                                              ; preds = %552, %526
  br label %573

555:                                              ; preds = %495
  %556 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %557 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %556, i64 0
  %558 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = icmp sgt i32 %559, 7
  %561 = zext i1 %560 to i32
  %562 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %563 = call i32 @constraint(i32 %561, i32 %562)
  %564 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %565 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %564, i64 0
  %566 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = shl i32 %567, 8
  %569 = sext i32 %568 to i64
  %570 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %571 = or i64 %570, %569
  store i64 %571, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %572 = load i8*, i8** @BFD_RELOC_ARM_THUMB_IMM, align 8
  store i8* %572, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 3, i32 0), align 8
  br label %573

573:                                              ; preds = %88, %494, %555, %554
  ret void
}

declare dso_local i8* @THUMB_OP16(i64) #1

declare dso_local i8* @THUMB_OP32(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @encode_thumb32_shifted_operand(i32) #1

declare dso_local i32 @do_t_cpy(...) #1

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
