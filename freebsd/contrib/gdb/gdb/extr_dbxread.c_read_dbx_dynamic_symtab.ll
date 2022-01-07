; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_read_dbx_dynamic_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_read_dbx_dynamic_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, i32* }
%struct.cleanup = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_14__**, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@bfd_target_aout_flavour = common dso_local global i64 0, align 8
@DYNAMIC = common dso_local global i32 0, align 4
@bfd_arch_unknown = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@N_TEXT = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@N_DATA = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@N_BSS = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@N_EXT = common dso_local global i32 0, align 4
@RELOC_JMP_SLOT = common dso_local global i32 0, align 4
@mst_solib_trampoline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*)* @read_dbx_dynamic_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_dbx_dynamic_symtab(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cleanup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__**, align 8
  %9 = alloca %struct.TYPE_14__**, align 8
  %10 = alloca %struct.TYPE_14__**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i32, align 4
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %21 = load %struct.objfile*, %struct.objfile** %2, align 8
  %22 = getelementptr inbounds %struct.objfile, %struct.objfile* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @bfd_get_flavour(i32* %24)
  %26 = load i64, i64* @bfd_target_aout_flavour, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %39, label %28

28:                                               ; preds = %1
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @bfd_get_file_flags(i32* %29)
  %31 = load i32, i32* @DYNAMIC, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @bfd_get_arch(i32* %35)
  %37 = load i32, i32* @bfd_arch_unknown, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %28, %1
  br label %250

40:                                               ; preds = %34
  %41 = load i32*, i32** %3, align 8
  %42 = call i64 @bfd_get_dynamic_symtab_upper_bound(i32* %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %250

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @xmalloc(i64 %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_14__**
  store %struct.TYPE_14__** %49, %struct.TYPE_14__*** %8, align 8
  %50 = load i32, i32* @xfree, align 4
  %51 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %52 = call %struct.cleanup* @make_cleanup(i32 %50, %struct.TYPE_14__** %51)
  store %struct.cleanup* %52, %struct.cleanup** %4, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %55 = call i64 @bfd_canonicalize_dynamic_symtab(i32* %53, %struct.TYPE_14__** %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load %struct.cleanup*, %struct.cleanup** %4, align 8
  %60 = call i32 @do_cleanups(%struct.cleanup* %59)
  br label %250

61:                                               ; preds = %46
  %62 = load i32*, i32** %3, align 8
  %63 = call i64 @bfd_get_symcount(i32* %62)
  %64 = icmp sle i64 %63, 0
  br i1 %64, label %65, label %162

65:                                               ; preds = %61
  %66 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_14__** %66, %struct.TYPE_14__*** %9, align 8
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %156, %65
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %7, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %161

72:                                               ; preds = %67
  %73 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %16, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %76 = call %struct.TYPE_15__* @bfd_get_section(%struct.TYPE_14__* %75)
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %17, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  store i32 %83, i32* %14, align 4
  %84 = load i32*, i32** %3, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %86 = call i32 @bfd_get_section_flags(i32* %84, %struct.TYPE_15__* %85)
  %87 = load i32, i32* @SEC_CODE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %72
  %91 = load %struct.objfile*, %struct.objfile** %2, align 8
  %92 = getelementptr inbounds %struct.objfile, %struct.objfile* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.objfile*, %struct.objfile** %2, align 8
  %95 = call i32 @SECT_OFF_TEXT(%struct.objfile* %94)
  %96 = call i32 @ANOFFSET(i32 %93, i32 %95)
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* @N_TEXT, align 4
  store i32 %99, i32* %18, align 4
  br label %137

100:                                              ; preds = %72
  %101 = load i32*, i32** %3, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %103 = call i32 @bfd_get_section_flags(i32* %101, %struct.TYPE_15__* %102)
  %104 = load i32, i32* @SEC_DATA, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %100
  %108 = load %struct.objfile*, %struct.objfile** %2, align 8
  %109 = getelementptr inbounds %struct.objfile, %struct.objfile* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.objfile*, %struct.objfile** %2, align 8
  %112 = call i32 @SECT_OFF_DATA(%struct.objfile* %111)
  %113 = call i32 @ANOFFSET(i32 %110, i32 %112)
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* @N_DATA, align 4
  store i32 %116, i32* %18, align 4
  br label %136

117:                                              ; preds = %100
  %118 = load i32*, i32** %3, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %120 = call i32 @bfd_get_section_flags(i32* %118, %struct.TYPE_15__* %119)
  %121 = load i32, i32* @SEC_ALLOC, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load %struct.objfile*, %struct.objfile** %2, align 8
  %126 = getelementptr inbounds %struct.objfile, %struct.objfile* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.objfile*, %struct.objfile** %2, align 8
  %129 = call i32 @SECT_OFF_BSS(%struct.objfile* %128)
  %130 = call i32 @ANOFFSET(i32 %127, i32 %129)
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* @N_BSS, align 4
  store i32 %133, i32* %18, align 4
  br label %135

134:                                              ; preds = %117
  br label %156

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135, %107
  br label %137

137:                                              ; preds = %136, %90
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @BSF_GLOBAL, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load i32, i32* @N_EXT, align 4
  %146 = load i32, i32* %18, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %144, %137
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %150 = call i64 @bfd_asymbol_name(%struct.TYPE_14__* %149)
  %151 = inttoptr i64 %150 to i8*
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %18, align 4
  %154 = load %struct.objfile*, %struct.objfile** %2, align 8
  %155 = call i32 @record_minimal_symbol(i8* %151, i32 %152, i32 %153, %struct.objfile* %154)
  br label %156

156:                                              ; preds = %148, %134
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  %159 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %159, i32 1
  store %struct.TYPE_14__** %160, %struct.TYPE_14__*** %9, align 8
  br label %67

161:                                              ; preds = %67
  br label %162

162:                                              ; preds = %161, %61
  %163 = load i32*, i32** %3, align 8
  %164 = call i64 @bfd_get_dynamic_reloc_upper_bound(i32* %163)
  store i64 %164, i64* %11, align 8
  %165 = load i64, i64* %11, align 8
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.cleanup*, %struct.cleanup** %4, align 8
  %169 = call i32 @do_cleanups(%struct.cleanup* %168)
  br label %250

170:                                              ; preds = %162
  %171 = load i64, i64* %11, align 8
  %172 = call i64 @xmalloc(i64 %171)
  %173 = inttoptr i64 %172 to %struct.TYPE_14__**
  store %struct.TYPE_14__** %173, %struct.TYPE_14__*** %13, align 8
  %174 = load i32, i32* @xfree, align 4
  %175 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %13, align 8
  %176 = call %struct.cleanup* @make_cleanup(i32 %174, %struct.TYPE_14__** %175)
  %177 = load i32*, i32** %3, align 8
  %178 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %13, align 8
  %179 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %180 = call i64 @bfd_canonicalize_dynamic_reloc(i32* %177, %struct.TYPE_14__** %178, %struct.TYPE_14__** %179)
  store i64 %180, i64* %12, align 8
  %181 = load i64, i64* %12, align 8
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %170
  %184 = load %struct.cleanup*, %struct.cleanup** %4, align 8
  %185 = call i32 @do_cleanups(%struct.cleanup* %184)
  br label %250

186:                                              ; preds = %170
  store i32 0, i32* %5, align 4
  %187 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %13, align 8
  store %struct.TYPE_14__** %187, %struct.TYPE_14__*** %10, align 8
  br label %188

188:                                              ; preds = %242, %186
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* %12, align 8
  %192 = icmp slt i64 %190, %191
  br i1 %192, label %193, label %247

193:                                              ; preds = %188
  %194 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  store %struct.TYPE_14__* %195, %struct.TYPE_14__** %19, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.objfile*, %struct.objfile** %2, align 8
  %200 = getelementptr inbounds %struct.objfile, %struct.objfile* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.objfile*, %struct.objfile** %2, align 8
  %203 = call i32 @SECT_OFF_DATA(%struct.objfile* %202)
  %204 = call i32 @ANOFFSET(i32 %201, i32 %203)
  %205 = add nsw i32 %198, %204
  store i32 %205, i32* %20, align 4
  %206 = load i32*, i32** %3, align 8
  %207 = call i32 @bfd_get_arch(i32* %206)
  switch i32 %207, label %229 [
    i32 128, label %208
    i32 129, label %218
  ]

208:                                              ; preds = %193
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @RELOC_JMP_SLOT, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  br label %242

217:                                              ; preds = %208
  br label %230

218:                                              ; preds = %193
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 4
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 16
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  br label %242

226:                                              ; preds = %218
  %227 = load i32, i32* %20, align 4
  %228 = sub nsw i32 %227, 2
  store i32 %228, i32* %20, align 4
  br label %230

229:                                              ; preds = %193
  br label %242

230:                                              ; preds = %226, %217
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 3
  %233 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %232, align 8
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %233, align 8
  %235 = call i64 @bfd_asymbol_name(%struct.TYPE_14__* %234)
  %236 = inttoptr i64 %235 to i8*
  store i8* %236, i8** %15, align 8
  %237 = load i8*, i8** %15, align 8
  %238 = load i32, i32* %20, align 4
  %239 = load i32, i32* @mst_solib_trampoline, align 4
  %240 = load %struct.objfile*, %struct.objfile** %2, align 8
  %241 = call i32 @prim_record_minimal_symbol(i8* %237, i32 %238, i32 %239, %struct.objfile* %240)
  br label %242

242:                                              ; preds = %230, %229, %225, %216
  %243 = load i32, i32* %5, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %5, align 4
  %245 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %245, i32 1
  store %struct.TYPE_14__** %246, %struct.TYPE_14__*** %10, align 8
  br label %188

247:                                              ; preds = %188
  %248 = load %struct.cleanup*, %struct.cleanup** %4, align 8
  %249 = call i32 @do_cleanups(%struct.cleanup* %248)
  br label %250

250:                                              ; preds = %247, %183, %167, %58, %45, %39
  ret void
}

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local i32 @bfd_get_file_flags(i32*) #1

declare dso_local i32 @bfd_get_arch(i32*) #1

declare dso_local i64 @bfd_get_dynamic_symtab_upper_bound(i32*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.TYPE_14__**) #1

declare dso_local i64 @bfd_canonicalize_dynamic_symtab(i32*, %struct.TYPE_14__**) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i64 @bfd_get_symcount(i32*) #1

declare dso_local %struct.TYPE_15__* @bfd_get_section(%struct.TYPE_14__*) #1

declare dso_local i32 @bfd_get_section_flags(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @ANOFFSET(i32, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local i32 @SECT_OFF_DATA(%struct.objfile*) #1

declare dso_local i32 @SECT_OFF_BSS(%struct.objfile*) #1

declare dso_local i32 @record_minimal_symbol(i8*, i32, i32, %struct.objfile*) #1

declare dso_local i64 @bfd_asymbol_name(%struct.TYPE_14__*) #1

declare dso_local i64 @bfd_get_dynamic_reloc_upper_bound(i32*) #1

declare dso_local i64 @bfd_canonicalize_dynamic_reloc(i32*, %struct.TYPE_14__**, %struct.TYPE_14__**) #1

declare dso_local i32 @prim_record_minimal_symbol(i8*, i32, i32, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
