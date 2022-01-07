; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_add_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_add_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@inst = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@unified_syntax = common dso_local global i64 0, align 8
@T_MNEM_adds = common dso_local global i32 0, align 4
@T_MNEM_subs = common dso_local global i32 0, align 4
@current_it_mask = common dso_local global i64 0, align 8
@T_MNEM_add = common dso_local global i32 0, align 4
@REG_SP = common dso_local global i32 0, align 4
@T_MNEM_inc_sp = common dso_local global i32 0, align 4
@T_MNEM_dec_sp = common dso_local global i32 0, align 4
@T_MNEM_add_sp = common dso_local global i32 0, align 4
@REG_PC = common dso_local global i32 0, align 4
@T_MNEM_add_pc = common dso_local global i32 0, align 4
@T_MNEM_addis = common dso_local global i32 0, align 4
@T_MNEM_subis = common dso_local global i32 0, align 4
@T_MNEM_addi = common dso_local global i32 0, align 4
@T_MNEM_subi = common dso_local global i32 0, align 4
@BFD_RELOC_ARM_THUMB_ADD = common dso_local global i8* null, align 8
@BAD_HIREG = common dso_local global i32 0, align 4
@REG_LR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"only SUBS PC, LR, #const allowed\00", align 1
@O_constant = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"expression too complex\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"immediate value out of range\00", align 1
@T2_SUBS_PC_LR = common dso_local global i32 0, align 4
@BFD_RELOC_UNUSED = common dso_local global i8* null, align 8
@BFD_RELOC_ARM_T32_IMM12 = common dso_local global i8* null, align 8
@BFD_RELOC_ARM_T32_IMMEDIATE = common dso_local global i8* null, align 8
@BFD_RELOC_ARM_T32_ADD_IMM = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@T_OPCODE_ADD_R3 = common dso_local global i8* null, align 8
@T_OPCODE_SUB_R3 = common dso_local global i8* null, align 8
@T_OPCODE_ADD_HI = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"shift must be constant\00", align 1
@BAD_THUMB32 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"unshifted register required\00", align 1
@T_MNEM_sub = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"dest must overlap one source register\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_t_add_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_t_add_sub() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %1, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  br label %27

22:                                               ; preds = %0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i32 [ %21, %17 ], [ %26, %22 ]
  store i32 %28, i32* %2, align 4
  %29 = load i64, i64* @unified_syntax, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %389

31:                                               ; preds = %27
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %33 = load i32, i32* @T_MNEM_adds, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %37 = load i32, i32* @T_MNEM_subs, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ true, %31 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i64, i64* @current_it_mask, align 8
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %52

48:                                               ; preds = %39
  %49 = load i64, i64* @current_it_mask, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %261, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %60 = load i32, i32* @T_MNEM_add, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %64 = load i32, i32* @T_MNEM_adds, align 4
  %65 = icmp eq i32 %63, %64
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ true, %58 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 4
  %70 = icmp ne i32 %69, 4
  br i1 %70, label %71, label %180

71:                                               ; preds = %66
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* @REG_SP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @REG_SP, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @T_MNEM_inc_sp, align 4
  br label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @T_MNEM_dec_sp, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  store i32 %90, i32* %6, align 4
  br label %155

91:                                               ; preds = %79, %75, %71
  %92 = load i32, i32* %1, align 4
  %93 = icmp sle i32 %92, 7
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* @REG_SP, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* @T_MNEM_add_sp, align 4
  store i32 %105, i32* %6, align 4
  br label %154

106:                                              ; preds = %101, %98, %94, %91
  %107 = load i32, i32* %1, align 4
  %108 = icmp sle i32 %107, 7
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load i32, i32* %2, align 4
  %111 = load i32, i32* @REG_PC, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* @T_MNEM_add_pc, align 4
  store i32 %120, i32* %6, align 4
  br label %153

121:                                              ; preds = %116, %113, %109, %106
  %122 = load i32, i32* %1, align 4
  %123 = icmp sle i32 %122, 7
  br i1 %123, label %124, label %152

124:                                              ; preds = %121
  %125 = load i32, i32* %2, align 4
  %126 = icmp sle i32 %125, 7
  br i1 %126, label %127, label %152

127:                                              ; preds = %124
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %127
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i32, i32* @T_MNEM_addis, align 4
  br label %140

138:                                              ; preds = %133
  %139 = load i32, i32* @T_MNEM_subis, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ]
  store i32 %141, i32* %6, align 4
  br label %151

142:                                              ; preds = %130
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* @T_MNEM_addi, align 4
  br label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @T_MNEM_subi, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %149, %140
  br label %152

152:                                              ; preds = %151, %127, %124, %121
  br label %153

153:                                              ; preds = %152, %119
  br label %154

154:                                              ; preds = %153, %104
  br label %155

155:                                              ; preds = %154, %89
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %155
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @THUMB_OP16(i32 %159)
  store i32 %160, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %161 = load i32, i32* %1, align 4
  %162 = shl i32 %161, 4
  %163 = load i32, i32* %2, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %166 = or i32 %165, %164
  store i32 %166, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %167 = load i8*, i8** @BFD_RELOC_ARM_THUMB_ADD, align 8
  store i8* %167, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 4, i32 0), align 8
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 4
  %169 = icmp ne i32 %168, 2
  br i1 %169, label %170, label %172

170:                                              ; preds = %158
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  br label %172

172:                                              ; preds = %170, %158
  br label %179

173:                                              ; preds = %155
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 4
  %175 = icmp eq i32 %174, 2
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* @BAD_HIREG, align 4
  %178 = call i32 @constraint(i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %173, %172
  br label %180

180:                                              ; preds = %179, %66
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 4
  %182 = icmp eq i32 %181, 4
  br i1 %182, label %189, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 4
  %185 = icmp ne i32 %184, 2
  br i1 %185, label %186, label %260

186:                                              ; preds = %183
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %260, label %189

189:                                              ; preds = %186, %180
  %190 = load i32, i32* %1, align 4
  %191 = load i32, i32* @REG_PC, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %226

193:                                              ; preds = %189
  %194 = load i32, i32* %2, align 4
  %195 = load i32, i32* @REG_LR, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %199 = load i32, i32* @T_MNEM_subs, align 4
  %200 = icmp ne i32 %198, %199
  br label %201

201:                                              ; preds = %197, %193
  %202 = phi i1 [ true, %193 ], [ %200, %197 ]
  %203 = zext i1 %202 to i32
  %204 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %205 = call i32 @constraint(i32 %203, i32 %204)
  %206 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 4, i32 1, i32 0), align 8
  %207 = load i64, i64* @O_constant, align 8
  %208 = icmp ne i64 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %211 = call i32 @constraint(i32 %209, i32 %210)
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 4, i32 1, i32 1), align 8
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %201
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 4, i32 1, i32 1), align 8
  %216 = icmp sgt i32 %215, 255
  br label %217

217:                                              ; preds = %214, %201
  %218 = phi i1 [ true, %201 ], [ %216, %214 ]
  %219 = zext i1 %218 to i32
  %220 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %221 = call i32 @constraint(i32 %219, i32 %220)
  %222 = load i32, i32* @T2_SUBS_PC_LR, align 4
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 4, i32 1, i32 1), align 8
  %224 = or i32 %222, %223
  store i32 %224, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %225 = load i8*, i8** @BFD_RELOC_UNUSED, align 8
  store i8* %225, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 4, i32 0), align 8
  br label %528

226:                                              ; preds = %189
  %227 = load i32, i32* %2, align 4
  %228 = load i32, i32* @REG_PC, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 -233897984, i32 -223412224
  store i32 %234, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %235 = load i8*, i8** @BFD_RELOC_ARM_T32_IMM12, align 8
  store i8* %235, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 4, i32 0), align 8
  br label %250

236:                                              ; preds = %226
  %237 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %238 = call i8* @THUMB_OP32(i32 %237)
  %239 = ptrtoint i8* %238 to i32
  store i32 %239, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %240 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %241 = and i32 %240, -503316481
  %242 = or i32 %241, 268435456
  store i32 %242, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %243 = load i32, i32* %4, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %236
  %246 = load i8*, i8** @BFD_RELOC_ARM_T32_IMMEDIATE, align 8
  store i8* %246, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 4, i32 0), align 8
  br label %249

247:                                              ; preds = %236
  %248 = load i8*, i8** @BFD_RELOC_ARM_T32_ADD_IMM, align 8
  store i8* %248, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 4, i32 0), align 8
  br label %249

249:                                              ; preds = %247, %245
  br label %250

250:                                              ; preds = %249, %230
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %1, align 4
  %253 = shl i32 %252, 8
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %255 = or i32 %254, %253
  store i32 %255, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %256 = load i32, i32* %2, align 4
  %257 = shl i32 %256, 16
  %258 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %259 = or i32 %258, %257
  store i32 %259, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  br label %260

260:                                              ; preds = %251, %186, %183
  br label %388

261:                                              ; preds = %52
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i64 2
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  store i32 %265, i32* %3, align 4
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i64 2
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %359, label %271

271:                                              ; preds = %261
  %272 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 4
  %273 = icmp ne i32 %272, 4
  br i1 %273, label %274, label %359

274:                                              ; preds = %271
  %275 = load i32, i32* %1, align 4
  %276 = icmp sgt i32 %275, 7
  br i1 %276, label %283, label %277

277:                                              ; preds = %274
  %278 = load i32, i32* %2, align 4
  %279 = icmp sgt i32 %278, 7
  br i1 %279, label %283, label %280

280:                                              ; preds = %277
  %281 = load i32, i32* %3, align 4
  %282 = icmp sgt i32 %281, 7
  br i1 %282, label %283, label %285

283:                                              ; preds = %280, %277, %274
  %284 = load i32, i32* @FALSE, align 4
  store i32 %284, i32* %5, align 4
  br label %285

285:                                              ; preds = %283, %280
  %286 = load i32, i32* %5, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %312

288:                                              ; preds = %285
  %289 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %290 = load i32, i32* @T_MNEM_adds, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %296, label %292

292:                                              ; preds = %288
  %293 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %294 = load i32, i32* @T_MNEM_add, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %292, %288
  %297 = load i8*, i8** @T_OPCODE_ADD_R3, align 8
  br label %300

298:                                              ; preds = %292
  %299 = load i8*, i8** @T_OPCODE_SUB_R3, align 8
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi i8* [ %297, %296 ], [ %299, %298 ]
  %302 = ptrtoint i8* %301 to i32
  store i32 %302, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %303 = load i32, i32* %1, align 4
  %304 = load i32, i32* %2, align 4
  %305 = shl i32 %304, 3
  %306 = or i32 %303, %305
  %307 = load i32, i32* %3, align 4
  %308 = shl i32 %307, 6
  %309 = or i32 %306, %308
  %310 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %311 = or i32 %310, %309
  store i32 %311, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  br label %528

312:                                              ; preds = %285
  %313 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %314 = load i32, i32* @T_MNEM_add, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %358

316:                                              ; preds = %312
  %317 = load i32, i32* %1, align 4
  %318 = load i32, i32* %2, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %336

320:                                              ; preds = %316
  %321 = load i8*, i8** @T_OPCODE_ADD_HI, align 8
  %322 = ptrtoint i8* %321 to i32
  store i32 %322, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %323 = load i32, i32* %1, align 4
  %324 = and i32 %323, 8
  %325 = shl i32 %324, 4
  %326 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %327 = or i32 %326, %325
  store i32 %327, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %328 = load i32, i32* %1, align 4
  %329 = and i32 %328, 7
  %330 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %331 = or i32 %330, %329
  store i32 %331, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %332 = load i32, i32* %3, align 4
  %333 = shl i32 %332, 3
  %334 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %335 = or i32 %334, %333
  store i32 %335, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  br label %528

336:                                              ; preds = %316
  %337 = load i32, i32* %1, align 4
  %338 = load i32, i32* %3, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %356

340:                                              ; preds = %336
  %341 = load i8*, i8** @T_OPCODE_ADD_HI, align 8
  %342 = ptrtoint i8* %341 to i32
  store i32 %342, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %343 = load i32, i32* %1, align 4
  %344 = and i32 %343, 8
  %345 = shl i32 %344, 4
  %346 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %347 = or i32 %346, %345
  store i32 %347, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %348 = load i32, i32* %1, align 4
  %349 = and i32 %348, 7
  %350 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %351 = or i32 %350, %349
  store i32 %351, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %352 = load i32, i32* %2, align 4
  %353 = shl i32 %352, 3
  %354 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %355 = or i32 %354, %353
  store i32 %355, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  br label %528

356:                                              ; preds = %336
  br label %357

357:                                              ; preds = %356
  br label %358

358:                                              ; preds = %357, %312
  br label %359

359:                                              ; preds = %358, %271, %261
  %360 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i64 2
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %371

365:                                              ; preds = %359
  %366 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i64 2
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 3
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br label %371

371:                                              ; preds = %365, %359
  %372 = phi i1 [ false, %359 ], [ %370, %365 ]
  %373 = zext i1 %372 to i32
  %374 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %375 = call i32 @constraint(i32 %373, i32 %374)
  %376 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %377 = call i8* @THUMB_OP32(i32 %376)
  %378 = ptrtoint i8* %377 to i32
  store i32 %378, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %379 = load i32, i32* %1, align 4
  %380 = shl i32 %379, 8
  %381 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %382 = or i32 %381, %380
  store i32 %382, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %383 = load i32, i32* %2, align 4
  %384 = shl i32 %383, 16
  %385 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %386 = or i32 %385, %384
  store i32 %386, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %387 = call i32 @encode_thumb32_shifted_operand(i32 2)
  br label %388

388:                                              ; preds = %371, %260
  br label %528

389:                                              ; preds = %27
  %390 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %391 = load i32, i32* @T_MNEM_adds, align 4
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %397, label %393

393:                                              ; preds = %389
  %394 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %395 = load i32, i32* @T_MNEM_subs, align 4
  %396 = icmp eq i32 %394, %395
  br label %397

397:                                              ; preds = %393, %389
  %398 = phi i1 [ true, %389 ], [ %396, %393 ]
  %399 = zext i1 %398 to i32
  %400 = load i32, i32* @BAD_THUMB32, align 4
  %401 = call i32 @constraint(i32 %399, i32 %400)
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i64 2
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 8
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %448, label %407

407:                                              ; preds = %397
  %408 = load i32, i32* %1, align 4
  %409 = icmp sgt i32 %408, 7
  br i1 %409, label %410, label %418

410:                                              ; preds = %407
  %411 = load i32, i32* %1, align 4
  %412 = load i32, i32* @REG_SP, align 4
  %413 = icmp ne i32 %411, %412
  br i1 %413, label %431, label %414

414:                                              ; preds = %410
  %415 = load i32, i32* %2, align 4
  %416 = load i32, i32* @REG_SP, align 4
  %417 = icmp ne i32 %415, %416
  br i1 %417, label %431, label %418

418:                                              ; preds = %414, %407
  %419 = load i32, i32* %2, align 4
  %420 = icmp sgt i32 %419, 7
  br i1 %420, label %421, label %429

421:                                              ; preds = %418
  %422 = load i32, i32* %2, align 4
  %423 = load i32, i32* @REG_SP, align 4
  %424 = icmp ne i32 %422, %423
  br i1 %424, label %425, label %429

425:                                              ; preds = %421
  %426 = load i32, i32* %2, align 4
  %427 = load i32, i32* @REG_PC, align 4
  %428 = icmp ne i32 %426, %427
  br label %429

429:                                              ; preds = %425, %421, %418
  %430 = phi i1 [ false, %421 ], [ false, %418 ], [ %428, %425 ]
  br label %431

431:                                              ; preds = %429, %414, %410
  %432 = phi i1 [ true, %414 ], [ true, %410 ], [ %430, %429 ]
  %433 = zext i1 %432 to i32
  %434 = load i32, i32* @BAD_HIREG, align 4
  %435 = call i32 @constraint(i32 %433, i32 %434)
  %436 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %437 = load i32, i32* @T_MNEM_add, align 4
  %438 = icmp eq i32 %436, %437
  %439 = zext i1 %438 to i64
  %440 = select i1 %438, i32 0, i32 32768
  store i32 %440, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %441 = load i32, i32* %1, align 4
  %442 = shl i32 %441, 4
  %443 = load i32, i32* %2, align 4
  %444 = or i32 %442, %443
  %445 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %446 = or i32 %445, %444
  store i32 %446, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %447 = load i8*, i8** @BFD_RELOC_ARM_THUMB_ADD, align 8
  store i8* %447, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 4, i32 0), align 8
  br label %528

448:                                              ; preds = %397
  %449 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i64 2
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  store i32 %452, i32* %3, align 4
  %453 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %454 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %453, i64 2
  %455 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %458 = call i32 @constraint(i32 %456, i32 %457)
  %459 = load i32, i32* %1, align 4
  %460 = icmp sgt i32 %459, 7
  br i1 %460, label %467, label %461

461:                                              ; preds = %448
  %462 = load i32, i32* %2, align 4
  %463 = icmp sgt i32 %462, 7
  br i1 %463, label %467, label %464

464:                                              ; preds = %461
  %465 = load i32, i32* %3, align 4
  %466 = icmp sgt i32 %465, 7
  br i1 %466, label %467, label %507

467:                                              ; preds = %464, %461, %448
  %468 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %469 = load i32, i32* @T_MNEM_sub, align 4
  %470 = icmp eq i32 %468, %469
  %471 = zext i1 %470 to i32
  %472 = load i32, i32* @BAD_HIREG, align 4
  %473 = call i32 @constraint(i32 %471, i32 %472)
  %474 = load i8*, i8** @T_OPCODE_ADD_HI, align 8
  %475 = ptrtoint i8* %474 to i32
  store i32 %475, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %476 = load i32, i32* %1, align 4
  %477 = and i32 %476, 8
  %478 = shl i32 %477, 4
  %479 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %480 = or i32 %479, %478
  store i32 %480, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %481 = load i32, i32* %1, align 4
  %482 = and i32 %481, 7
  %483 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %484 = or i32 %483, %482
  store i32 %484, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %485 = load i32, i32* %2, align 4
  %486 = load i32, i32* %1, align 4
  %487 = icmp eq i32 %485, %486
  br i1 %487, label %488, label %493

488:                                              ; preds = %467
  %489 = load i32, i32* %3, align 4
  %490 = shl i32 %489, 3
  %491 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %492 = or i32 %491, %490
  store i32 %492, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  br label %506

493:                                              ; preds = %467
  %494 = load i32, i32* %3, align 4
  %495 = load i32, i32* %1, align 4
  %496 = icmp eq i32 %494, %495
  br i1 %496, label %497, label %502

497:                                              ; preds = %493
  %498 = load i32, i32* %2, align 4
  %499 = shl i32 %498, 3
  %500 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %501 = or i32 %500, %499
  store i32 %501, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  br label %505

502:                                              ; preds = %493
  %503 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %504 = call i32 @constraint(i32 1, i32 %503)
  br label %505

505:                                              ; preds = %502, %497
  br label %506

506:                                              ; preds = %505, %488
  br label %527

507:                                              ; preds = %464
  %508 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %509 = load i32, i32* @T_MNEM_add, align 4
  %510 = icmp eq i32 %508, %509
  br i1 %510, label %511, label %513

511:                                              ; preds = %507
  %512 = load i8*, i8** @T_OPCODE_ADD_R3, align 8
  br label %515

513:                                              ; preds = %507
  %514 = load i8*, i8** @T_OPCODE_SUB_R3, align 8
  br label %515

515:                                              ; preds = %513, %511
  %516 = phi i8* [ %512, %511 ], [ %514, %513 ]
  %517 = ptrtoint i8* %516 to i32
  store i32 %517, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %518 = load i32, i32* %1, align 4
  %519 = load i32, i32* %2, align 4
  %520 = shl i32 %519, 3
  %521 = or i32 %518, %520
  %522 = load i32, i32* %3, align 4
  %523 = shl i32 %522, 6
  %524 = or i32 %521, %523
  %525 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %526 = or i32 %525, %524
  store i32 %526, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  br label %527

527:                                              ; preds = %515, %506
  br label %528

528:                                              ; preds = %217, %300, %320, %340, %431, %527, %388
  ret void
}

declare dso_local i32 @THUMB_OP16(i32) #1

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @THUMB_OP32(i32) #1

declare dso_local i32 @encode_thumb32_shifted_operand(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
