; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_swap_out_syms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_swap_out_syms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_strtab_hash = type { i32 }
%struct.elf_backend_data = type { i32 (%struct.TYPE_26__*, i32)*, %struct.TYPE_20__*, i64 (i32*)* }
%struct.TYPE_26__ = type { i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i32, i32, i32 (i32*, %struct.TYPE_24__*, i32*, i32*)* }
%struct.TYPE_24__ = type { i64, i32, i32, i32, i64, i8* }
%struct.TYPE_22__ = type { i32, i32, i8*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i64, %struct.TYPE_23__*, i64 }
%struct.TYPE_25__ = type { i32, i32, i32, i64, i64, i64, i64, i64, i8*, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_26__ }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_25__, %struct.TYPE_25__, %struct.TYPE_25__ }

@FALSE = common dso_local global i32 0, align 4
@SHT_SYMTAB = common dso_local global i8* null, align 8
@SHT_STRTAB = common dso_local global i8* null, align 8
@SHT_SYMTAB_SHNDX = common dso_local global i8* null, align 8
@SHN_UNDEF = common dso_local global i32 0, align 4
@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Unable to find equivalent output section for symbol '%s' from section '%s'\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"<Local sym>\00", align 1
@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@BSF_THREAD_LOCAL = common dso_local global i32 0, align 4
@STT_TLS = common dso_local global i32 0, align 4
@BSF_FUNCTION = common dso_local global i32 0, align 4
@STT_FUNC = common dso_local global i32 0, align 4
@BSF_OBJECT = common dso_local global i32 0, align 4
@STT_OBJECT = common dso_local global i32 0, align 4
@BSF_RELC = common dso_local global i32 0, align 4
@STT_RELC = common dso_local global i32 0, align 4
@BSF_SRELC = common dso_local global i32 0, align 4
@STT_SRELC = common dso_local global i32 0, align 4
@STT_NOTYPE = common dso_local global i32 0, align 4
@SEC_THREAD_LOCAL = common dso_local global i32 0, align 4
@STB_GLOBAL = common dso_local global i32 0, align 4
@STT_SECTION = common dso_local global i32 0, align 4
@STB_LOCAL = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4
@STB_WEAK = common dso_local global i32 0, align 4
@BSF_FILE = common dso_local global i32 0, align 4
@STT_FILE = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_strtab_hash**, i32)* @swap_out_syms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_out_syms(i32* %0, %struct.bfd_strtab_hash** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_strtab_hash**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.elf_backend_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__**, align 8
  %11 = alloca %struct.bfd_strtab_hash*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_24__, align 8
  %21 = alloca %struct.TYPE_24__, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_23__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_23__*, align 8
  %29 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.bfd_strtab_hash** %1, %struct.bfd_strtab_hash*** %6, align 8
  store i32 %2, i32* %7, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @elf_map_symbols(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %4, align 4
  br label %685

35:                                               ; preds = %3
  %36 = call %struct.bfd_strtab_hash* (...) @_bfd_elf_stringtab_init()
  store %struct.bfd_strtab_hash* %36, %struct.bfd_strtab_hash** %11, align 8
  %37 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %11, align 8
  %38 = icmp eq %struct.bfd_strtab_hash* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %685

41:                                               ; preds = %35
  %42 = load i32*, i32** %5, align 8
  %43 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %42)
  store %struct.elf_backend_data* %43, %struct.elf_backend_data** %8, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @bfd_get_symcount(i32* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = call %struct.TYPE_19__* @elf_tdata(i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 5
  store %struct.TYPE_25__* %48, %struct.TYPE_25__** %12, align 8
  %49 = load i8*, i8** @SHT_SYMTAB, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 8
  store i8* %49, i8** %51, align 8
  %52 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %53 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = mul nsw i32 %61, %63
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = call i64 @elf_num_locals(i32* %67)
  %69 = add nsw i64 %68, 1
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  %72 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %73 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %72, i32 0, i32 1
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 1, %76
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = call %struct.TYPE_19__* @elf_tdata(i32* %80)
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 4
  store %struct.TYPE_25__* %82, %struct.TYPE_25__** %14, align 8
  %83 = load i8*, i8** @SHT_STRTAB, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 8
  store i8* %83, i8** %85, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 1, %87
  %89 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %90 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %89, i32 0, i32 1
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32* @bfd_alloc2(i32* %86, i32 %88, i32 %93)
  store i32* %94, i32** %15, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %41
  %98 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %11, align 8
  %99 = call i32 @_bfd_stringtab_free(%struct.bfd_strtab_hash* %98)
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %4, align 4
  br label %685

101:                                              ; preds = %41
  %102 = load i32*, i32** %15, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 9
  store i32* %102, i32** %104, align 8
  store i32* null, i32** %16, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = call %struct.TYPE_19__* @elf_tdata(i32* %105)
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 3
  store %struct.TYPE_25__* %107, %struct.TYPE_25__** %13, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %142

112:                                              ; preds = %101
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 1, %113
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %18, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 1, %119
  %121 = call i32* @bfd_zalloc2(i32* %118, i32 %120, i32 4)
  store i32* %121, i32** %16, align 8
  %122 = load i32*, i32** %16, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %112
  %125 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %11, align 8
  %126 = call i32 @_bfd_stringtab_free(%struct.bfd_strtab_hash* %125)
  %127 = load i32, i32* @FALSE, align 4
  store i32 %127, i32* %4, align 4
  br label %685

128:                                              ; preds = %112
  %129 = load i32*, i32** %16, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 9
  store i32* %129, i32** %131, align 8
  %132 = load i8*, i8** @SHT_SYMTAB_SHNDX, align 8
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 8
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* %18, align 4
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 2
  store i32 4, i32* %139, align 8
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 0
  store i32 4, i32* %141, align 8
  br label %142

142:                                              ; preds = %128, %101
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  store i64 0, i64* %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  store i32 0, i32* %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 2
  store i32 0, i32* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 5
  store i8* null, i8** %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 4
  store i64 0, i64* %147, align 8
  %148 = load i32, i32* @SHN_UNDEF, align 4
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 3
  store i32 %148, i32* %149, align 8
  %150 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %151 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %150, i32 0, i32 1
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 2
  %154 = load i32 (i32*, %struct.TYPE_24__*, i32*, i32*)*, i32 (i32*, %struct.TYPE_24__*, i32*, i32*)** %153, align 8
  %155 = load i32*, i32** %5, align 8
  %156 = load i32*, i32** %15, align 8
  %157 = load i32*, i32** %16, align 8
  %158 = call i32 %154(i32* %155, %struct.TYPE_24__* %20, i32* %156, i32* %157)
  %159 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %160 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %159, i32 0, i32 1
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32*, i32** %15, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32* %166, i32** %15, align 8
  %167 = load i32*, i32** %16, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %142
  %170 = load i32*, i32** %16, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 4
  store i32* %171, i32** %16, align 8
  br label %172

172:                                              ; preds = %169, %142
  %173 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %174 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %173, i32 0, i32 2
  %175 = load i64 (i32*)*, i64 (i32*)** %174, align 8
  %176 = icmp ne i64 (i32*)* %175, null
  br i1 %176, label %177, label %184

177:                                              ; preds = %172
  %178 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %179 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %178, i32 0, i32 2
  %180 = load i64 (i32*)*, i64 (i32*)** %179, align 8
  %181 = load i32*, i32** %5, align 8
  %182 = call i64 %180(i32* %181)
  %183 = icmp ne i64 %182, 0
  br label %184

184:                                              ; preds = %177, %172
  %185 = phi i1 [ false, %172 ], [ %183, %177 ]
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %19, align 4
  %187 = load i32*, i32** %5, align 8
  %188 = call %struct.TYPE_22__** @bfd_get_outsymbols(i32* %187)
  store %struct.TYPE_22__** %188, %struct.TYPE_22__*** %10, align 8
  store i32 0, i32* %17, align 4
  br label %189

189:                                              ; preds = %659, %184
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %662

193:                                              ; preds = %189
  %194 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %195 = load i32, i32* %17, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %194, i64 %196
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  store i32 %200, i32* %22, align 4
  %201 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %202 = load i32, i32* %17, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %201, i64 %203
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %24, align 4
  %208 = load i32, i32* %19, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %220, label %210

210:                                              ; preds = %193
  %211 = load i32, i32* %24, align 4
  %212 = load i32, i32* @BSF_SECTION_SYM, align 4
  %213 = load i32, i32* @BSF_GLOBAL, align 4
  %214 = or i32 %212, %213
  %215 = and i32 %211, %214
  %216 = load i32, i32* @BSF_SECTION_SYM, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %210
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  store i64 0, i64* %219, align 8
  br label %241

220:                                              ; preds = %210, %193
  %221 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %11, align 8
  %222 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %223 = load i32, i32* %17, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %222, i64 %224
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 2
  %228 = load i8*, i8** %227, align 8
  %229 = load i32, i32* @TRUE, align 4
  %230 = load i32, i32* @FALSE, align 4
  %231 = call i64 @_bfd_stringtab_add(%struct.bfd_strtab_hash* %221, i8* %228, i32 %229, i32 %230)
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  store i64 %231, i64* %232, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp eq i64 %234, -1
  br i1 %235, label %236, label %240

236:                                              ; preds = %220
  %237 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %11, align 8
  %238 = call i32 @_bfd_stringtab_free(%struct.bfd_strtab_hash* %237)
  %239 = load i32, i32* @FALSE, align 4
  store i32 %239, i32* %4, align 4
  br label %685

240:                                              ; preds = %220
  br label %241

241:                                              ; preds = %240, %218
  %242 = load i32*, i32** %5, align 8
  %243 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %244 = load i32, i32* %17, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %243, i64 %245
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %246, align 8
  %248 = call %struct.TYPE_21__* @elf_symbol_from(i32* %242, %struct.TYPE_22__* %247)
  store %struct.TYPE_21__* %248, %struct.TYPE_21__** %23, align 8
  %249 = load i32, i32* %24, align 4
  %250 = load i32, i32* @BSF_SECTION_SYM, align 4
  %251 = and i32 %249, %250
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %303

253:                                              ; preds = %241
  %254 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %255 = load i32, i32* %17, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %254, i64 %256
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 3
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %259, align 8
  %261 = call i64 @bfd_is_com_section(%struct.TYPE_23__* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %303

263:                                              ; preds = %253
  %264 = load i32, i32* %22, align 4
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 2
  store i32 %264, i32* %265, align 4
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %267 = icmp eq %struct.TYPE_21__* %266, null
  br i1 %267, label %274, label %268

268:                                              ; preds = %263
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %285

274:                                              ; preds = %268, %263
  %275 = load i32, i32* %22, align 4
  %276 = icmp sge i32 %275, 16
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  br label %282

278:                                              ; preds = %274
  %279 = load i32, i32* %22, align 4
  %280 = call i32 @bfd_log2(i32 %279)
  %281 = shl i32 1, %280
  br label %282

282:                                              ; preds = %278, %277
  %283 = phi i32 [ 16, %277 ], [ %281, %278 ]
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  store i32 %283, i32* %284, align 8
  br label %291

285:                                              ; preds = %268
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  store i32 %289, i32* %290, align 8
  br label %291

291:                                              ; preds = %285, %282
  %292 = load i32*, i32** %5, align 8
  %293 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %294 = load i32, i32* %17, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %293, i64 %295
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 3
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %298, align 8
  %300 = call i8* @_bfd_elf_section_from_bfd_section(i32* %292, %struct.TYPE_23__* %299)
  %301 = ptrtoint i8* %300 to i32
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 3
  store i32 %301, i32* %302, align 8
  br label %450

303:                                              ; preds = %253, %241
  %304 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %305 = load i32, i32* %17, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %304, i64 %306
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 3
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %309, align 8
  store %struct.TYPE_23__* %310, %struct.TYPE_23__** %26, align 8
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %311, i32 0, i32 3
  %313 = load %struct.TYPE_23__*, %struct.TYPE_23__** %312, align 8
  %314 = icmp ne %struct.TYPE_23__* %313, null
  br i1 %314, label %315, label %326

315:                                              ; preds = %303
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %316, i32 0, i32 4
  %318 = load i64, i64* %317, align 8
  %319 = load i32, i32* %22, align 4
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %320, %318
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %22, align 4
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 3
  %325 = load %struct.TYPE_23__*, %struct.TYPE_23__** %324, align 8
  store %struct.TYPE_23__* %325, %struct.TYPE_23__** %26, align 8
  br label %326

326:                                              ; preds = %315, %303
  %327 = load i32, i32* %7, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %337, label %329

329:                                              ; preds = %326
  %330 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %331 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %330, i32 0, i32 2
  %332 = load i64, i64* %331, align 8
  %333 = load i32, i32* %22, align 4
  %334 = sext i32 %333 to i64
  %335 = add nsw i64 %334, %332
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %22, align 4
  br label %337

337:                                              ; preds = %329, %326
  %338 = load i32, i32* %22, align 4
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  store i32 %338, i32* %339, align 8
  %340 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %341 = icmp ne %struct.TYPE_21__* %340, null
  br i1 %341, label %342, label %347

342:                                              ; preds = %337
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  br label %348

347:                                              ; preds = %337
  br label %348

348:                                              ; preds = %347, %342
  %349 = phi i32 [ %346, %342 ], [ 0, %347 ]
  %350 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 2
  store i32 %349, i32* %350, align 4
  %351 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %352 = call i64 @bfd_is_abs_section(%struct.TYPE_23__* %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %392

354:                                              ; preds = %348
  %355 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %356 = icmp ne %struct.TYPE_21__* %355, null
  br i1 %356, label %357, label %392

357:                                              ; preds = %354
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %392

363:                                              ; preds = %357
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  store i32 %367, i32* %27, align 4
  %368 = load i32, i32* %27, align 4
  switch i32 %368, label %390 [
    i32 131, label %369
    i32 132, label %372
    i32 129, label %375
    i32 130, label %380
    i32 128, label %385
  ]

369:                                              ; preds = %363
  %370 = load i32*, i32** %5, align 8
  %371 = call i32 @elf_onesymtab(i32* %370)
  store i32 %371, i32* %27, align 4
  br label %391

372:                                              ; preds = %363
  %373 = load i32*, i32** %5, align 8
  %374 = call i32 @elf_dynsymtab(i32* %373)
  store i32 %374, i32* %27, align 4
  br label %391

375:                                              ; preds = %363
  %376 = load i32*, i32** %5, align 8
  %377 = call %struct.TYPE_19__* @elf_tdata(i32* %376)
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  store i32 %379, i32* %27, align 4
  br label %391

380:                                              ; preds = %363
  %381 = load i32*, i32** %5, align 8
  %382 = call %struct.TYPE_19__* @elf_tdata(i32* %381)
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  store i32 %384, i32* %27, align 4
  br label %391

385:                                              ; preds = %363
  %386 = load i32*, i32** %5, align 8
  %387 = call %struct.TYPE_19__* @elf_tdata(i32* %386)
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  store i32 %389, i32* %27, align 4
  br label %391

390:                                              ; preds = %363
  br label %391

391:                                              ; preds = %390, %385, %380, %375, %372, %369
  br label %447

392:                                              ; preds = %357, %354, %348
  %393 = load i32*, i32** %5, align 8
  %394 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %395 = call i8* @_bfd_elf_section_from_bfd_section(i32* %393, %struct.TYPE_23__* %394)
  %396 = ptrtoint i8* %395 to i32
  store i32 %396, i32* %27, align 4
  %397 = load i32, i32* %27, align 4
  %398 = icmp eq i32 %397, -1
  br i1 %398, label %399, label %446

399:                                              ; preds = %392
  %400 = load i32*, i32** %5, align 8
  %401 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %402 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = call %struct.TYPE_23__* @bfd_get_section_by_name(i32* %400, i32 %403)
  store %struct.TYPE_23__* %404, %struct.TYPE_23__** %28, align 8
  %405 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %406 = icmp eq %struct.TYPE_23__* %405, null
  br i1 %406, label %407, label %437

407:                                              ; preds = %399
  %408 = call i32 @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %409 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %410 = load i32, i32* %17, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %409, i64 %411
  %413 = load %struct.TYPE_22__*, %struct.TYPE_22__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %413, i32 0, i32 2
  %415 = load i8*, i8** %414, align 8
  %416 = icmp ne i8* %415, null
  br i1 %416, label %417, label %425

417:                                              ; preds = %407
  %418 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %419 = load i32, i32* %17, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %418, i64 %420
  %422 = load %struct.TYPE_22__*, %struct.TYPE_22__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %422, i32 0, i32 2
  %424 = load i8*, i8** %423, align 8
  br label %426

425:                                              ; preds = %407
  br label %426

426:                                              ; preds = %425, %417
  %427 = phi i8* [ %424, %417 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %425 ]
  %428 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %429 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @_bfd_error_handler(i32 %408, i8* %427, i32 %430)
  %432 = load i32, i32* @bfd_error_invalid_operation, align 4
  %433 = call i32 @bfd_set_error(i32 %432)
  %434 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %11, align 8
  %435 = call i32 @_bfd_stringtab_free(%struct.bfd_strtab_hash* %434)
  %436 = load i32, i32* @FALSE, align 4
  store i32 %436, i32* %4, align 4
  br label %685

437:                                              ; preds = %399
  %438 = load i32*, i32** %5, align 8
  %439 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %440 = call i8* @_bfd_elf_section_from_bfd_section(i32* %438, %struct.TYPE_23__* %439)
  %441 = ptrtoint i8* %440 to i32
  store i32 %441, i32* %27, align 4
  %442 = load i32, i32* %27, align 4
  %443 = icmp ne i32 %442, -1
  %444 = zext i1 %443 to i32
  %445 = call i32 @BFD_ASSERT(i32 %444)
  br label %446

446:                                              ; preds = %437, %392
  br label %447

447:                                              ; preds = %446, %391
  %448 = load i32, i32* %27, align 4
  %449 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 3
  store i32 %448, i32* %449, align 8
  br label %450

450:                                              ; preds = %447, %291
  %451 = load i32, i32* %24, align 4
  %452 = load i32, i32* @BSF_THREAD_LOCAL, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %457

455:                                              ; preds = %450
  %456 = load i32, i32* @STT_TLS, align 4
  store i32 %456, i32* %25, align 4
  br label %491

457:                                              ; preds = %450
  %458 = load i32, i32* %24, align 4
  %459 = load i32, i32* @BSF_FUNCTION, align 4
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %464

462:                                              ; preds = %457
  %463 = load i32, i32* @STT_FUNC, align 4
  store i32 %463, i32* %25, align 4
  br label %490

464:                                              ; preds = %457
  %465 = load i32, i32* %24, align 4
  %466 = load i32, i32* @BSF_OBJECT, align 4
  %467 = and i32 %465, %466
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %471

469:                                              ; preds = %464
  %470 = load i32, i32* @STT_OBJECT, align 4
  store i32 %470, i32* %25, align 4
  br label %489

471:                                              ; preds = %464
  %472 = load i32, i32* %24, align 4
  %473 = load i32, i32* @BSF_RELC, align 4
  %474 = and i32 %472, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %478

476:                                              ; preds = %471
  %477 = load i32, i32* @STT_RELC, align 4
  store i32 %477, i32* %25, align 4
  br label %488

478:                                              ; preds = %471
  %479 = load i32, i32* %24, align 4
  %480 = load i32, i32* @BSF_SRELC, align 4
  %481 = and i32 %479, %480
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %485

483:                                              ; preds = %478
  %484 = load i32, i32* @STT_SRELC, align 4
  store i32 %484, i32* %25, align 4
  br label %487

485:                                              ; preds = %478
  %486 = load i32, i32* @STT_NOTYPE, align 4
  store i32 %486, i32* %25, align 4
  br label %487

487:                                              ; preds = %485, %483
  br label %488

488:                                              ; preds = %487, %476
  br label %489

489:                                              ; preds = %488, %469
  br label %490

490:                                              ; preds = %489, %462
  br label %491

491:                                              ; preds = %490, %455
  %492 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %493 = load i32, i32* %17, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %492, i64 %494
  %496 = load %struct.TYPE_22__*, %struct.TYPE_22__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %496, i32 0, i32 3
  %498 = load %struct.TYPE_23__*, %struct.TYPE_23__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %502 = and i32 %500, %501
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %506

504:                                              ; preds = %491
  %505 = load i32, i32* @STT_TLS, align 4
  store i32 %505, i32* %25, align 4
  br label %506

506:                                              ; preds = %504, %491
  %507 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %508 = icmp ne %struct.TYPE_21__* %507, null
  br i1 %508, label %509, label %522

509:                                              ; preds = %506
  %510 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %511 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %510, i32 0, i32 0
  %512 = load i32 (%struct.TYPE_26__*, i32)*, i32 (%struct.TYPE_26__*, i32)** %511, align 8
  %513 = icmp ne i32 (%struct.TYPE_26__*, i32)* %512, null
  br i1 %513, label %514, label %522

514:                                              ; preds = %509
  %515 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %516 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %515, i32 0, i32 0
  %517 = load i32 (%struct.TYPE_26__*, i32)*, i32 (%struct.TYPE_26__*, i32)** %516, align 8
  %518 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %519 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %518, i32 0, i32 0
  %520 = load i32, i32* %25, align 4
  %521 = call i32 %517(%struct.TYPE_26__* %519, i32 %520)
  store i32 %521, i32* %25, align 4
  br label %522

522:                                              ; preds = %514, %509, %506
  %523 = load i32, i32* %24, align 4
  %524 = load i32, i32* @BSF_SECTION_SYM, align 4
  %525 = and i32 %523, %524
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %543

527:                                              ; preds = %522
  %528 = load i32, i32* %24, align 4
  %529 = load i32, i32* @BSF_GLOBAL, align 4
  %530 = and i32 %528, %529
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %537

532:                                              ; preds = %527
  %533 = load i32, i32* @STB_GLOBAL, align 4
  %534 = load i32, i32* @STT_SECTION, align 4
  %535 = call i8* @ELF_ST_INFO(i32 %533, i32 %534)
  %536 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 5
  store i8* %535, i8** %536, align 8
  br label %542

537:                                              ; preds = %527
  %538 = load i32, i32* @STB_LOCAL, align 4
  %539 = load i32, i32* @STT_SECTION, align 4
  %540 = call i8* @ELF_ST_INFO(i32 %538, i32 %539)
  %541 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 5
  store i8* %540, i8** %541, align 8
  br label %542

542:                                              ; preds = %537, %532
  br label %624

543:                                              ; preds = %522
  %544 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %545 = load i32, i32* %17, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %544, i64 %546
  %548 = load %struct.TYPE_22__*, %struct.TYPE_22__** %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %548, i32 0, i32 3
  %550 = load %struct.TYPE_23__*, %struct.TYPE_23__** %549, align 8
  %551 = call i64 @bfd_is_com_section(%struct.TYPE_23__* %550)
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %553, label %558

553:                                              ; preds = %543
  %554 = load i32, i32* @STB_GLOBAL, align 4
  %555 = load i32, i32* %25, align 4
  %556 = call i8* @ELF_ST_INFO(i32 %554, i32 %555)
  %557 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 5
  store i8* %556, i8** %557, align 8
  br label %623

558:                                              ; preds = %543
  %559 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %560 = load i32, i32* %17, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %559, i64 %561
  %563 = load %struct.TYPE_22__*, %struct.TYPE_22__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %563, i32 0, i32 3
  %565 = load %struct.TYPE_23__*, %struct.TYPE_23__** %564, align 8
  %566 = call i64 @bfd_is_und_section(%struct.TYPE_23__* %565)
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %568, label %582

568:                                              ; preds = %558
  %569 = load i32, i32* %24, align 4
  %570 = load i32, i32* @BSF_WEAK, align 4
  %571 = and i32 %569, %570
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %575

573:                                              ; preds = %568
  %574 = load i32, i32* @STB_WEAK, align 4
  br label %577

575:                                              ; preds = %568
  %576 = load i32, i32* @STB_GLOBAL, align 4
  br label %577

577:                                              ; preds = %575, %573
  %578 = phi i32 [ %574, %573 ], [ %576, %575 ]
  %579 = load i32, i32* %25, align 4
  %580 = call i8* @ELF_ST_INFO(i32 %578, i32 %579)
  %581 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 5
  store i8* %580, i8** %581, align 8
  br label %622

582:                                              ; preds = %558
  %583 = load i32, i32* %24, align 4
  %584 = load i32, i32* @BSF_FILE, align 4
  %585 = and i32 %583, %584
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %592

587:                                              ; preds = %582
  %588 = load i32, i32* @STB_LOCAL, align 4
  %589 = load i32, i32* @STT_FILE, align 4
  %590 = call i8* @ELF_ST_INFO(i32 %588, i32 %589)
  %591 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 5
  store i8* %590, i8** %591, align 8
  br label %621

592:                                              ; preds = %582
  %593 = load i32, i32* @STB_LOCAL, align 4
  store i32 %593, i32* %29, align 4
  %594 = load i32, i32* %24, align 4
  %595 = load i32, i32* @BSF_LOCAL, align 4
  %596 = and i32 %594, %595
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %600

598:                                              ; preds = %592
  %599 = load i32, i32* @STB_LOCAL, align 4
  store i32 %599, i32* %29, align 4
  br label %616

600:                                              ; preds = %592
  %601 = load i32, i32* %24, align 4
  %602 = load i32, i32* @BSF_WEAK, align 4
  %603 = and i32 %601, %602
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %607

605:                                              ; preds = %600
  %606 = load i32, i32* @STB_WEAK, align 4
  store i32 %606, i32* %29, align 4
  br label %615

607:                                              ; preds = %600
  %608 = load i32, i32* %24, align 4
  %609 = load i32, i32* @BSF_GLOBAL, align 4
  %610 = and i32 %608, %609
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %614

612:                                              ; preds = %607
  %613 = load i32, i32* @STB_GLOBAL, align 4
  store i32 %613, i32* %29, align 4
  br label %614

614:                                              ; preds = %612, %607
  br label %615

615:                                              ; preds = %614, %605
  br label %616

616:                                              ; preds = %615, %598
  %617 = load i32, i32* %29, align 4
  %618 = load i32, i32* %25, align 4
  %619 = call i8* @ELF_ST_INFO(i32 %617, i32 %618)
  %620 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 5
  store i8* %619, i8** %620, align 8
  br label %621

621:                                              ; preds = %616, %587
  br label %622

622:                                              ; preds = %621, %577
  br label %623

623:                                              ; preds = %622, %553
  br label %624

624:                                              ; preds = %623, %542
  %625 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %626 = icmp ne %struct.TYPE_21__* %625, null
  br i1 %626, label %627, label %633

627:                                              ; preds = %624
  %628 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %629 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %628, i32 0, i32 0
  %630 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %629, i32 0, i32 3
  %631 = load i64, i64* %630, align 8
  %632 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 4
  store i64 %631, i64* %632, align 8
  br label %635

633:                                              ; preds = %624
  %634 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 4
  store i64 0, i64* %634, align 8
  br label %635

635:                                              ; preds = %633, %627
  %636 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %637 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %636, i32 0, i32 1
  %638 = load %struct.TYPE_20__*, %struct.TYPE_20__** %637, align 8
  %639 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %638, i32 0, i32 2
  %640 = load i32 (i32*, %struct.TYPE_24__*, i32*, i32*)*, i32 (i32*, %struct.TYPE_24__*, i32*, i32*)** %639, align 8
  %641 = load i32*, i32** %5, align 8
  %642 = load i32*, i32** %15, align 8
  %643 = load i32*, i32** %16, align 8
  %644 = call i32 %640(i32* %641, %struct.TYPE_24__* %21, i32* %642, i32* %643)
  %645 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %646 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %645, i32 0, i32 1
  %647 = load %struct.TYPE_20__*, %struct.TYPE_20__** %646, align 8
  %648 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %647, i32 0, i32 0
  %649 = load i32, i32* %648, align 8
  %650 = load i32*, i32** %15, align 8
  %651 = sext i32 %649 to i64
  %652 = getelementptr inbounds i32, i32* %650, i64 %651
  store i32* %652, i32** %15, align 8
  %653 = load i32*, i32** %16, align 8
  %654 = icmp ne i32* %653, null
  br i1 %654, label %655, label %658

655:                                              ; preds = %635
  %656 = load i32*, i32** %16, align 8
  %657 = getelementptr inbounds i32, i32* %656, i64 4
  store i32* %657, i32** %16, align 8
  br label %658

658:                                              ; preds = %655, %635
  br label %659

659:                                              ; preds = %658
  %660 = load i32, i32* %17, align 4
  %661 = add nsw i32 %660, 1
  store i32 %661, i32* %17, align 4
  br label %189

662:                                              ; preds = %189
  %663 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %11, align 8
  %664 = load %struct.bfd_strtab_hash**, %struct.bfd_strtab_hash*** %6, align 8
  store %struct.bfd_strtab_hash* %663, %struct.bfd_strtab_hash** %664, align 8
  %665 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %11, align 8
  %666 = call i32 @_bfd_stringtab_size(%struct.bfd_strtab_hash* %665)
  %667 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %668 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %667, i32 0, i32 1
  store i32 %666, i32* %668, align 4
  %669 = load i8*, i8** @SHT_STRTAB, align 8
  %670 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %671 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %670, i32 0, i32 8
  store i8* %669, i8** %671, align 8
  %672 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %673 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %672, i32 0, i32 7
  store i64 0, i64* %673, align 8
  %674 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %675 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %674, i32 0, i32 6
  store i64 0, i64* %675, align 8
  %676 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %677 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %676, i32 0, i32 0
  store i32 0, i32* %677, align 8
  %678 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %679 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %678, i32 0, i32 5
  store i64 0, i64* %679, align 8
  %680 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %681 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %680, i32 0, i32 4
  store i64 0, i64* %681, align 8
  %682 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %683 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %682, i32 0, i32 2
  store i32 1, i32* %683, align 8
  %684 = load i32, i32* @TRUE, align 4
  store i32 %684, i32* %4, align 4
  br label %685

685:                                              ; preds = %662, %426, %236, %124, %97, %39, %33
  %686 = load i32, i32* %4, align 4
  ret i32 %686
}

declare dso_local i32 @elf_map_symbols(i32*) #1

declare dso_local %struct.bfd_strtab_hash* @_bfd_elf_stringtab_init(...) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local i32 @bfd_get_symcount(i32*) #1

declare dso_local %struct.TYPE_19__* @elf_tdata(i32*) #1

declare dso_local i64 @elf_num_locals(i32*) #1

declare dso_local i32* @bfd_alloc2(i32*, i32, i32) #1

declare dso_local i32 @_bfd_stringtab_free(%struct.bfd_strtab_hash*) #1

declare dso_local i32* @bfd_zalloc2(i32*, i32, i32) #1

declare dso_local %struct.TYPE_22__** @bfd_get_outsymbols(i32*) #1

declare dso_local i64 @_bfd_stringtab_add(%struct.bfd_strtab_hash*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_21__* @elf_symbol_from(i32*, %struct.TYPE_22__*) #1

declare dso_local i64 @bfd_is_com_section(%struct.TYPE_23__*) #1

declare dso_local i32 @bfd_log2(i32) #1

declare dso_local i8* @_bfd_elf_section_from_bfd_section(i32*, %struct.TYPE_23__*) #1

declare dso_local i64 @bfd_is_abs_section(%struct.TYPE_23__*) #1

declare dso_local i32 @elf_onesymtab(i32*) #1

declare dso_local i32 @elf_dynsymtab(i32*) #1

declare dso_local %struct.TYPE_23__* @bfd_get_section_by_name(i32*, i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i8* @ELF_ST_INFO(i32, i32) #1

declare dso_local i64 @bfd_is_und_section(%struct.TYPE_23__*) #1

declare dso_local i32 @_bfd_stringtab_size(%struct.bfd_strtab_hash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
