; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arm-dis.c_print_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arm-dis.c_print_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i32, i32, i64, i32, i32, i32 (i32, i32*, i32, %struct.disassemble_info*)*, i32, i32 (i32, i32, %struct.disassemble_info*)*, i32, %struct.TYPE_17__**, %struct.TYPE_17__**, i32* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@MAP_ARM = common dso_local global i32 0, align 4
@last_mapping_addr = common dso_local global i32 0, align 4
@last_mapping_sym = common dso_local global i32 0, align 4
@last_type = common dso_local global i64 0, align 8
@MAP_THUMB = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@MAP_DATA = common dso_local global i64 0, align 8
@bfd_target_coff_flavour = common dso_local global i64 0, align 8
@C_THUMBEXT = common dso_local global i64 0, align 8
@C_THUMBSTAT = common dso_local global i64 0, align 8
@C_THUMBLABEL = common dso_local global i64 0, align 8
@C_THUMBEXTFUNC = common dso_local global i64 0, align 8
@C_THUMBSTATFUNC = common dso_local global i64 0, align 8
@STT_ARM_TFUNC = common dso_local global i32 0, align 4
@STT_ARM_16BIT = common dso_local global i32 0, align 4
@force_thumb = common dso_local global i64 0, align 8
@BFD_ENDIAN_LITTLE = common dso_local global i32 0, align 4
@BFD_ENDIAN_BIG = common dso_local global i32 0, align 4
@ifthen_address = common dso_local global i32 0, align 4
@ifthen_state = common dso_local global i32 0, align 4
@ifthen_next_state = common dso_local global i32 0, align 4
@INSN_HAS_RELOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.disassemble_info*, i8*)* @print_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_insn(i32 %0, %struct.disassemble_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.disassemble_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [4 x i8], align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca void (i32, %struct.disassemble_info*, i64)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.disassemble_info* %1, %struct.disassemble_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %24 = load i8*, i8** @FALSE, align 8
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load i8*, i8** @FALSE, align 8
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %12, align 4
  store i32 4, i32* %13, align 4
  %28 = load i8*, i8** @FALSE, align 8
  store i8* %28, i8** %15, align 8
  %29 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %30 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %29, i32 0, i32 11
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %35 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %34, i32 0, i32 11
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @parse_disassembler_options(i32* %36)
  %38 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %39 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %38, i32 0, i32 11
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %33, %3
  %41 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %42 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %41, i32 0, i32 10
  %43 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %42, align 8
  %44 = icmp ne %struct.TYPE_17__** %43, null
  br i1 %44, label %45, label %221

45:                                               ; preds = %40
  %46 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %47 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %46, i32 0, i32 10
  %48 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %47, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = call i64 @bfd_asymbol_flavour(%struct.TYPE_17__* %49)
  %51 = load i64, i64* @bfd_target_elf_flavour, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %221

53:                                               ; preds = %45
  store i32 -1, i32* %18, align 4
  %54 = load i32, i32* @MAP_ARM, align 4
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @last_mapping_addr, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 -1, i32* @last_mapping_sym, align 4
  br label %59

59:                                               ; preds = %58, %53
  %60 = load i64, i64* @last_type, align 8
  %61 = load i64, i64* @MAP_THUMB, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %11, align 4
  %64 = load i8*, i8** @FALSE, align 8
  store i8* %64, i8** %15, align 8
  %65 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %66 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* @last_mapping_sym, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %59
  %73 = load i32, i32* @last_mapping_sym, align 4
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %72, %59
  br label %75

75:                                               ; preds = %123, %74
  %76 = load i32, i32* %17, align 4
  %77 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %78 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %126

81:                                               ; preds = %75
  %82 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %83 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %82, i32 0, i32 10
  %84 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %83, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %84, i64 %86
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = call i32 @bfd_asymbol_value(%struct.TYPE_17__* %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %126

94:                                               ; preds = %81
  %95 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %96 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = icmp eq i8* %98, null
  br i1 %99, label %114, label %100

100:                                              ; preds = %94
  %101 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %102 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %105 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %104, i32 0, i32 10
  %106 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %105, align 8
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %106, i64 %108
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %103, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %100, %94
  %115 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %116 = load i32, i32* %17, align 4
  %117 = call i64 @get_sym_code_type(%struct.disassemble_info* %115, i32 %116, i32* %19)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* %17, align 4
  store i32 %120, i32* %18, align 4
  %121 = load i8*, i8** @TRUE, align 8
  store i8* %121, i8** %15, align 8
  br label %122

122:                                              ; preds = %119, %114, %100
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  br label %75

126:                                              ; preds = %93, %75
  %127 = load i8*, i8** %15, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %157, label %129

129:                                              ; preds = %126
  %130 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %131 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* @last_mapping_sym, align 4
  %135 = sub nsw i32 %134, 1
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load i32, i32* @last_mapping_sym, align 4
  %139 = sub nsw i32 %138, 1
  store i32 %139, i32* %17, align 4
  br label %140

140:                                              ; preds = %137, %129
  br label %141

141:                                              ; preds = %153, %140
  %142 = load i32, i32* %17, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %141
  %145 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %146 = load i32, i32* %17, align 4
  %147 = call i64 @get_sym_code_type(%struct.disassemble_info* %145, i32 %146, i32* %19)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* %17, align 4
  store i32 %150, i32* %18, align 4
  %151 = load i8*, i8** @TRUE, align 8
  store i8* %151, i8** %15, align 8
  br label %156

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %17, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %17, align 4
  br label %141

156:                                              ; preds = %149, %141
  br label %157

157:                                              ; preds = %156, %126
  %158 = load i32, i32* %18, align 4
  store i32 %158, i32* @last_mapping_sym, align 4
  %159 = load i32, i32* %19, align 4
  %160 = zext i32 %159 to i64
  store i64 %160, i64* @last_type, align 8
  %161 = load i64, i64* @last_type, align 8
  %162 = load i64, i64* @MAP_THUMB, align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i32
  store i32 %164, i32* %11, align 4
  %165 = load i64, i64* @last_type, align 8
  %166 = load i64, i64* @MAP_DATA, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %220

171:                                              ; preds = %157
  %172 = load i32, i32* %5, align 4
  %173 = and i32 %172, 3
  %174 = sub nsw i32 4, %173
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %18, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %17, align 4
  br label %177

177:                                              ; preds = %207, %171
  %178 = load i32, i32* %17, align 4
  %179 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %180 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %210

183:                                              ; preds = %177
  %184 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %185 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %184, i32 0, i32 10
  %186 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %185, align 8
  %187 = load i32, i32* %17, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %186, i64 %188
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %189, align 8
  %191 = call i32 @bfd_asymbol_value(%struct.TYPE_17__* %190)
  store i32 %191, i32* %16, align 4
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %5, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %183
  %196 = load i32, i32* %16, align 4
  %197 = load i32, i32* %5, align 4
  %198 = sub nsw i32 %196, %197
  %199 = load i32, i32* %13, align 4
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* %5, align 4
  %204 = sub nsw i32 %202, %203
  store i32 %204, i32* %13, align 4
  br label %205

205:                                              ; preds = %201, %195
  br label %210

206:                                              ; preds = %183
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %17, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %17, align 4
  br label %177

210:                                              ; preds = %205, %177
  %211 = load i32, i32* %13, align 4
  %212 = icmp eq i32 %211, 3
  br i1 %212, label %213, label %219

213:                                              ; preds = %210
  %214 = load i32, i32* %5, align 4
  %215 = and i32 %214, 1
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 1, i32 2
  store i32 %218, i32* %13, align 4
  br label %219

219:                                              ; preds = %213, %210
  br label %220

220:                                              ; preds = %219, %157
  br label %221

221:                                              ; preds = %220, %45, %40
  %222 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %223 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %222, i32 0, i32 9
  %224 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %223, align 8
  %225 = icmp ne %struct.TYPE_17__** %224, null
  br i1 %225, label %226, label %326

226:                                              ; preds = %221
  %227 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %228 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %227, i32 0, i32 9
  %229 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %228, align 8
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %229, align 8
  %231 = call i64 @bfd_asymbol_flavour(%struct.TYPE_17__* %230)
  %232 = load i64, i64* @bfd_target_coff_flavour, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %292

234:                                              ; preds = %226
  %235 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %236 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %235, i32 0, i32 9
  %237 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %236, align 8
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %237, align 8
  %239 = call %struct.TYPE_16__* @coffsymbol(%struct.TYPE_17__* %238)
  store %struct.TYPE_16__* %239, %struct.TYPE_16__** %20, align 8
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @C_THUMBEXT, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %289, label %249

249:                                              ; preds = %234
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @C_THUMBSTAT, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %289, label %259

259:                                              ; preds = %249
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @C_THUMBLABEL, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %289, label %269

269:                                              ; preds = %259
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @C_THUMBEXTFUNC, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %289, label %279

279:                                              ; preds = %269
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @C_THUMBSTATFUNC, align 8
  %288 = icmp eq i64 %286, %287
  br label %289

289:                                              ; preds = %279, %269, %259, %249, %234
  %290 = phi i1 [ true, %269 ], [ true, %259 ], [ true, %249 ], [ true, %234 ], [ %288, %279 ]
  %291 = zext i1 %290 to i32
  store i32 %291, i32* %11, align 4
  br label %325

292:                                              ; preds = %226
  %293 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %294 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %293, i32 0, i32 9
  %295 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %294, align 8
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %295, align 8
  %297 = call i64 @bfd_asymbol_flavour(%struct.TYPE_17__* %296)
  %298 = load i64, i64* @bfd_target_elf_flavour, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %324

300:                                              ; preds = %292
  %301 = load i8*, i8** %15, align 8
  %302 = icmp ne i8* %301, null
  br i1 %302, label %324, label %303

303:                                              ; preds = %300
  %304 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %305 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %304, i32 0, i32 9
  %306 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %305, align 8
  %307 = bitcast %struct.TYPE_17__** %306 to %struct.TYPE_15__**
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %307, align 8
  store %struct.TYPE_15__* %308, %struct.TYPE_15__** %21, align 8
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @ELF_ST_TYPE(i32 %312)
  store i32 %313, i32* %22, align 4
  %314 = load i32, i32* %22, align 4
  %315 = load i32, i32* @STT_ARM_TFUNC, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %321, label %317

317:                                              ; preds = %303
  %318 = load i32, i32* %22, align 4
  %319 = load i32, i32* @STT_ARM_16BIT, align 4
  %320 = icmp eq i32 %318, %319
  br label %321

321:                                              ; preds = %317, %303
  %322 = phi i1 [ true, %303 ], [ %320, %317 ]
  %323 = zext i1 %322 to i32
  store i32 %323, i32* %11, align 4
  br label %324

324:                                              ; preds = %321, %300, %292
  br label %325

325:                                              ; preds = %324, %289
  br label %326

326:                                              ; preds = %325, %221
  %327 = load i64, i64* @force_thumb, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  %330 = load i8*, i8** @TRUE, align 8
  %331 = ptrtoint i8* %330 to i32
  store i32 %331, i32* %11, align 4
  br label %332

332:                                              ; preds = %329, %326
  %333 = load i8*, i8** %7, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %335, label %337

335:                                              ; preds = %332
  %336 = load i32, i32* @BFD_ENDIAN_LITTLE, align 4
  br label %339

337:                                              ; preds = %332
  %338 = load i32, i32* @BFD_ENDIAN_BIG, align 4
  br label %339

339:                                              ; preds = %337, %335
  %340 = phi i32 [ %336, %335 ], [ %338, %337 ]
  %341 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %342 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %341, i32 0, i32 8
  store i32 %340, i32* %342, align 8
  %343 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %344 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %343, i32 0, i32 3
  store i32 4, i32* %344, align 8
  %345 = load i32, i32* %12, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %400

347:                                              ; preds = %339
  %348 = load i32, i32* %13, align 4
  %349 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %350 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %349, i32 0, i32 4
  store i32 %348, i32* %350, align 4
  store void (i32, %struct.disassemble_info*, i64)* @print_insn_data, void (i32, %struct.disassemble_info*, i64)** %14, align 8
  %351 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %352 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %351, i32 0, i32 5
  %353 = load i32 (i32, i32*, i32, %struct.disassemble_info*)*, i32 (i32, i32*, i32, %struct.disassemble_info*)** %352, align 8
  %354 = load i32, i32* %5, align 4
  %355 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %356 = bitcast i8* %355 to i32*
  %357 = load i32, i32* %13, align 4
  %358 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %359 = call i32 %353(i32 %354, i32* %356, i32 %357, %struct.disassemble_info* %358)
  store i32 %359, i32* %10, align 4
  store i64 0, i64* %9, align 8
  %360 = load i8*, i8** %7, align 8
  %361 = icmp ne i8* %360, null
  br i1 %361, label %362, label %381

362:                                              ; preds = %347
  %363 = load i32, i32* %13, align 4
  %364 = sub i32 %363, 1
  store i32 %364, i32* %23, align 4
  br label %365

365:                                              ; preds = %377, %362
  %366 = load i32, i32* %23, align 4
  %367 = icmp sge i32 %366, 0
  br i1 %367, label %368, label %380

368:                                              ; preds = %365
  %369 = load i32, i32* %23, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 %370
  %372 = load i8, i8* %371, align 1
  %373 = zext i8 %372 to i64
  %374 = load i64, i64* %9, align 8
  %375 = shl i64 %374, 8
  %376 = or i64 %373, %375
  store i64 %376, i64* %9, align 8
  br label %377

377:                                              ; preds = %368
  %378 = load i32, i32* %23, align 4
  %379 = add nsw i32 %378, -1
  store i32 %379, i32* %23, align 4
  br label %365

380:                                              ; preds = %365
  br label %399

381:                                              ; preds = %347
  store i32 0, i32* %23, align 4
  br label %382

382:                                              ; preds = %395, %381
  %383 = load i32, i32* %23, align 4
  %384 = load i32, i32* %13, align 4
  %385 = icmp slt i32 %383, %384
  br i1 %385, label %386, label %398

386:                                              ; preds = %382
  %387 = load i32, i32* %23, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 %388
  %390 = load i8, i8* %389, align 1
  %391 = zext i8 %390 to i64
  %392 = load i64, i64* %9, align 8
  %393 = shl i64 %392, 8
  %394 = or i64 %391, %393
  store i64 %394, i64* %9, align 8
  br label %395

395:                                              ; preds = %386
  %396 = load i32, i32* %23, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %23, align 4
  br label %382

398:                                              ; preds = %382
  br label %399

399:                                              ; preds = %398, %380
  br label %572

400:                                              ; preds = %339
  %401 = load i32, i32* %11, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %457, label %403

403:                                              ; preds = %400
  store void (i32, %struct.disassemble_info*, i64)* @print_insn_arm, void (i32, %struct.disassemble_info*, i64)** %14, align 8
  %404 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %405 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %404, i32 0, i32 4
  store i32 4, i32* %405, align 4
  store i32 4, i32* %13, align 4
  %406 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %407 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %406, i32 0, i32 5
  %408 = load i32 (i32, i32*, i32, %struct.disassemble_info*)*, i32 (i32, i32*, i32, %struct.disassemble_info*)** %407, align 8
  %409 = load i32, i32* %5, align 4
  %410 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %411 = bitcast i8* %410 to i32*
  %412 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %413 = call i32 %408(i32 %409, i32* %411, i32 4, %struct.disassemble_info* %412)
  store i32 %413, i32* %10, align 4
  %414 = load i8*, i8** %7, align 8
  %415 = icmp ne i8* %414, null
  br i1 %415, label %416, label %436

416:                                              ; preds = %403
  %417 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %418 = load i8, i8* %417, align 1
  %419 = zext i8 %418 to i32
  %420 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %421 = load i8, i8* %420, align 1
  %422 = zext i8 %421 to i32
  %423 = shl i32 %422, 8
  %424 = or i32 %419, %423
  %425 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %426 = load i8, i8* %425, align 1
  %427 = zext i8 %426 to i32
  %428 = shl i32 %427, 16
  %429 = or i32 %424, %428
  %430 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  %431 = load i8, i8* %430, align 1
  %432 = zext i8 %431 to i32
  %433 = shl i32 %432, 24
  %434 = or i32 %429, %433
  %435 = sext i32 %434 to i64
  store i64 %435, i64* %9, align 8
  br label %456

436:                                              ; preds = %403
  %437 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  %438 = load i8, i8* %437, align 1
  %439 = zext i8 %438 to i32
  %440 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %441 = load i8, i8* %440, align 1
  %442 = zext i8 %441 to i32
  %443 = shl i32 %442, 8
  %444 = or i32 %439, %443
  %445 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %446 = load i8, i8* %445, align 1
  %447 = zext i8 %446 to i32
  %448 = shl i32 %447, 16
  %449 = or i32 %444, %448
  %450 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %451 = load i8, i8* %450, align 1
  %452 = zext i8 %451 to i32
  %453 = shl i32 %452, 24
  %454 = or i32 %449, %453
  %455 = sext i32 %454 to i64
  store i64 %455, i64* %9, align 8
  br label %456

456:                                              ; preds = %436, %416
  br label %571

457:                                              ; preds = %400
  store void (i32, %struct.disassemble_info*, i64)* @print_insn_thumb16, void (i32, %struct.disassemble_info*, i64)** %14, align 8
  %458 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %459 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %458, i32 0, i32 4
  store i32 2, i32* %459, align 4
  store i32 2, i32* %13, align 4
  %460 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %461 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %460, i32 0, i32 5
  %462 = load i32 (i32, i32*, i32, %struct.disassemble_info*)*, i32 (i32, i32*, i32, %struct.disassemble_info*)** %461, align 8
  %463 = load i32, i32* %5, align 4
  %464 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %465 = bitcast i8* %464 to i32*
  %466 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %467 = call i32 %462(i32 %463, i32* %465, i32 2, %struct.disassemble_info* %466)
  store i32 %467, i32* %10, align 4
  %468 = load i8*, i8** %7, align 8
  %469 = icmp ne i8* %468, null
  br i1 %469, label %470, label %480

470:                                              ; preds = %457
  %471 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %472 = load i8, i8* %471, align 1
  %473 = zext i8 %472 to i32
  %474 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %475 = load i8, i8* %474, align 1
  %476 = zext i8 %475 to i32
  %477 = shl i32 %476, 8
  %478 = or i32 %473, %477
  %479 = sext i32 %478 to i64
  store i64 %479, i64* %9, align 8
  br label %490

480:                                              ; preds = %457
  %481 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %482 = load i8, i8* %481, align 1
  %483 = zext i8 %482 to i32
  %484 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %485 = load i8, i8* %484, align 1
  %486 = zext i8 %485 to i32
  %487 = shl i32 %486, 8
  %488 = or i32 %483, %487
  %489 = sext i32 %488 to i64
  store i64 %489, i64* %9, align 8
  br label %490

490:                                              ; preds = %480, %470
  %491 = load i32, i32* %10, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %545, label %493

493:                                              ; preds = %490
  %494 = load i64, i64* %9, align 8
  %495 = and i64 %494, 63488
  %496 = icmp eq i64 %495, 63488
  br i1 %496, label %505, label %497

497:                                              ; preds = %493
  %498 = load i64, i64* %9, align 8
  %499 = and i64 %498, 63488
  %500 = icmp eq i64 %499, 61440
  br i1 %500, label %505, label %501

501:                                              ; preds = %497
  %502 = load i64, i64* %9, align 8
  %503 = and i64 %502, 63488
  %504 = icmp eq i64 %503, 59392
  br i1 %504, label %505, label %544

505:                                              ; preds = %501, %497, %493
  %506 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %507 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %506, i32 0, i32 5
  %508 = load i32 (i32, i32*, i32, %struct.disassemble_info*)*, i32 (i32, i32*, i32, %struct.disassemble_info*)** %507, align 8
  %509 = load i32, i32* %5, align 4
  %510 = add nsw i32 %509, 2
  %511 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %512 = bitcast i8* %511 to i32*
  %513 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %514 = call i32 %508(i32 %510, i32* %512, i32 2, %struct.disassemble_info* %513)
  store i32 %514, i32* %10, align 4
  %515 = load i8*, i8** %7, align 8
  %516 = icmp ne i8* %515, null
  br i1 %516, label %517, label %530

517:                                              ; preds = %505
  %518 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %519 = load i8, i8* %518, align 1
  %520 = zext i8 %519 to i32
  %521 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %522 = load i8, i8* %521, align 1
  %523 = zext i8 %522 to i32
  %524 = shl i32 %523, 8
  %525 = or i32 %520, %524
  %526 = sext i32 %525 to i64
  %527 = load i64, i64* %9, align 8
  %528 = shl i64 %527, 16
  %529 = or i64 %526, %528
  store i64 %529, i64* %9, align 8
  br label %543

530:                                              ; preds = %505
  %531 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %532 = load i8, i8* %531, align 1
  %533 = zext i8 %532 to i32
  %534 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %535 = load i8, i8* %534, align 1
  %536 = zext i8 %535 to i32
  %537 = shl i32 %536, 8
  %538 = or i32 %533, %537
  %539 = sext i32 %538 to i64
  %540 = load i64, i64* %9, align 8
  %541 = shl i64 %540, 16
  %542 = or i64 %539, %541
  store i64 %542, i64* %9, align 8
  br label %543

543:                                              ; preds = %530, %517
  store void (i32, %struct.disassemble_info*, i64)* @print_insn_thumb32, void (i32, %struct.disassemble_info*, i64)** %14, align 8
  store i32 4, i32* %13, align 4
  br label %544

544:                                              ; preds = %543, %501
  br label %545

545:                                              ; preds = %544, %490
  %546 = load i32, i32* @ifthen_address, align 4
  %547 = load i32, i32* %5, align 4
  %548 = icmp ne i32 %546, %547
  br i1 %548, label %549, label %554

549:                                              ; preds = %545
  %550 = load i32, i32* %5, align 4
  %551 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %552 = load i8*, i8** %7, align 8
  %553 = call i32 @find_ifthen_state(i32 %550, %struct.disassemble_info* %551, i8* %552)
  br label %554

554:                                              ; preds = %549, %545
  %555 = load i32, i32* @ifthen_state, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %570

557:                                              ; preds = %554
  %558 = load i32, i32* @ifthen_state, align 4
  %559 = and i32 %558, 15
  %560 = icmp eq i32 %559, 8
  br i1 %560, label %561, label %562

561:                                              ; preds = %557
  store i32 0, i32* @ifthen_next_state, align 4
  br label %569

562:                                              ; preds = %557
  %563 = load i32, i32* @ifthen_state, align 4
  %564 = and i32 %563, 224
  %565 = load i32, i32* @ifthen_state, align 4
  %566 = and i32 %565, 15
  %567 = shl i32 %566, 1
  %568 = or i32 %564, %567
  store i32 %568, i32* @ifthen_next_state, align 4
  br label %569

569:                                              ; preds = %562, %561
  br label %570

570:                                              ; preds = %569, %554
  br label %571

571:                                              ; preds = %570, %456
  br label %572

572:                                              ; preds = %571, %399
  %573 = load i32, i32* %10, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %583

575:                                              ; preds = %572
  %576 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %577 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %576, i32 0, i32 7
  %578 = load i32 (i32, i32, %struct.disassemble_info*)*, i32 (i32, i32, %struct.disassemble_info*)** %577, align 8
  %579 = load i32, i32* %10, align 4
  %580 = load i32, i32* %5, align 4
  %581 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %582 = call i32 %578(i32 %579, i32 %580, %struct.disassemble_info* %581)
  store i32 -1, i32* %4, align 4
  br label %605

583:                                              ; preds = %572
  %584 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %585 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %584, i32 0, i32 6
  %586 = load i32, i32* %585, align 8
  %587 = load i32, i32* @INSN_HAS_RELOC, align 4
  %588 = and i32 %586, %587
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %591

590:                                              ; preds = %583
  store i32 0, i32* %5, align 4
  br label %591

591:                                              ; preds = %590, %583
  %592 = load void (i32, %struct.disassemble_info*, i64)*, void (i32, %struct.disassemble_info*, i64)** %14, align 8
  %593 = load i32, i32* %5, align 4
  %594 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %595 = load i64, i64* %9, align 8
  call void %592(i32 %593, %struct.disassemble_info* %594, i64 %595)
  %596 = load i32, i32* %11, align 4
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %603

598:                                              ; preds = %591
  %599 = load i32, i32* @ifthen_next_state, align 4
  store i32 %599, i32* @ifthen_state, align 4
  %600 = load i32, i32* %13, align 4
  %601 = load i32, i32* @ifthen_address, align 4
  %602 = add i32 %601, %600
  store i32 %602, i32* @ifthen_address, align 4
  br label %603

603:                                              ; preds = %598, %591
  %604 = load i32, i32* %13, align 4
  store i32 %604, i32* %4, align 4
  br label %605

605:                                              ; preds = %603, %575
  %606 = load i32, i32* %4, align 4
  ret i32 %606
}

declare dso_local i32 @parse_disassembler_options(i32*) #1

declare dso_local i64 @bfd_asymbol_flavour(%struct.TYPE_17__*) #1

declare dso_local i32 @bfd_asymbol_value(%struct.TYPE_17__*) #1

declare dso_local i64 @get_sym_code_type(%struct.disassemble_info*, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @coffsymbol(%struct.TYPE_17__*) #1

declare dso_local i32 @ELF_ST_TYPE(i32) #1

declare dso_local void @print_insn_data(i32, %struct.disassemble_info*, i64) #1

declare dso_local void @print_insn_arm(i32, %struct.disassemble_info*, i64) #1

declare dso_local void @print_insn_thumb16(i32, %struct.disassemble_info*, i64) #1

declare dso_local void @print_insn_thumb32(i32, %struct.disassemble_info*, i64) #1

declare dso_local i32 @find_ifthen_state(i32, %struct.disassemble_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
