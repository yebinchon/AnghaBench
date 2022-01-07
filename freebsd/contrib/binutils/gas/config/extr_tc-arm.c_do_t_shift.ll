; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_shift.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i8* }

@inst = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@unified_syntax = common dso_local global i64 0, align 8
@current_it_mask = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@T_MNEM_movs = common dso_local global i32 0, align 4
@T_MNEM_mov = common dso_local global i32 0, align 4
@BFD_RELOC_UNUSED = common dso_local global i8* null, align 8
@T_OPCODE_ASR_R = common dso_local global i8* null, align 8
@T_OPCODE_LSL_R = common dso_local global i8* null, align 8
@T_OPCODE_LSR_R = common dso_local global i8* null, align 8
@T_OPCODE_ROR_R = common dso_local global i8* null, align 8
@T_OPCODE_ASR_I = common dso_local global i8* null, align 8
@T_OPCODE_LSL_I = common dso_local global i8* null, align 8
@T_OPCODE_LSR_I = common dso_local global i8* null, align 8
@BFD_RELOC_ARM_THUMB_SHIFT = common dso_local global i8* null, align 8
@BAD_HIREG = common dso_local global i32 0, align 4
@BAD_THUMB32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"source1 and dest must be same register\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ror #imm not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_t_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_t_shift() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i64 1
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  br label %16

16:                                               ; preds = %8, %0
  %17 = load i64, i64* @unified_syntax, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %221

19:                                               ; preds = %16
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  switch i32 %20, label %25 [
    i32 135, label %21
    i32 134, label %21
    i32 133, label %22
    i32 132, label %22
    i32 131, label %23
    i32 130, label %23
    i32 129, label %24
    i32 128, label %24
  ]

21:                                               ; preds = %19, %19
  store i32 139, i32* %2, align 4
  br label %27

22:                                               ; preds = %19, %19
  store i32 138, i32* %2, align 4
  br label %27

23:                                               ; preds = %19, %19
  store i32 137, i32* %2, align 4
  br label %27

24:                                               ; preds = %19, %19
  store i32 136, i32* %2, align 4
  br label %27

25:                                               ; preds = %19
  %26 = call i32 (...) @abort() #3
  unreachable

27:                                               ; preds = %24, %23, %22, %21
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %29 = call i32 @THUMB_SETS_FLAGS(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* @current_it_mask, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %1, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load i64, i64* @current_it_mask, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 7
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 7
  br i1 %50, label %51, label %53

51:                                               ; preds = %45, %39
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %51, %45
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 %60, 136
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %1, align 4
  br label %64

64:                                               ; preds = %62, %59, %53
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %74, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %70
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, 7
  br i1 %85, label %86, label %88

86:                                               ; preds = %80, %70
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %1, align 4
  br label %88

88:                                               ; preds = %86, %80, %64
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1), align 4
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %1, align 4
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i32, i32* %1, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %155, label %96

96:                                               ; preds = %93
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %96
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %104 = call i8* @THUMB_OP32(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = shl i32 %109, 8
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %112 = or i32 %111, %110
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = shl i32 %116, 16
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %119 = or i32 %118, %117
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 2
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %125 = or i32 %124, %123
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %154

126:                                              ; preds = %96
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i32 1, i32* %129, align 4
  %130 = load i32, i32* %2, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 8
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %135 = call i32 @THUMB_SETS_FLAGS(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %126
  %138 = load i32, i32* @T_MNEM_movs, align 4
  br label %141

139:                                              ; preds = %126
  %140 = load i32, i32* @T_MNEM_mov, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %138, %137 ], [ %140, %139 ]
  %143 = call i8* @THUMB_OP32(i32 %142)
  %144 = ptrtoint i8* %143 to i32
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = shl i32 %148, 8
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %151 = or i32 %150, %149
  store i32 %151, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %152 = call i32 @encode_thumb32_shifted_operand(i32 1)
  %153 = load i8*, i8** @BFD_RELOC_UNUSED, align 8
  store i8* %153, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 3, i32 0), align 8
  br label %154

154:                                              ; preds = %141, %102
  br label %220

155:                                              ; preds = %93
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 2
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %191

161:                                              ; preds = %155
  %162 = load i32, i32* %2, align 4
  switch i32 %162, label %175 [
    i32 139, label %163
    i32 138, label %166
    i32 137, label %169
    i32 136, label %172
  ]

163:                                              ; preds = %161
  %164 = load i8*, i8** @T_OPCODE_ASR_R, align 8
  %165 = ptrtoint i8* %164 to i32
  store i32 %165, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %177

166:                                              ; preds = %161
  %167 = load i8*, i8** @T_OPCODE_LSL_R, align 8
  %168 = ptrtoint i8* %167 to i32
  store i32 %168, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %177

169:                                              ; preds = %161
  %170 = load i8*, i8** @T_OPCODE_LSR_R, align 8
  %171 = ptrtoint i8* %170 to i32
  store i32 %171, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %177

172:                                              ; preds = %161
  %173 = load i8*, i8** @T_OPCODE_ROR_R, align 8
  %174 = ptrtoint i8* %173 to i32
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %177

175:                                              ; preds = %161
  %176 = call i32 (...) @abort() #3
  unreachable

177:                                              ; preds = %172, %169, %166, %163
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %183 = or i32 %182, %181
  store i32 %183, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i64 2
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = shl i32 %187, 3
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %190 = or i32 %189, %188
  store i32 %190, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %219

191:                                              ; preds = %155
  %192 = load i32, i32* %2, align 4
  switch i32 %192, label %202 [
    i32 139, label %193
    i32 138, label %196
    i32 137, label %199
  ]

193:                                              ; preds = %191
  %194 = load i8*, i8** @T_OPCODE_ASR_I, align 8
  %195 = ptrtoint i8* %194 to i32
  store i32 %195, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %204

196:                                              ; preds = %191
  %197 = load i8*, i8** @T_OPCODE_LSL_I, align 8
  %198 = ptrtoint i8* %197 to i32
  store i32 %198, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %204

199:                                              ; preds = %191
  %200 = load i8*, i8** @T_OPCODE_LSR_I, align 8
  %201 = ptrtoint i8* %200 to i32
  store i32 %201, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %204

202:                                              ; preds = %191
  %203 = call i32 (...) @abort() #3
  unreachable

204:                                              ; preds = %199, %196, %193
  %205 = load i8*, i8** @BFD_RELOC_ARM_THUMB_SHIFT, align 8
  store i8* %205, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 3, i32 0), align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %211 = or i32 %210, %209
  store i32 %211, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 1
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = shl i32 %215, 3
  %217 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %218 = or i32 %217, %216
  store i32 %218, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %219

219:                                              ; preds = %204, %177
  br label %220

220:                                              ; preds = %219, %154
  br label %328

221:                                              ; preds = %16
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i64 0
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp sgt i32 %225, 7
  br i1 %226, label %233, label %227

227:                                              ; preds = %221
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i64 1
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp sgt i32 %231, 7
  br label %233

233:                                              ; preds = %227, %221
  %234 = phi i1 [ true, %221 ], [ %232, %227 ]
  %235 = zext i1 %234 to i32
  %236 = load i32, i32* @BAD_HIREG, align 4
  %237 = call i32 @constraint(i32 %235, i32 %236)
  %238 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %239 = call i32 @THUMB_SETS_FLAGS(i32 %238)
  %240 = load i32, i32* @BAD_THUMB32, align 4
  %241 = call i32 @constraint(i32 %239, i32 %240)
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i64 2
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %297

247:                                              ; preds = %233
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i64 2
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp sgt i32 %251, 7
  %253 = zext i1 %252 to i32
  %254 = load i32, i32* @BAD_HIREG, align 4
  %255 = call i32 @constraint(i32 %253, i32 %254)
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i64 1
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %259, %263
  %265 = zext i1 %264 to i32
  %266 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %267 = call i32 @constraint(i32 %265, i32 %266)
  %268 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  switch i32 %268, label %281 [
    i32 135, label %269
    i32 133, label %272
    i32 131, label %275
    i32 129, label %278
  ]

269:                                              ; preds = %247
  %270 = load i8*, i8** @T_OPCODE_ASR_R, align 8
  %271 = ptrtoint i8* %270 to i32
  store i32 %271, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %283

272:                                              ; preds = %247
  %273 = load i8*, i8** @T_OPCODE_LSL_R, align 8
  %274 = ptrtoint i8* %273 to i32
  store i32 %274, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %283

275:                                              ; preds = %247
  %276 = load i8*, i8** @T_OPCODE_LSR_R, align 8
  %277 = ptrtoint i8* %276 to i32
  store i32 %277, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %283

278:                                              ; preds = %247
  %279 = load i8*, i8** @T_OPCODE_ROR_R, align 8
  %280 = ptrtoint i8* %279 to i32
  store i32 %280, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %283

281:                                              ; preds = %247
  %282 = call i32 (...) @abort() #3
  unreachable

283:                                              ; preds = %278, %275, %272, %269
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i64 0
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %289 = or i32 %288, %287
  store i32 %289, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i64 2
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = shl i32 %293, 3
  %295 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %296 = or i32 %295, %294
  store i32 %296, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %327

297:                                              ; preds = %233
  %298 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  switch i32 %298, label %310 [
    i32 135, label %299
    i32 133, label %302
    i32 131, label %305
    i32 129, label %308
  ]

299:                                              ; preds = %297
  %300 = load i8*, i8** @T_OPCODE_ASR_I, align 8
  %301 = ptrtoint i8* %300 to i32
  store i32 %301, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %312

302:                                              ; preds = %297
  %303 = load i8*, i8** @T_OPCODE_LSL_I, align 8
  %304 = ptrtoint i8* %303 to i32
  store i32 %304, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %312

305:                                              ; preds = %297
  %306 = load i8*, i8** @T_OPCODE_LSR_I, align 8
  %307 = ptrtoint i8* %306 to i32
  store i32 %307, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %312

308:                                              ; preds = %297
  %309 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 %309, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  br label %328

310:                                              ; preds = %297
  %311 = call i32 (...) @abort() #3
  unreachable

312:                                              ; preds = %305, %302, %299
  %313 = load i8*, i8** @BFD_RELOC_ARM_THUMB_SHIFT, align 8
  store i8* %313, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 3, i32 0), align 8
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i64 0
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %319 = or i32 %318, %317
  store i32 %319, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i64 1
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = shl i32 %323, 3
  %325 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %326 = or i32 %325, %324
  store i32 %326, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %327

327:                                              ; preds = %312, %283
  br label %328

328:                                              ; preds = %308, %327, %220
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @THUMB_SETS_FLAGS(i32) #2

declare dso_local i8* @THUMB_OP32(i32) #2

declare dso_local i32 @encode_thumb32_shifted_operand(i32) #2

declare dso_local i32 @constraint(i32, i32) #2

declare dso_local i32 @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
