; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_write_rel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_write_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32, i64, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i64, %struct.TYPE_20__*, %struct.TYPE_22__** }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32, i32* }
%struct.TYPE_26__ = type { i64, i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@EXEC_P = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@STN_UNDEF = common dso_local global i32 0, align 4
@RSS_UNDEF = common dso_local global i32 0, align 4
@R_MIPS_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_25__*, i32*, i8*)* @mips_elf64_write_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_elf64_write_rel(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1, %struct.TYPE_25__* %2, i32* %3, i8* %4) #0 {
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
  br label %251

46:                                               ; preds = %5
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %231, %46
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %236

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
  br label %251

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
  %124 = load i32, i32* @RSS_UNDEF, align 4
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 5
  store i32 %124, i32* %125, align 8
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %127, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %133, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %121
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %141 = call i32 @_bfd_elf_validate_reloc(%struct.TYPE_21__* %139, %struct.TYPE_24__* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @TRUE, align 4
  %145 = load i32*, i32** %11, align 8
  store i32 %144, i32* %145, align 4
  br label %251

146:                                              ; preds = %138, %121
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 2
  store i32 %151, i32* %152, align 4
  %153 = load i64, i64* @R_MIPS_NONE, align 8
  %154 = trunc i64 %153 to i32
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 3
  store i32 %154, i32* %155, align 8
  %156 = load i64, i64* @R_MIPS_NONE, align 8
  %157 = trunc i64 %156 to i32
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 4
  store i32 %157, i32* %158, align 4
  store i32 0, i32* %20, align 4
  br label %159

159:                                              ; preds = %224, %146
  %160 = load i32, i32* %20, align 4
  %161 = icmp ult i32 %160, 2
  br i1 %161, label %162, label %227

162:                                              ; preds = %159
  %163 = load i32, i32* %13, align 4
  %164 = add i32 %163, 1
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp uge i32 %164, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %227

170:                                              ; preds = %162
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = add i32 %174, 1
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %173, i64 %176
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %177, align 8
  store %struct.TYPE_24__* %178, %struct.TYPE_24__** %21, align 8
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %181, %184
  br i1 %185, label %203, label %186

186:                                              ; preds = %170
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %188, align 8
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @bfd_is_abs_section(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %186
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %197, align 8
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %195, %186, %170
  br label %227

204:                                              ; preds = %195
  %205 = load i32, i32* %20, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %204
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 3
  store i32 %212, i32* %213, align 8
  br label %221

214:                                              ; preds = %204
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 4
  store i32 %219, i32* %220, align 4
  br label %221

221:                                              ; preds = %214, %207
  %222 = load i32, i32* %13, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %13, align 4
  br label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %20, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %20, align 4
  br label %159

227:                                              ; preds = %203, %169, %159
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %229 = load i32*, i32** %12, align 8
  %230 = call i32 @mips_elf64_swap_reloc_out(%struct.TYPE_21__* %228, %struct.TYPE_26__* %17, i32* %229)
  br label %231

231:                                              ; preds = %227
  %232 = load i32, i32* %13, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %13, align 4
  %234 = load i32*, i32** %12, align 8
  %235 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %235, i32** %12, align 8
  br label %50

236:                                              ; preds = %50
  %237 = load i32*, i32** %12, align 8
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = ptrtoint i32* %237 to i64
  %242 = ptrtoint i32* %240 to i64
  %243 = sub i64 %241, %242
  %244 = sdiv exact i64 %243, 4
  %245 = load i32*, i32** %9, align 8
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = icmp eq i64 %244, %247
  %249 = zext i1 %248 to i32
  %250 = call i32 @BFD_ASSERT(i32 %249)
  br label %251

251:                                              ; preds = %236, %143, %115, %43
  ret void
}

declare dso_local i32* @bfd_alloc(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @bfd_is_abs_section(i32) #1

declare dso_local i32 @_bfd_elf_symbol_from_bfd_symbol(%struct.TYPE_21__*, %struct.TYPE_22__**) #1

declare dso_local i32 @_bfd_elf_validate_reloc(%struct.TYPE_21__*, %struct.TYPE_24__*) #1

declare dso_local i32 @mips_elf64_swap_reloc_out(%struct.TYPE_21__*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
