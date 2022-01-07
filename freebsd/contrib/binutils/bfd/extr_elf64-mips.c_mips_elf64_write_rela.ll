; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_write_rela.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_write_rela.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32, i64, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i64, %struct.TYPE_20__*, %struct.TYPE_22__**, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32, i32* }
%struct.TYPE_26__ = type { i64, i32, i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@EXEC_P = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@STN_UNDEF = common dso_local global i32 0, align 4
@RSS_UNDEF = common dso_local global i32 0, align 4
@R_MIPS_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_25__*, i32*, i8*)* @mips_elf64_write_rela to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_elf64_write_rela(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1, %struct.TYPE_25__* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca %struct.TYPE_26__, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %11, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %14, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %26, %28
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @bfd_alloc(%struct.TYPE_21__* %32, i32 %35)
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %5
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  br label %255

46:                                               ; preds = %5
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %235, %46
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %240

56:                                               ; preds = %50
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %59, i64 %61
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %62, align 8
  store %struct.TYPE_24__* %63, %struct.TYPE_24__** %16, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @EXEC_P, align 4
  %68 = load i32, i32* @DYNAMIC, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %56
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  br label %86

77:                                               ; preds = %56
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %77, %72
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %88, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %89, align 8
  store %struct.TYPE_22__* %90, %struct.TYPE_22__** %18, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %93 = icmp eq %struct.TYPE_22__* %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %19, align 4
  br label %121

96:                                               ; preds = %86
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @bfd_is_abs_section(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @STN_UNDEF, align 4
  store i32 %108, i32* %19, align 4
  br label %120

109:                                              ; preds = %102, %96
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  store %struct.TYPE_22__* %110, %struct.TYPE_22__** %14, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = call i32 @_bfd_elf_symbol_from_bfd_symbol(%struct.TYPE_21__* %111, %struct.TYPE_22__** %18)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* @TRUE, align 4
  %117 = load i32*, i32** %11, align 8
  store i32 %116, i32* %117, align 4
  br label %255

118:                                              ; preds = %109
  %119 = load i32, i32* %19, align 4
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %118, %107
  br label %121

121:                                              ; preds = %120, %94
  %122 = load i32, i32* %19, align 4
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 1
  store i32 %122, i32* %123, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 6
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* @RSS_UNDEF, align 4
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 5
  store i32 %128, i32* %129, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %131, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %137, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %121
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %145 = call i32 @_bfd_elf_validate_reloc(%struct.TYPE_21__* %143, %struct.TYPE_24__* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* @TRUE, align 4
  %149 = load i32*, i32** %11, align 8
  store i32 %148, i32* %149, align 4
  br label %255

150:                                              ; preds = %142, %121
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 2
  store i32 %155, i32* %156, align 4
  %157 = load i64, i64* @R_MIPS_NONE, align 8
  %158 = trunc i64 %157 to i32
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 3
  store i32 %158, i32* %159, align 8
  %160 = load i64, i64* @R_MIPS_NONE, align 8
  %161 = trunc i64 %160 to i32
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 4
  store i32 %161, i32* %162, align 4
  store i32 0, i32* %20, align 4
  br label %163

163:                                              ; preds = %228, %150
  %164 = load i32, i32* %20, align 4
  %165 = icmp ult i32 %164, 2
  br i1 %165, label %166, label %231

166:                                              ; preds = %163
  %167 = load i32, i32* %13, align 4
  %168 = add i32 %167, 1
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp uge i32 %168, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %231

174:                                              ; preds = %166
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = add i32 %178, 1
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %177, i64 %180
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %181, align 8
  store %struct.TYPE_24__* %182, %struct.TYPE_24__** %21, align 8
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %185, %188
  br i1 %189, label %207, label %190

190:                                              ; preds = %174
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %192, align 8
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i64 @bfd_is_abs_section(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %190
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %201, align 8
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %199, %190, %174
  br label %231

208:                                              ; preds = %199
  %209 = load i32, i32* %20, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 3
  store i32 %216, i32* %217, align 8
  br label %225

218:                                              ; preds = %208
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 4
  store i32 %223, i32* %224, align 4
  br label %225

225:                                              ; preds = %218, %211
  %226 = load i32, i32* %13, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %13, align 4
  br label %228

228:                                              ; preds = %225
  %229 = load i32, i32* %20, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %20, align 4
  br label %163

231:                                              ; preds = %207, %173, %163
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %233 = load i32*, i32** %12, align 8
  %234 = call i32 @mips_elf64_swap_reloca_out(%struct.TYPE_21__* %232, %struct.TYPE_26__* %17, i32* %233)
  br label %235

235:                                              ; preds = %231
  %236 = load i32, i32* %13, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %13, align 4
  %238 = load i32*, i32** %12, align 8
  %239 = getelementptr inbounds i32, i32* %238, i32 1
  store i32* %239, i32** %12, align 8
  br label %50

240:                                              ; preds = %50
  %241 = load i32*, i32** %12, align 8
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = ptrtoint i32* %241 to i64
  %246 = ptrtoint i32* %244 to i64
  %247 = sub i64 %245, %246
  %248 = sdiv exact i64 %247, 4
  %249 = load i32*, i32** %9, align 8
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = icmp eq i64 %248, %251
  %253 = zext i1 %252 to i32
  %254 = call i32 @BFD_ASSERT(i32 %253)
  br label %255

255:                                              ; preds = %240, %147, %115, %43
  ret void
}

declare dso_local i32* @bfd_alloc(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @bfd_is_abs_section(i32) #1

declare dso_local i32 @_bfd_elf_symbol_from_bfd_symbol(%struct.TYPE_21__*, %struct.TYPE_22__**) #1

declare dso_local i32 @_bfd_elf_validate_reloc(%struct.TYPE_21__*, %struct.TYPE_24__*) #1

declare dso_local i32 @mips_elf64_swap_reloca_out(%struct.TYPE_21__*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
