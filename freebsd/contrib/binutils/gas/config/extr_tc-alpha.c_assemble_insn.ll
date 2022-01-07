; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_assemble_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_assemble_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpha_operand = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.alpha_opcode = type { i32, i8*, i32 }
%struct.alpha_insn = type { i64, i32, %struct.alpha_fixup* }
%struct.alpha_fixup = type { i64, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }

@alpha_operands = common dso_local global %struct.alpha_operand* null, align 8
@AXP_OPERAND_FAKE = common dso_local global i32 0, align 4
@AXP_OPERAND_OPTIONAL_MASK = common dso_local global i32 0, align 4
@assemble_insn.zero_exp = internal global %struct.TYPE_6__ zeroinitializer, align 4
@BFD_RELOC_ALPHA_HINT = common dso_local global i64 0, align 8
@MAX_INSN_FIXUPS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"too many fixups\00", align 1
@BFD_RELOC_UNUSED = common dso_local global i64 0, align 8
@BFD_RELOC_ALPHA_GPDISP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"ldah\00", align 1
@BFD_RELOC_ALPHA_GPDISP_HI16 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"lda\00", align 1
@BFD_RELOC_ALPHA_GPDISP_LO16 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"invalid relocation for instruction\00", align 1
@stdoutput = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid relocation for field\00", align 1
@O_absent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alpha_opcode*, %struct.TYPE_6__*, i32, %struct.alpha_insn*, i64)* @assemble_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assemble_insn(%struct.alpha_opcode* %0, %struct.TYPE_6__* %1, i32 %2, %struct.alpha_insn* %3, i64 %4) #0 {
  %6 = alloca %struct.alpha_opcode*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.alpha_insn*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.alpha_operand*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.alpha_operand*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca %struct.alpha_fixup*, align 8
  %19 = alloca %struct.alpha_fixup*, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  store %struct.alpha_opcode* %0, %struct.alpha_opcode** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.alpha_insn* %3, %struct.alpha_insn** %9, align 8
  store i64 %4, i64* %10, align 8
  store %struct.alpha_operand* null, %struct.alpha_operand** %11, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %12, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.alpha_insn*, %struct.alpha_insn** %9, align 8
  %22 = call i32 @memset(%struct.alpha_insn* %21, i32 0, i32 24)
  %23 = load %struct.alpha_opcode*, %struct.alpha_opcode** %6, align 8
  %24 = getelementptr inbounds %struct.alpha_opcode, %struct.alpha_opcode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %14, align 4
  %26 = load %struct.alpha_opcode*, %struct.alpha_opcode** %6, align 8
  %27 = getelementptr inbounds %struct.alpha_opcode, %struct.alpha_opcode* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %13, align 8
  br label %29

29:                                               ; preds = %156, %5
  %30 = load i8*, i8** %13, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %159

33:                                               ; preds = %29
  %34 = load %struct.alpha_operand*, %struct.alpha_operand** @alpha_operands, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %34, i64 %37
  store %struct.alpha_operand* %38, %struct.alpha_operand** %16, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %17, align 8
  %39 = load %struct.alpha_operand*, %struct.alpha_operand** %16, align 8
  %40 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @AXP_OPERAND_FAKE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.alpha_operand*, %struct.alpha_operand** %16, align 8
  %48 = call i32 @insert_operand(i32 %46, %struct.alpha_operand* %47, i32 0, i32* null, i32 0)
  store i32 %48, i32* %14, align 4
  br label %156

49:                                               ; preds = %33
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load %struct.alpha_operand*, %struct.alpha_operand** %16, align 8
  %55 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @AXP_OPERAND_OPTIONAL_MASK, align 4
  %58 = and i32 %56, %57
  switch i32 %58, label %66 [
    i32 134, label %59
    i32 133, label %62
    i32 132, label %65
  ]

59:                                               ; preds = %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 0
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %17, align 8
  br label %68

62:                                               ; preds = %53
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 1
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %17, align 8
  br label %68

65:                                               ; preds = %53
  store %struct.TYPE_6__* @assemble_insn.zero_exp, %struct.TYPE_6__** %17, align 8
  store i32 131, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @assemble_insn.zero_exp, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @assemble_insn.zero_exp, i32 0, i32 1), align 4
  br label %68

66:                                               ; preds = %53
  %67 = call i32 (...) @abort() #4
  unreachable

68:                                               ; preds = %65, %62, %59
  br label %75

69:                                               ; preds = %49
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %73
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %17, align 8
  br label %75

75:                                               ; preds = %69, %68
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %100 [
    i32 128, label %79
    i32 129, label %79
    i32 130, label %79
    i32 131, label %87
  ]

79:                                               ; preds = %75, %75, %75
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.alpha_operand*, %struct.alpha_operand** %16, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @regno(i32 %84)
  %86 = call i32 @insert_operand(i32 %80, %struct.alpha_operand* %81, i32 %85, i32* null, i32 0)
  store i32 %86, i32* %14, align 4
  br label %155

87:                                               ; preds = %75
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.alpha_operand*, %struct.alpha_operand** %16, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @insert_operand(i32 %88, %struct.alpha_operand* %89, i32 %92, i32* null, i32 0)
  store i32 %93, i32* %14, align 4
  %94 = load %struct.alpha_operand*, %struct.alpha_operand** %11, align 8
  %95 = icmp eq %struct.alpha_operand* %94, null
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.alpha_operand*, %struct.alpha_operand** %16, align 8
  store %struct.alpha_operand* %98, %struct.alpha_operand** %11, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %12, align 8
  br label %155

100:                                              ; preds = %75
  %101 = load %struct.alpha_operand*, %struct.alpha_operand** %16, align 8
  %102 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = call i32 (...) @abort() #4
  unreachable

107:                                              ; preds = %100
  %108 = load %struct.alpha_operand*, %struct.alpha_operand** %16, align 8
  %109 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @BFD_RELOC_ALPHA_HINT, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %139

113:                                              ; preds = %107
  %114 = load %struct.alpha_insn*, %struct.alpha_insn** %9, align 8
  %115 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @MAX_INSN_FIXUPS, align 8
  %118 = icmp sge i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %121 = call i32 @as_fatal(i32 %120)
  br label %122

122:                                              ; preds = %119, %113
  %123 = load %struct.alpha_insn*, %struct.alpha_insn** %9, align 8
  %124 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %123, i32 0, i32 2
  %125 = load %struct.alpha_fixup*, %struct.alpha_fixup** %124, align 8
  %126 = load %struct.alpha_insn*, %struct.alpha_insn** %9, align 8
  %127 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %127, align 8
  %130 = getelementptr inbounds %struct.alpha_fixup, %struct.alpha_fixup* %125, i64 %128
  store %struct.alpha_fixup* %130, %struct.alpha_fixup** %18, align 8
  %131 = load %struct.alpha_fixup*, %struct.alpha_fixup** %18, align 8
  %132 = getelementptr inbounds %struct.alpha_fixup, %struct.alpha_fixup* %131, i32 0, i32 1
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %134 = bitcast %struct.TYPE_6__* %132 to i8*
  %135 = bitcast %struct.TYPE_6__* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 4 %135, i64 12, i1 false)
  %136 = load i64, i64* @BFD_RELOC_ALPHA_HINT, align 8
  %137 = load %struct.alpha_fixup*, %struct.alpha_fixup** %18, align 8
  %138 = getelementptr inbounds %struct.alpha_fixup, %struct.alpha_fixup* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  br label %154

139:                                              ; preds = %107
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* @BFD_RELOC_UNUSED, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load %struct.alpha_operand*, %struct.alpha_operand** %16, align 8
  %145 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %10, align 8
  br label %147

147:                                              ; preds = %143, %139
  %148 = load %struct.alpha_operand*, %struct.alpha_operand** %11, align 8
  %149 = icmp eq %struct.alpha_operand* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load %struct.alpha_operand*, %struct.alpha_operand** %16, align 8
  store %struct.alpha_operand* %152, %struct.alpha_operand** %11, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %153, %struct.TYPE_6__** %12, align 8
  br label %154

154:                                              ; preds = %147, %122
  br label %155

155:                                              ; preds = %154, %87, %79
  br label %156

156:                                              ; preds = %155, %45
  %157 = load i8*, i8** %13, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %13, align 8
  br label %29

159:                                              ; preds = %29
  %160 = load i64, i64* %10, align 8
  %161 = load i64, i64* @BFD_RELOC_UNUSED, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %243

163:                                              ; preds = %159
  %164 = load %struct.alpha_insn*, %struct.alpha_insn** %9, align 8
  %165 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @MAX_INSN_FIXUPS, align 8
  %168 = icmp sge i64 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %171 = call i32 @as_fatal(i32 %170)
  br label %172

172:                                              ; preds = %169, %163
  %173 = load i64, i64* %10, align 8
  %174 = load i64, i64* @BFD_RELOC_ALPHA_GPDISP, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %197

176:                                              ; preds = %172
  %177 = load %struct.alpha_opcode*, %struct.alpha_opcode** %6, align 8
  %178 = getelementptr inbounds %struct.alpha_opcode, %struct.alpha_opcode* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @strcmp(i32 %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = load i64, i64* @BFD_RELOC_ALPHA_GPDISP_HI16, align 8
  store i64 %183, i64* %10, align 8
  br label %196

184:                                              ; preds = %176
  %185 = load %struct.alpha_opcode*, %struct.alpha_opcode** %6, align 8
  %186 = getelementptr inbounds %struct.alpha_opcode, %struct.alpha_opcode* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @strcmp(i32 %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = load i64, i64* @BFD_RELOC_ALPHA_GPDISP_LO16, align 8
  store i64 %191, i64* %10, align 8
  br label %195

192:                                              ; preds = %184
  %193 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %194 = call i32 @as_bad(i32 %193)
  br label %195

195:                                              ; preds = %192, %190
  br label %196

196:                                              ; preds = %195, %182
  br label %217

197:                                              ; preds = %172
  %198 = load i64, i64* %10, align 8
  %199 = load i64, i64* @BFD_RELOC_UNUSED, align 8
  %200 = icmp slt i64 %198, %199
  br i1 %200, label %201, label %216

201:                                              ; preds = %197
  %202 = load i32, i32* @stdoutput, align 4
  %203 = load i64, i64* %10, align 8
  %204 = call %struct.TYPE_5__* @bfd_reloc_type_lookup(i32 %202, i64 %203)
  store %struct.TYPE_5__* %204, %struct.TYPE_5__** %20, align 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.alpha_operand*, %struct.alpha_operand** %11, align 8
  %209 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %207, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %201
  %213 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %214 = call i32 @as_bad(i32 %213)
  br label %247

215:                                              ; preds = %201
  br label %216

216:                                              ; preds = %215, %197
  br label %217

217:                                              ; preds = %216, %196
  %218 = load %struct.alpha_insn*, %struct.alpha_insn** %9, align 8
  %219 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %218, i32 0, i32 2
  %220 = load %struct.alpha_fixup*, %struct.alpha_fixup** %219, align 8
  %221 = load %struct.alpha_insn*, %struct.alpha_insn** %9, align 8
  %222 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %223, 1
  store i64 %224, i64* %222, align 8
  %225 = getelementptr inbounds %struct.alpha_fixup, %struct.alpha_fixup* %220, i64 %223
  store %struct.alpha_fixup* %225, %struct.alpha_fixup** %19, align 8
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %227 = icmp ne %struct.TYPE_6__* %226, null
  br i1 %227, label %228, label %234

228:                                              ; preds = %217
  %229 = load %struct.alpha_fixup*, %struct.alpha_fixup** %19, align 8
  %230 = getelementptr inbounds %struct.alpha_fixup, %struct.alpha_fixup* %229, i32 0, i32 1
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %232 = bitcast %struct.TYPE_6__* %230 to i8*
  %233 = bitcast %struct.TYPE_6__* %231 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %232, i8* align 4 %233, i64 12, i1 false)
  br label %239

234:                                              ; preds = %217
  %235 = load i32, i32* @O_absent, align 4
  %236 = load %struct.alpha_fixup*, %struct.alpha_fixup** %19, align 8
  %237 = getelementptr inbounds %struct.alpha_fixup, %struct.alpha_fixup* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  store i32 %235, i32* %238, align 8
  br label %239

239:                                              ; preds = %234, %228
  %240 = load i64, i64* %10, align 8
  %241 = load %struct.alpha_fixup*, %struct.alpha_fixup** %19, align 8
  %242 = getelementptr inbounds %struct.alpha_fixup, %struct.alpha_fixup* %241, i32 0, i32 0
  store i64 %240, i64* %242, align 8
  br label %243

243:                                              ; preds = %239, %159
  %244 = load i32, i32* %14, align 4
  %245 = load %struct.alpha_insn*, %struct.alpha_insn** %9, align 8
  %246 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 8
  br label %247

247:                                              ; preds = %243, %212
  ret void
}

declare dso_local i32 @memset(%struct.alpha_insn*, i32, i32) #1

declare dso_local i32 @insert_operand(i32, %struct.alpha_operand*, i32, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @regno(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @as_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local %struct.TYPE_5__* @bfd_reloc_type_lookup(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
