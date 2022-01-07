; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_relax_got_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_relax_got_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.alpha_relax_info = type { i32, i8*, i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i8*, i64, i32, %struct.TYPE_23__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32 }

@OP_LDQ = common dso_local global i32 0, align 4
@elf64_alpha_howto_table = common dso_local global %struct.TYPE_20__* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"%B: %A+0x%lx: warning: %s relocation against unexpected insn\00", align 1
@TRUE = common dso_local global i8* null, align 8
@R_ALPHA_LITERAL = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@OP_LDA = common dso_local global i32 0, align 4
@R_ALPHA_NONE = common dso_local global i64 0, align 8
@R_ALPHA_GPREL16 = common dso_local global i64 0, align 8
@R_ALPHA_DTPREL16 = common dso_local global i64 0, align 8
@R_ALPHA_TPREL16 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.alpha_relax_info*, i32, %struct.TYPE_21__*, i64)* @elf64_alpha_relax_got_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @elf64_alpha_relax_got_load(%struct.alpha_relax_info* %0, i32 %1, %struct.TYPE_21__* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.alpha_relax_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.alpha_relax_info* %0, %struct.alpha_relax_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %17 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %20 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = call i32 @bfd_get_32(i32 %18, i64 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = lshr i32 %27, 26
  %29 = load i32, i32* @OP_LDQ, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** @elf64_alpha_howto_table, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i64 %33
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %12, align 8
  %35 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %36 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %39 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @_bfd_error_handler(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i64 %43, i32 %46)
  %48 = load i8*, i8** @TRUE, align 8
  store i8* %48, i8** %5, align 8
  br label %242

49:                                               ; preds = %4
  %50 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %51 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %50, i32 0, i32 3
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %55 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %54, i32 0, i32 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %55, align 8
  %57 = call i64 @alpha_elf_dynamic_symbol_p(%struct.TYPE_16__* %53, %struct.TYPE_23__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i8*, i8** @TRUE, align 8
  store i8* %60, i8** %5, align 8
  br label %242

61:                                               ; preds = %49
  %62 = load i64, i64* %9, align 8
  %63 = icmp eq i64 %62, 128
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %66 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %65, i32 0, i32 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i8*, i8** @TRUE, align 8
  store i8* %72, i8** %5, align 8
  br label %242

73:                                               ; preds = %64, %61
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* @R_ALPHA_LITERAL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %130

77:                                               ; preds = %73
  %78 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %79 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %78, i32 0, i32 3
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  %81 = icmp ne %struct.TYPE_19__* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %84 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %83, i32 0, i32 3
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %105, label %92

92:                                               ; preds = %82, %77
  %93 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %94 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %93, i32 0, i32 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %117, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %7, align 4
  %101 = icmp sge i32 %100, -32768
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, 32768
  br i1 %104, label %105, label %117

105:                                              ; preds = %102, %99, %82
  store i32 0, i32* %11, align 4
  %106 = load i32, i32* @OP_LDA, align 4
  %107 = shl i32 %106, 26
  %108 = load i32, i32* %10, align 4
  %109 = and i32 %108, 65011712
  %110 = or i32 %107, %109
  %111 = or i32 %110, 2031616
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, 65535
  %114 = load i32, i32* %10, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load i64, i64* @R_ALPHA_NONE, align 8
  store i64 %116, i64* %9, align 8
  br label %129

117:                                              ; preds = %102, %92
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %120 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %118, %121
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* @OP_LDA, align 4
  %124 = shl i32 %123, 26
  %125 = load i32, i32* %10, align 4
  %126 = and i32 %125, 67043328
  %127 = or i32 %124, %126
  store i32 %127, i32* %10, align 4
  %128 = load i64, i64* @R_ALPHA_GPREL16, align 8
  store i64 %128, i64* %9, align 8
  br label %129

129:                                              ; preds = %117, %105
  br label %173

130:                                              ; preds = %73
  %131 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %132 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %131, i32 0, i32 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %132, align 8
  %134 = call %struct.TYPE_22__* @elf_hash_table(%struct.TYPE_23__* %133)
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  %138 = zext i1 %137 to i32
  %139 = call i32 @BFD_ASSERT(i32 %138)
  %140 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %141 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %140, i32 0, i32 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %141, align 8
  %143 = call i32 @alpha_get_dtprel_base(%struct.TYPE_23__* %142)
  store i32 %143, i32* %13, align 4
  %144 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %145 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %144, i32 0, i32 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %145, align 8
  %147 = call i32 @alpha_get_tprel_base(%struct.TYPE_23__* %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i64, i64* %9, align 8
  %150 = icmp eq i64 %149, 129
  br i1 %150, label %151, label %153

151:                                              ; preds = %130
  %152 = load i32, i32* %13, align 4
  br label %155

153:                                              ; preds = %130
  %154 = load i32, i32* %14, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  %157 = sub nsw i32 %148, %156
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* @OP_LDA, align 4
  %159 = shl i32 %158, 26
  %160 = load i32, i32* %10, align 4
  %161 = and i32 %160, 65011712
  %162 = or i32 %159, %161
  %163 = or i32 %162, 2031616
  store i32 %163, i32* %10, align 4
  %164 = load i64, i64* %9, align 8
  switch i64 %164, label %169 [
    i64 129, label %165
    i64 128, label %167
  ]

165:                                              ; preds = %155
  %166 = load i64, i64* @R_ALPHA_DTPREL16, align 8
  store i64 %166, i64* %9, align 8
  br label %172

167:                                              ; preds = %155
  %168 = load i64, i64* @R_ALPHA_TPREL16, align 8
  store i64 %168, i64* %9, align 8
  br label %172

169:                                              ; preds = %155
  %170 = call i32 @BFD_ASSERT(i32 0)
  %171 = load i8*, i8** @FALSE, align 8
  store i8* %171, i8** %5, align 8
  br label %242

172:                                              ; preds = %167, %165
  br label %173

173:                                              ; preds = %172, %129
  %174 = load i32, i32* %11, align 4
  %175 = icmp slt i32 %174, -32768
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %11, align 4
  %178 = icmp sge i32 %177, 32768
  br i1 %178, label %179, label %181

179:                                              ; preds = %176, %173
  %180 = load i8*, i8** @TRUE, align 8
  store i8* %180, i8** %5, align 8
  br label %242

181:                                              ; preds = %176
  %182 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %183 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %187 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %188, %191
  %193 = call i32 @bfd_put_32(i32 %184, i32 %185, i64 %192)
  %194 = load i8*, i8** @TRUE, align 8
  %195 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %196 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %195, i32 0, i32 5
  store i8* %194, i8** %196, align 8
  %197 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %198 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %197, i32 0, i32 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, -1
  store i64 %202, i64* %200, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %229

204:                                              ; preds = %181
  %205 = load i64, i64* %9, align 8
  %206 = call i32 @alpha_got_entry_size(i64 %205)
  store i32 %206, i32* %15, align 4
  %207 = load i32, i32* %15, align 4
  %208 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %209 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call %struct.TYPE_15__* @alpha_elf_tdata(i32 %210)
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 %213, %207
  store i32 %214, i32* %212, align 4
  %215 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %216 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %215, i32 0, i32 3
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %216, align 8
  %218 = icmp ne %struct.TYPE_19__* %217, null
  br i1 %218, label %228, label %219

219:                                              ; preds = %204
  %220 = load i32, i32* %15, align 4
  %221 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %222 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call %struct.TYPE_15__* @alpha_elf_tdata(i32 %223)
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 %226, %220
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %219, %204
  br label %229

229:                                              ; preds = %228, %181
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @ELF64_R_SYM(i32 %232)
  %234 = load i64, i64* %9, align 8
  %235 = call i32 @ELF64_R_INFO(i32 %233, i64 %234)
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  %238 = load i8*, i8** @TRUE, align 8
  %239 = load %struct.alpha_relax_info*, %struct.alpha_relax_info** %6, align 8
  %240 = getelementptr inbounds %struct.alpha_relax_info, %struct.alpha_relax_info* %239, i32 0, i32 1
  store i8* %238, i8** %240, align 8
  %241 = load i8*, i8** @TRUE, align 8
  store i8* %241, i8** %5, align 8
  br label %242

242:                                              ; preds = %229, %179, %169, %71, %59, %31
  %243 = load i8*, i8** %5, align 8
  ret i8* %243
}

declare dso_local i32 @bfd_get_32(i32, i64) #1

declare dso_local i32 @_bfd_error_handler(i8*, i32, i32, i64, i32) #1

declare dso_local i64 @alpha_elf_dynamic_symbol_p(%struct.TYPE_16__*, %struct.TYPE_23__*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.TYPE_22__* @elf_hash_table(%struct.TYPE_23__*) #1

declare dso_local i32 @alpha_get_dtprel_base(%struct.TYPE_23__*) #1

declare dso_local i32 @alpha_get_tprel_base(%struct.TYPE_23__*) #1

declare dso_local i32 @bfd_put_32(i32, i32, i64) #1

declare dso_local i32 @alpha_got_entry_size(i64) #1

declare dso_local %struct.TYPE_15__* @alpha_elf_tdata(i32) #1

declare dso_local i32 @ELF64_R_INFO(i32, i64) #1

declare dso_local i32 @ELF64_R_SYM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
