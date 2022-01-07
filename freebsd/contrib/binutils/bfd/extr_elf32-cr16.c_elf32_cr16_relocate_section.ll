; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-cr16.c_elf32_cr16_relocate_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-cr16.c_elf32_cr16_relocate_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32 }
%struct.bfd_link_info = type { %struct.TYPE_32__*, i64 }
%struct.TYPE_32__ = type { i32 (%struct.bfd_link_info*, i8*, i8*, i32*, %struct.TYPE_34__*, i32)*, i32 (%struct.bfd_link_info*, i8*, i32*, %struct.TYPE_34__*, i32, i32)*, i32 (%struct.bfd_link_info*, %struct.TYPE_29__*, i8*, i32, i32, i32*, %struct.TYPE_34__*, i32)* }
%struct.TYPE_29__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i8* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_37__ = type { i32, i32, i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_36__ = type { i64, i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_29__ }
%struct.TYPE_30__ = type { %struct.TYPE_36__ }

@TRUE = common dso_local global i32 0, align 4
@cr16_elf_howto_table = common dso_local global %struct.TYPE_33__* null, align 8
@bfd_reloc_ok = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"internal error: out of range error\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"internal error: unsupported relocation error\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"internal error: dangerous error\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"internal error: unknown error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, i32*, %struct.TYPE_34__*, i32*, %struct.TYPE_37__*, %struct.TYPE_35__*, %struct.TYPE_34__**)* @elf32_cr16_relocate_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_cr16_relocate_section(i32* %0, %struct.bfd_link_info* %1, i32* %2, %struct.TYPE_34__* %3, i32* %4, %struct.TYPE_37__* %5, %struct.TYPE_35__* %6, %struct.TYPE_34__** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.bfd_link_info*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_37__*, align 8
  %16 = alloca %struct.TYPE_35__*, align 8
  %17 = alloca %struct.TYPE_34__**, align 8
  %18 = alloca %struct.TYPE_36__*, align 8
  %19 = alloca %struct.elf_link_hash_entry**, align 8
  %20 = alloca %struct.TYPE_37__*, align 8
  %21 = alloca %struct.TYPE_37__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_33__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_35__*, align 8
  %26 = alloca %struct.TYPE_34__*, align 8
  %27 = alloca %struct.elf_link_hash_entry*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_34__* %3, %struct.TYPE_34__** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.TYPE_37__* %5, %struct.TYPE_37__** %15, align 8
  store %struct.TYPE_35__* %6, %struct.TYPE_35__** %16, align 8
  store %struct.TYPE_34__** %7, %struct.TYPE_34__*** %17, align 8
  %34 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %35 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %8
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %9, align 4
  br label %237

40:                                               ; preds = %8
  %41 = load i32*, i32** %12, align 8
  %42 = call %struct.TYPE_30__* @elf_tdata(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 0
  store %struct.TYPE_36__* %43, %struct.TYPE_36__** %18, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %44)
  store %struct.elf_link_hash_entry** %45, %struct.elf_link_hash_entry*** %19, align 8
  %46 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  store %struct.TYPE_37__* %46, %struct.TYPE_37__** %20, align 8
  %47 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %47, i64 %51
  store %struct.TYPE_37__* %52, %struct.TYPE_37__** %21, align 8
  br label %53

53:                                               ; preds = %232, %40
  %54 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %55 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %56 = icmp ult %struct.TYPE_37__* %54, %55
  br i1 %56, label %57, label %235

57:                                               ; preds = %53
  %58 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ELF32_R_SYM(i32 %60)
  store i64 %61, i64* %24, align 8
  %62 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ELF32_R_TYPE(i32 %64)
  store i32 %65, i32* %22, align 4
  %66 = load %struct.TYPE_33__*, %struct.TYPE_33__** @cr16_elf_howto_table, align 8
  %67 = load i32, i32* %22, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %66, i64 %68
  store %struct.TYPE_33__* %69, %struct.TYPE_33__** %23, align 8
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %27, align 8
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %25, align 8
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %26, align 8
  %70 = load i64, i64* %24, align 8
  %71 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %57
  %76 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %77 = load i64, i64* %24, align 8
  %78 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %76, i64 %77
  store %struct.TYPE_35__* %78, %struct.TYPE_35__** %25, align 8
  %79 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %17, align 8
  %80 = load i64, i64* %24, align 8
  %81 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %79, i64 %80
  %82 = load %struct.TYPE_34__*, %struct.TYPE_34__** %81, align 8
  store %struct.TYPE_34__* %82, %struct.TYPE_34__** %26, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load %struct.TYPE_35__*, %struct.TYPE_35__** %25, align 8
  %85 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %86 = call i32 @_bfd_elf_rela_local_sym(i32* %83, %struct.TYPE_35__* %84, %struct.TYPE_34__** %26, %struct.TYPE_37__* %85)
  store i32 %86, i32* %28, align 4
  br label %101

87:                                               ; preds = %57
  %88 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %91 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %92 = load i64, i64* %24, align 8
  %93 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %94 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %19, align 8
  %95 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %27, align 8
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  %97 = load i32, i32* %28, align 4
  %98 = load i32, i32* %30, align 4
  %99 = load i32, i32* %31, align 4
  %100 = call i32 @RELOC_FOR_GLOBAL_SYMBOL(%struct.bfd_link_info* %88, i32* %89, %struct.TYPE_34__* %90, %struct.TYPE_37__* %91, i64 %92, %struct.TYPE_36__* %93, %struct.elf_link_hash_entry** %94, %struct.elf_link_hash_entry* %95, %struct.TYPE_34__* %96, i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %87, %75
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %108 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %28, align 4
  %111 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  %116 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %27, align 8
  %117 = icmp eq %struct.elf_link_hash_entry* %116, null
  %118 = zext i1 %117 to i32
  %119 = call i32 @cr16_elf_final_link_relocate(%struct.TYPE_33__* %102, i32* %103, i32* %104, %struct.TYPE_34__* %105, i32* %106, i32 %109, i32 %110, i32 %113, %struct.bfd_link_info* %114, %struct.TYPE_34__* %115, i32 %118)
  store i32 %119, i32* %29, align 4
  %120 = load i32, i32* %29, align 4
  %121 = load i32, i32* @bfd_reloc_ok, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %231

123:                                              ; preds = %101
  store i8* null, i8** %33, align 8
  %124 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %27, align 8
  %125 = icmp ne %struct.elf_link_hash_entry* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %27, align 8
  %128 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** %32, align 8
  br label %153

132:                                              ; preds = %123
  %133 = load i32*, i32** %12, align 8
  %134 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_35__*, %struct.TYPE_35__** %25, align 8
  %138 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @bfd_elf_string_from_elf_section(i32* %133, i32 %136, i32 %139)
  store i8* %140, i8** %32, align 8
  %141 = load i8*, i8** %32, align 8
  %142 = icmp eq i8* %141, null
  br i1 %142, label %148, label %143

143:                                              ; preds = %132
  %144 = load i8*, i8** %32, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143, %132
  %149 = load i32*, i32** %12, align 8
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  %151 = call i8* @bfd_section_name(i32* %149, %struct.TYPE_34__* %150)
  store i8* %151, i8** %32, align 8
  br label %152

152:                                              ; preds = %148, %143
  br label %153

153:                                              ; preds = %152, %126
  %154 = load i32, i32* %29, align 4
  switch i32 %154, label %209 [
    i32 129, label %155
    i32 128, label %184
    i32 130, label %203
    i32 131, label %205
    i32 132, label %207
  ]

155:                                              ; preds = %153
  %156 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %157 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %156, i32 0, i32 0
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %158, i32 0, i32 2
  %160 = load i32 (%struct.bfd_link_info*, %struct.TYPE_29__*, i8*, i32, i32, i32*, %struct.TYPE_34__*, i32)*, i32 (%struct.bfd_link_info*, %struct.TYPE_29__*, i8*, i32, i32, i32*, %struct.TYPE_34__*, i32)** %159, align 8
  %161 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %162 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %27, align 8
  %163 = icmp ne %struct.elf_link_hash_entry* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %155
  %165 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %27, align 8
  %166 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %165, i32 0, i32 0
  br label %168

167:                                              ; preds = %155
  br label %168

168:                                              ; preds = %167, %164
  %169 = phi %struct.TYPE_29__* [ %166, %164 ], [ null, %167 ]
  %170 = load i8*, i8** %32, align 8
  %171 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %172 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %12, align 8
  %175 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %176 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %177 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 %160(%struct.bfd_link_info* %161, %struct.TYPE_29__* %169, i8* %170, i32 %173, i32 0, i32* %174, %struct.TYPE_34__* %175, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %168
  %182 = load i32, i32* @FALSE, align 4
  store i32 %182, i32* %9, align 4
  br label %237

183:                                              ; preds = %168
  br label %230

184:                                              ; preds = %153
  %185 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %186 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %185, i32 0, i32 0
  %187 = load %struct.TYPE_32__*, %struct.TYPE_32__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %187, i32 0, i32 1
  %189 = load i32 (%struct.bfd_link_info*, i8*, i32*, %struct.TYPE_34__*, i32, i32)*, i32 (%struct.bfd_link_info*, i8*, i32*, %struct.TYPE_34__*, i32, i32)** %188, align 8
  %190 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %191 = load i8*, i8** %32, align 8
  %192 = load i32*, i32** %12, align 8
  %193 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %194 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %195 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @TRUE, align 4
  %198 = call i32 %189(%struct.bfd_link_info* %190, i8* %191, i32* %192, %struct.TYPE_34__* %193, i32 %196, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %184
  %201 = load i32, i32* @FALSE, align 4
  store i32 %201, i32* %9, align 4
  br label %237

202:                                              ; preds = %184
  br label %230

203:                                              ; preds = %153
  %204 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i8* %204, i8** %33, align 8
  br label %211

205:                                              ; preds = %153
  %206 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i8* %206, i8** %33, align 8
  br label %211

207:                                              ; preds = %153
  %208 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i8* %208, i8** %33, align 8
  br label %211

209:                                              ; preds = %153
  %210 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i8* %210, i8** %33, align 8
  br label %211

211:                                              ; preds = %209, %207, %205, %203
  %212 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %213 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %212, i32 0, i32 0
  %214 = load %struct.TYPE_32__*, %struct.TYPE_32__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %214, i32 0, i32 0
  %216 = load i32 (%struct.bfd_link_info*, i8*, i8*, i32*, %struct.TYPE_34__*, i32)*, i32 (%struct.bfd_link_info*, i8*, i8*, i32*, %struct.TYPE_34__*, i32)** %215, align 8
  %217 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %218 = load i8*, i8** %33, align 8
  %219 = load i8*, i8** %32, align 8
  %220 = load i32*, i32** %12, align 8
  %221 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %222 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %223 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 %216(%struct.bfd_link_info* %217, i8* %218, i8* %219, i32* %220, %struct.TYPE_34__* %221, i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %211
  %228 = load i32, i32* @FALSE, align 4
  store i32 %228, i32* %9, align 4
  br label %237

229:                                              ; preds = %211
  br label %230

230:                                              ; preds = %229, %202, %183
  br label %231

231:                                              ; preds = %230, %101
  br label %232

232:                                              ; preds = %231
  %233 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %234 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %233, i32 1
  store %struct.TYPE_37__* %234, %struct.TYPE_37__** %20, align 8
  br label %53

235:                                              ; preds = %53
  %236 = load i32, i32* @TRUE, align 4
  store i32 %236, i32* %9, align 4
  br label %237

237:                                              ; preds = %235, %227, %200, %181, %38
  %238 = load i32, i32* %9, align 4
  ret i32 %238
}

declare dso_local %struct.TYPE_30__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

declare dso_local i64 @ELF32_R_SYM(i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @_bfd_elf_rela_local_sym(i32*, %struct.TYPE_35__*, %struct.TYPE_34__**, %struct.TYPE_37__*) #1

declare dso_local i32 @RELOC_FOR_GLOBAL_SYMBOL(%struct.bfd_link_info*, i32*, %struct.TYPE_34__*, %struct.TYPE_37__*, i64, %struct.TYPE_36__*, %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*, %struct.TYPE_34__*, i32, i32, i32) #1

declare dso_local i32 @cr16_elf_final_link_relocate(%struct.TYPE_33__*, i32*, i32*, %struct.TYPE_34__*, i32*, i32, i32, i32, %struct.bfd_link_info*, %struct.TYPE_34__*, i32) #1

declare dso_local i8* @bfd_elf_string_from_elf_section(i32*, i32, i32) #1

declare dso_local i8* @bfd_section_name(i32*, %struct.TYPE_34__*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
