; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_check_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_check_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32 }
%struct.bfd_link_info = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_50__ = type { i32, i32, i32, i32 }
%struct.TYPE_52__ = type { i32, i64, i32 }
%struct.ppc_elf_link_hash_table = type { %struct.TYPE_43__, i32, i32*, i8*, %struct.TYPE_39__*, i32* }
%struct.TYPE_43__ = type { i32*, %struct.elf_link_hash_entry* }
%struct.elf_link_hash_entry = type { i32, i32, %struct.TYPE_48__, i32, %struct.TYPE_46__ }
%struct.TYPE_48__ = type { i64, %struct.TYPE_47__, %struct.TYPE_45__ }
%struct.TYPE_47__ = type { i8* }
%struct.TYPE_45__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i64 }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_39__ = type { i32*, i32* }
%struct.TYPE_51__ = type { i64 }
%struct.ppc_elf_dyn_relocs = type { i32, i32, %struct.TYPE_50__*, %struct.ppc_elf_dyn_relocs* }
%struct.TYPE_40__ = type { %struct.TYPE_51__ }
%struct.TYPE_38__ = type { i32, %struct.ppc_elf_dyn_relocs*, i8* }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_42__ = type { i32, %struct.TYPE_50__*, %struct.TYPE_49__ }
%struct.TYPE_49__ = type { i32 }

@TRUE = common dso_local global i8* null, align 8
@SEC_ALLOC = common dso_local global i32 0, align 4
@ppc_elf_howto_table = common dso_local global %struct.TYPE_37__** null, align 8
@.str = private unnamed_addr constant [15 x i8] c"__tls_get_addr\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c".got2\00", align 1
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"_GLOBAL_OFFSET_TABLE_\00", align 1
@TLS_TLS = common dso_local global i32 0, align 4
@TLS_LD = common dso_local global i32 0, align 4
@TLS_GD = common dso_local global i32 0, align 4
@DF_STATIC_TLS = common dso_local global i32 0, align 4
@TLS_TPREL = common dso_local global i32 0, align 4
@TLS_DTPREL = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"%B(%A+0x%lx): %s reloc against local symbol\00", align 1
@bfd_error_bad_value = common dso_local global i32 0, align 4
@PLT_UNSET = common dso_local global i8* null, align 8
@PLT_OLD = common dso_local global i8* null, align 8
@SEC_CODE = common dso_local global i32 0, align 4
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@ELIMINATE_COPY_RELOCS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c".rela\00", align 1
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.bfd_link_info*, %struct.TYPE_50__*, %struct.TYPE_52__*)* @ppc_elf_check_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ppc_elf_check_relocs(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_50__* %2, %struct.TYPE_52__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca %struct.TYPE_50__*, align 8
  %9 = alloca %struct.TYPE_52__*, align 8
  %10 = alloca %struct.ppc_elf_link_hash_table*, align 8
  %11 = alloca %struct.TYPE_51__*, align 8
  %12 = alloca %struct.elf_link_hash_entry**, align 8
  %13 = alloca %struct.TYPE_52__*, align 8
  %14 = alloca %struct.TYPE_52__*, align 8
  %15 = alloca %struct.TYPE_50__*, align 8
  %16 = alloca %struct.TYPE_50__*, align 8
  %17 = alloca %struct.elf_link_hash_entry*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.elf_link_hash_entry*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_50__*, align 8
  %24 = alloca %struct.ppc_elf_dyn_relocs*, align 8
  %25 = alloca %struct.ppc_elf_dyn_relocs**, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_50__*, align 8
  %29 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %7, align 8
  store %struct.TYPE_50__* %2, %struct.TYPE_50__** %8, align 8
  store %struct.TYPE_52__* %3, %struct.TYPE_52__** %9, align 8
  %30 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %31 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i8*, i8** @TRUE, align 8
  store i8* %35, i8** %5, align 8
  br label %1007

36:                                               ; preds = %4
  %37 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SEC_ALLOC, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i8*, i8** @TRUE, align 8
  store i8* %44, i8** %5, align 8
  br label %1007

45:                                               ; preds = %36
  %46 = load %struct.TYPE_37__**, %struct.TYPE_37__*** @ppc_elf_howto_table, align 8
  %47 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %46, i64 210
  %48 = load %struct.TYPE_37__*, %struct.TYPE_37__** %47, align 8
  %49 = icmp ne %struct.TYPE_37__* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = call i32 (...) @ppc_elf_howto_init()
  br label %52

52:                                               ; preds = %50, %45
  %53 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %54 = call %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info* %53)
  store %struct.ppc_elf_link_hash_table* %54, %struct.ppc_elf_link_hash_table** %10, align 8
  %55 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %56 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %55, i32 0, i32 0
  %57 = load i8*, i8** @FALSE, align 8
  %58 = load i8*, i8** @FALSE, align 8
  %59 = load i8*, i8** @TRUE, align 8
  %60 = call %struct.elf_link_hash_entry* @elf_link_hash_lookup(%struct.TYPE_43__* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %57, i8* %58, i8* %59)
  store %struct.elf_link_hash_entry* %60, %struct.elf_link_hash_entry** %17, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call %struct.TYPE_40__* @elf_tdata(i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %62, i32 0, i32 0
  store %struct.TYPE_51__* %63, %struct.TYPE_51__** %11, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %64)
  store %struct.elf_link_hash_entry** %65, %struct.elf_link_hash_entry*** %12, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call %struct.TYPE_50__* @bfd_get_section_by_name(i32* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_50__* %67, %struct.TYPE_50__** %15, align 8
  store %struct.TYPE_50__* null, %struct.TYPE_50__** %16, align 8
  %68 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %69 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %68, i64 %72
  store %struct.TYPE_52__* %73, %struct.TYPE_52__** %14, align 8
  %74 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  store %struct.TYPE_52__* %74, %struct.TYPE_52__** %13, align 8
  br label %75

75:                                               ; preds = %1002, %52
  %76 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %77 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %78 = icmp ult %struct.TYPE_52__* %76, %77
  br i1 %78, label %79, label %1005

79:                                               ; preds = %75
  %80 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @ELF32_R_SYM(i32 %82)
  store i64 %83, i64* %18, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load %struct.TYPE_51__*, %struct.TYPE_51__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %20, align 8
  br label %124

90:                                               ; preds = %79
  %91 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %12, align 8
  %92 = load i64, i64* %18, align 8
  %93 = load %struct.TYPE_51__*, %struct.TYPE_51__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %92, %95
  %97 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %91, i64 %96
  %98 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %97, align 8
  store %struct.elf_link_hash_entry* %98, %struct.elf_link_hash_entry** %20, align 8
  br label %99

99:                                               ; preds = %115, %90
  %100 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %101 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @bfd_link_hash_indirect, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %99
  %107 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %108 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @bfd_link_hash_warning, align 8
  %112 = icmp eq i64 %110, %111
  br label %113

113:                                              ; preds = %106, %99
  %114 = phi i1 [ true, %99 ], [ %112, %106 ]
  br i1 %114, label %115, label %123

115:                                              ; preds = %113
  %116 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %117 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %122, %struct.elf_link_hash_entry** %20, align 8
  br label %99

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %89
  %125 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %126 = icmp ne %struct.elf_link_hash_entry* %125, null
  br i1 %126, label %127, label %170

127:                                              ; preds = %124
  %128 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %129 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %128, i32 0, i32 5
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %170

132:                                              ; preds = %127
  %133 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %134 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %170

140:                                              ; preds = %132
  %141 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %142 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load i32*, i32** %6, align 8
  %148 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %149 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %149, i32 0, i32 0
  store i32* %147, i32** %150, align 8
  br label %151

151:                                              ; preds = %146, %140
  %152 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %153 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %157 = call i32 @ppc_elf_create_got(i32* %155, %struct.bfd_link_info* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %151
  %160 = load i8*, i8** @FALSE, align 8
  store i8* %160, i8** %5, align 8
  br label %1007

161:                                              ; preds = %151
  %162 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %163 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %164 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %164, i32 0, i32 1
  %166 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %165, align 8
  %167 = icmp eq %struct.elf_link_hash_entry* %162, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @BFD_ASSERT(i32 %168)
  br label %170

170:                                              ; preds = %161, %132, %127, %124
  store i32 0, i32* %21, align 4
  %171 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @ELF32_R_TYPE(i32 %173)
  store i32 %174, i32* %19, align 4
  %175 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %176 = icmp ne %struct.elf_link_hash_entry* %175, null
  br i1 %176, label %177, label %208

177:                                              ; preds = %170
  %178 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %179 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %180 = icmp eq %struct.elf_link_hash_entry* %178, %179
  br i1 %180, label %181, label %208

181:                                              ; preds = %177
  %182 = load i32, i32* %19, align 4
  switch i32 %182, label %183 [
    i32 156, label %184
    i32 162, label %184
    i32 147, label %184
    i32 154, label %184
    i32 152, label %184
    i32 153, label %184
    i32 212, label %184
    i32 219, label %184
    i32 217, label %184
    i32 218, label %184
  ]

183:                                              ; preds = %181
  br label %207

184:                                              ; preds = %181, %181, %181, %181, %181, %181, %181, %181, %181, %181
  %185 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %186 = load %struct.TYPE_52__*, %struct.TYPE_52__** %9, align 8
  %187 = icmp ne %struct.TYPE_52__* %185, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %184
  %189 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %189, i64 -1
  %191 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @ELF32_R_TYPE(i32 %192)
  %194 = icmp eq i32 %193, 138
  br i1 %194, label %202, label %195

195:                                              ; preds = %188
  %196 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %196, i64 -1
  %198 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @ELF32_R_TYPE(i32 %199)
  %201 = icmp eq i32 %200, 137
  br i1 %201, label %202, label %203

202:                                              ; preds = %195, %188
  br label %206

203:                                              ; preds = %195, %184
  %204 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %204, i32 0, i32 2
  store i32 1, i32* %205, align 4
  br label %206

206:                                              ; preds = %203, %202
  br label %207

207:                                              ; preds = %206, %183
  br label %208

208:                                              ; preds = %207, %177, %170
  %209 = load i32, i32* %19, align 4
  switch i32 %209, label %1001 [
    i32 138, label %210
    i32 137, label %210
    i32 171, label %211
    i32 168, label %211
    i32 169, label %211
    i32 170, label %211
    i32 175, label %215
    i32 172, label %215
    i32 173, label %215
    i32 174, label %215
    i32 167, label %219
    i32 164, label %219
    i32 165, label %219
    i32 166, label %219
    i32 179, label %234
    i32 176, label %234
    i32 177, label %234
    i32 178, label %234
    i32 183, label %241
    i32 180, label %241
    i32 181, label %241
    i32 182, label %241
    i32 187, label %294
    i32 189, label %348
    i32 144, label %403
    i32 188, label %444
    i32 190, label %485
    i32 195, label %485
    i32 196, label %544
    i32 200, label %544
    i32 197, label %544
    i32 198, label %544
    i32 199, label %544
    i32 157, label %563
    i32 156, label %563
    i32 155, label %563
    i32 158, label %563
    i32 159, label %563
    i32 160, label %563
    i32 143, label %607
    i32 140, label %607
    i32 141, label %607
    i32 142, label %607
    i32 207, label %607
    i32 204, label %607
    i32 205, label %607
    i32 206, label %607
    i32 136, label %607
    i32 151, label %608
    i32 148, label %608
    i32 149, label %608
    i32 150, label %608
    i32 139, label %612
    i32 201, label %612
    i32 161, label %612
    i32 128, label %612
    i32 209, label %613
    i32 186, label %613
    i32 163, label %613
    i32 145, label %613
    i32 211, label %614
    i32 194, label %614
    i32 191, label %614
    i32 192, label %614
    i32 193, label %614
    i32 202, label %614
    i32 162, label %615
    i32 184, label %639
    i32 185, label %651
    i32 131, label %663
    i32 135, label %663
    i32 132, label %663
    i32 133, label %663
    i32 134, label %663
    i32 208, label %675
    i32 203, label %675
    i32 146, label %676
    i32 147, label %735
    i32 154, label %735
    i32 152, label %735
    i32 153, label %735
    i32 210, label %761
    i32 212, label %761
    i32 216, label %761
    i32 213, label %761
    i32 214, label %761
    i32 215, label %761
    i32 219, label %761
    i32 217, label %761
    i32 218, label %761
    i32 129, label %761
    i32 130, label %761
  ]

210:                                              ; preds = %208, %208
  br label %1001

211:                                              ; preds = %208, %208, %208, %208
  %212 = load i32, i32* @TLS_TLS, align 4
  %213 = load i32, i32* @TLS_LD, align 4
  %214 = or i32 %212, %213
  store i32 %214, i32* %21, align 4
  br label %238

215:                                              ; preds = %208, %208, %208, %208
  %216 = load i32, i32* @TLS_TLS, align 4
  %217 = load i32, i32* @TLS_GD, align 4
  %218 = or i32 %216, %217
  store i32 %218, i32* %21, align 4
  br label %238

219:                                              ; preds = %208, %208, %208, %208
  %220 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %221 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %219
  %225 = load i32, i32* @DF_STATIC_TLS, align 4
  %226 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %227 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %224, %219
  %231 = load i32, i32* @TLS_TLS, align 4
  %232 = load i32, i32* @TLS_TPREL, align 4
  %233 = or i32 %231, %232
  store i32 %233, i32* %21, align 4
  br label %238

234:                                              ; preds = %208, %208, %208, %208
  %235 = load i32, i32* @TLS_TLS, align 4
  %236 = load i32, i32* @TLS_DTPREL, align 4
  %237 = or i32 %235, %236
  store i32 %237, i32* %21, align 4
  br label %238

238:                                              ; preds = %234, %230, %215, %211
  %239 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %239, i32 0, i32 3
  store i32 1, i32* %240, align 4
  br label %241

241:                                              ; preds = %208, %208, %208, %208, %238
  %242 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %243 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %242, i32 0, i32 5
  %244 = load i32*, i32** %243, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %268

246:                                              ; preds = %241
  %247 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %248 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = icmp eq i32* %250, null
  br i1 %251, label %252, label %257

252:                                              ; preds = %246
  %253 = load i32*, i32** %6, align 8
  %254 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %255 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %255, i32 0, i32 0
  store i32* %253, i32** %256, align 8
  br label %257

257:                                              ; preds = %252, %246
  %258 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %259 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %263 = call i32 @ppc_elf_create_got(i32* %261, %struct.bfd_link_info* %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %257
  %266 = load i8*, i8** @FALSE, align 8
  store i8* %266, i8** %5, align 8
  br label %1007

267:                                              ; preds = %257
  br label %268

268:                                              ; preds = %267, %241
  %269 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %270 = icmp ne %struct.elf_link_hash_entry* %269, null
  br i1 %270, label %271, label %283

271:                                              ; preds = %268
  %272 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %273 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %272, i32 0, i32 4
  %274 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  %277 = load i32, i32* %21, align 4
  %278 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %279 = call %struct.TYPE_38__* @ppc_elf_hash_entry(%struct.elf_link_hash_entry* %278)
  %280 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = or i32 %281, %277
  store i32 %282, i32* %280, align 8
  br label %293

283:                                              ; preds = %268
  %284 = load i32*, i32** %6, align 8
  %285 = load %struct.TYPE_51__*, %struct.TYPE_51__** %11, align 8
  %286 = load i64, i64* %18, align 8
  %287 = load i32, i32* %21, align 4
  %288 = call i32 @update_local_sym_info(i32* %284, %struct.TYPE_51__* %285, i64 %286, i32 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %283
  %291 = load i8*, i8** @FALSE, align 8
  store i8* %291, i8** %5, align 8
  br label %1007

292:                                              ; preds = %283
  br label %293

293:                                              ; preds = %292, %271
  br label %1001

294:                                              ; preds = %208
  %295 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %296 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %294
  %300 = load i32*, i32** %6, align 8
  %301 = load i32, i32* %19, align 4
  %302 = call i32 @bad_shared_reloc(i32* %300, i32 %301)
  %303 = load i8*, i8** @FALSE, align 8
  store i8* %303, i8** %5, align 8
  br label %1007

304:                                              ; preds = %294
  %305 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %306 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %305, i32 0, i32 4
  %307 = load %struct.TYPE_39__*, %struct.TYPE_39__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %307, i64 0
  %309 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %308, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = icmp eq i32* %310, null
  br i1 %311, label %312, label %323

312:                                              ; preds = %304
  %313 = load i32*, i32** %6, align 8
  %314 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %315 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %316 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %315, i32 0, i32 4
  %317 = load %struct.TYPE_39__*, %struct.TYPE_39__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %317, i64 0
  %319 = call i32 @ppc_elf_create_linker_section(i32* %313, %struct.bfd_link_info* %314, i32 0, %struct.TYPE_39__* %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %323, label %321

321:                                              ; preds = %312
  %322 = load i8*, i8** @FALSE, align 8
  store i8* %322, i8** %5, align 8
  br label %1007

323:                                              ; preds = %312, %304
  %324 = load i32*, i32** %6, align 8
  %325 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %326 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %325, i32 0, i32 4
  %327 = load %struct.TYPE_39__*, %struct.TYPE_39__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %327, i64 0
  %329 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %330 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %331 = call i32 @elf_create_pointer_linker_section(i32* %324, %struct.TYPE_39__* %328, %struct.elf_link_hash_entry* %329, %struct.TYPE_52__* %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %335, label %333

333:                                              ; preds = %323
  %334 = load i8*, i8** @FALSE, align 8
  store i8* %334, i8** %5, align 8
  br label %1007

335:                                              ; preds = %323
  %336 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %337 = icmp ne %struct.elf_link_hash_entry* %336, null
  br i1 %337, label %338, label %347

338:                                              ; preds = %335
  %339 = load i8*, i8** @TRUE, align 8
  %340 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %341 = call %struct.TYPE_38__* @ppc_elf_hash_entry(%struct.elf_link_hash_entry* %340)
  %342 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %341, i32 0, i32 2
  store i8* %339, i8** %342, align 8
  %343 = load i8*, i8** @TRUE, align 8
  %344 = ptrtoint i8* %343 to i32
  %345 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %346 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %345, i32 0, i32 0
  store i32 %344, i32* %346, align 8
  br label %347

347:                                              ; preds = %338, %335
  br label %1001

348:                                              ; preds = %208
  %349 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %350 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %348
  %354 = load i32*, i32** %6, align 8
  %355 = load i32, i32* %19, align 4
  %356 = call i32 @bad_shared_reloc(i32* %354, i32 %355)
  %357 = load i8*, i8** @FALSE, align 8
  store i8* %357, i8** %5, align 8
  br label %1007

358:                                              ; preds = %348
  %359 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %360 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %359, i32 0, i32 4
  %361 = load %struct.TYPE_39__*, %struct.TYPE_39__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %361, i64 1
  %363 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %362, i32 0, i32 1
  %364 = load i32*, i32** %363, align 8
  %365 = icmp eq i32* %364, null
  br i1 %365, label %366, label %378

366:                                              ; preds = %358
  %367 = load i32*, i32** %6, align 8
  %368 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %369 = load i32, i32* @SEC_READONLY, align 4
  %370 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %371 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %370, i32 0, i32 4
  %372 = load %struct.TYPE_39__*, %struct.TYPE_39__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %372, i64 1
  %374 = call i32 @ppc_elf_create_linker_section(i32* %367, %struct.bfd_link_info* %368, i32 %369, %struct.TYPE_39__* %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %378, label %376

376:                                              ; preds = %366
  %377 = load i8*, i8** @FALSE, align 8
  store i8* %377, i8** %5, align 8
  br label %1007

378:                                              ; preds = %366, %358
  %379 = load i32*, i32** %6, align 8
  %380 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %381 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %380, i32 0, i32 4
  %382 = load %struct.TYPE_39__*, %struct.TYPE_39__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %382, i64 1
  %384 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %385 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %386 = call i32 @elf_create_pointer_linker_section(i32* %379, %struct.TYPE_39__* %383, %struct.elf_link_hash_entry* %384, %struct.TYPE_52__* %385)
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %390, label %388

388:                                              ; preds = %378
  %389 = load i8*, i8** @FALSE, align 8
  store i8* %389, i8** %5, align 8
  br label %1007

390:                                              ; preds = %378
  %391 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %392 = icmp ne %struct.elf_link_hash_entry* %391, null
  br i1 %392, label %393, label %402

393:                                              ; preds = %390
  %394 = load i8*, i8** @TRUE, align 8
  %395 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %396 = call %struct.TYPE_38__* @ppc_elf_hash_entry(%struct.elf_link_hash_entry* %395)
  %397 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %396, i32 0, i32 2
  store i8* %394, i8** %397, align 8
  %398 = load i8*, i8** @TRUE, align 8
  %399 = ptrtoint i8* %398 to i32
  %400 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %401 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %400, i32 0, i32 0
  store i32 %399, i32* %401, align 8
  br label %402

402:                                              ; preds = %393, %390
  br label %1001

403:                                              ; preds = %208
  %404 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %405 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %403
  %409 = load i32*, i32** %6, align 8
  %410 = load i32, i32* %19, align 4
  %411 = call i32 @bad_shared_reloc(i32* %409, i32 %410)
  %412 = load i8*, i8** @FALSE, align 8
  store i8* %412, i8** %5, align 8
  br label %1007

413:                                              ; preds = %403
  %414 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %415 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %414, i32 0, i32 4
  %416 = load %struct.TYPE_39__*, %struct.TYPE_39__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %416, i64 0
  %418 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %417, i32 0, i32 0
  %419 = load i32*, i32** %418, align 8
  %420 = icmp eq i32* %419, null
  br i1 %420, label %421, label %431

421:                                              ; preds = %413
  %422 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %423 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %424 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %423, i32 0, i32 4
  %425 = load %struct.TYPE_39__*, %struct.TYPE_39__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %425, i64 0
  %427 = call i32 @create_sdata_sym(%struct.ppc_elf_link_hash_table* %422, %struct.TYPE_39__* %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %431, label %429

429:                                              ; preds = %421
  %430 = load i8*, i8** @FALSE, align 8
  store i8* %430, i8** %5, align 8
  br label %1007

431:                                              ; preds = %421, %413
  %432 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %433 = icmp ne %struct.elf_link_hash_entry* %432, null
  br i1 %433, label %434, label %443

434:                                              ; preds = %431
  %435 = load i8*, i8** @TRUE, align 8
  %436 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %437 = call %struct.TYPE_38__* @ppc_elf_hash_entry(%struct.elf_link_hash_entry* %436)
  %438 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %437, i32 0, i32 2
  store i8* %435, i8** %438, align 8
  %439 = load i8*, i8** @TRUE, align 8
  %440 = ptrtoint i8* %439 to i32
  %441 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %442 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %441, i32 0, i32 0
  store i32 %440, i32* %442, align 8
  br label %443

443:                                              ; preds = %434, %431
  br label %1001

444:                                              ; preds = %208
  %445 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %446 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %454

449:                                              ; preds = %444
  %450 = load i32*, i32** %6, align 8
  %451 = load i32, i32* %19, align 4
  %452 = call i32 @bad_shared_reloc(i32* %450, i32 %451)
  %453 = load i8*, i8** @FALSE, align 8
  store i8* %453, i8** %5, align 8
  br label %1007

454:                                              ; preds = %444
  %455 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %456 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %455, i32 0, i32 4
  %457 = load %struct.TYPE_39__*, %struct.TYPE_39__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %457, i64 1
  %459 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %458, i32 0, i32 0
  %460 = load i32*, i32** %459, align 8
  %461 = icmp eq i32* %460, null
  br i1 %461, label %462, label %472

462:                                              ; preds = %454
  %463 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %464 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %465 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %464, i32 0, i32 4
  %466 = load %struct.TYPE_39__*, %struct.TYPE_39__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %466, i64 1
  %468 = call i32 @create_sdata_sym(%struct.ppc_elf_link_hash_table* %463, %struct.TYPE_39__* %467)
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %472, label %470

470:                                              ; preds = %462
  %471 = load i8*, i8** @FALSE, align 8
  store i8* %471, i8** %5, align 8
  br label %1007

472:                                              ; preds = %462, %454
  %473 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %474 = icmp ne %struct.elf_link_hash_entry* %473, null
  br i1 %474, label %475, label %484

475:                                              ; preds = %472
  %476 = load i8*, i8** @TRUE, align 8
  %477 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %478 = call %struct.TYPE_38__* @ppc_elf_hash_entry(%struct.elf_link_hash_entry* %477)
  %479 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %478, i32 0, i32 2
  store i8* %476, i8** %479, align 8
  %480 = load i8*, i8** @TRUE, align 8
  %481 = ptrtoint i8* %480 to i32
  %482 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %483 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %482, i32 0, i32 0
  store i32 %481, i32* %483, align 8
  br label %484

484:                                              ; preds = %475, %472
  br label %1001

485:                                              ; preds = %208, %208
  %486 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %487 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %495

490:                                              ; preds = %485
  %491 = load i32*, i32** %6, align 8
  %492 = load i32, i32* %19, align 4
  %493 = call i32 @bad_shared_reloc(i32* %491, i32 %492)
  %494 = load i8*, i8** @FALSE, align 8
  store i8* %494, i8** %5, align 8
  br label %1007

495:                                              ; preds = %485
  %496 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %497 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %496, i32 0, i32 4
  %498 = load %struct.TYPE_39__*, %struct.TYPE_39__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %498, i64 0
  %500 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %499, i32 0, i32 0
  %501 = load i32*, i32** %500, align 8
  %502 = icmp eq i32* %501, null
  br i1 %502, label %503, label %513

503:                                              ; preds = %495
  %504 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %505 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %506 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %505, i32 0, i32 4
  %507 = load %struct.TYPE_39__*, %struct.TYPE_39__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %507, i64 0
  %509 = call i32 @create_sdata_sym(%struct.ppc_elf_link_hash_table* %504, %struct.TYPE_39__* %508)
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %513, label %511

511:                                              ; preds = %503
  %512 = load i8*, i8** @FALSE, align 8
  store i8* %512, i8** %5, align 8
  br label %1007

513:                                              ; preds = %503, %495
  %514 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %515 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %514, i32 0, i32 4
  %516 = load %struct.TYPE_39__*, %struct.TYPE_39__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %516, i64 1
  %518 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %517, i32 0, i32 0
  %519 = load i32*, i32** %518, align 8
  %520 = icmp eq i32* %519, null
  br i1 %520, label %521, label %531

521:                                              ; preds = %513
  %522 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %523 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %524 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %523, i32 0, i32 4
  %525 = load %struct.TYPE_39__*, %struct.TYPE_39__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %525, i64 1
  %527 = call i32 @create_sdata_sym(%struct.ppc_elf_link_hash_table* %522, %struct.TYPE_39__* %526)
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %531, label %529

529:                                              ; preds = %521
  %530 = load i8*, i8** @FALSE, align 8
  store i8* %530, i8** %5, align 8
  br label %1007

531:                                              ; preds = %521, %513
  %532 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %533 = icmp ne %struct.elf_link_hash_entry* %532, null
  br i1 %533, label %534, label %543

534:                                              ; preds = %531
  %535 = load i8*, i8** @TRUE, align 8
  %536 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %537 = call %struct.TYPE_38__* @ppc_elf_hash_entry(%struct.elf_link_hash_entry* %536)
  %538 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %537, i32 0, i32 2
  store i8* %535, i8** %538, align 8
  %539 = load i8*, i8** @TRUE, align 8
  %540 = ptrtoint i8* %539 to i32
  %541 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %542 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %541, i32 0, i32 0
  store i32 %540, i32* %542, align 8
  br label %543

543:                                              ; preds = %534, %531
  br label %1001

544:                                              ; preds = %208, %208, %208, %208, %208
  %545 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %546 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %554

549:                                              ; preds = %544
  %550 = load i32*, i32** %6, align 8
  %551 = load i32, i32* %19, align 4
  %552 = call i32 @bad_shared_reloc(i32* %550, i32 %551)
  %553 = load i8*, i8** @FALSE, align 8
  store i8* %553, i8** %5, align 8
  br label %1007

554:                                              ; preds = %544
  %555 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %556 = icmp ne %struct.elf_link_hash_entry* %555, null
  br i1 %556, label %557, label %562

557:                                              ; preds = %554
  %558 = load i8*, i8** @TRUE, align 8
  %559 = ptrtoint i8* %558 to i32
  %560 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %561 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %560, i32 0, i32 0
  store i32 %559, i32* %561, align 8
  br label %562

562:                                              ; preds = %557, %554
  br label %1001

563:                                              ; preds = %208, %208, %208, %208, %208, %208
  %564 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %565 = icmp eq %struct.elf_link_hash_entry* %564, null
  br i1 %565, label %566, label %584

566:                                              ; preds = %563
  %567 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %568 = load i32*, i32** %6, align 8
  %569 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %570 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %571 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %570, i32 0, i32 1
  %572 = load i64, i64* %571, align 8
  %573 = load %struct.TYPE_37__**, %struct.TYPE_37__*** @ppc_elf_howto_table, align 8
  %574 = load i32, i32* %19, align 4
  %575 = zext i32 %574 to i64
  %576 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %573, i64 %575
  %577 = load %struct.TYPE_37__*, %struct.TYPE_37__** %576, align 8
  %578 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 4
  %580 = call i32 @_bfd_error_handler(i32 %567, i32* %568, %struct.TYPE_50__* %569, i64 %572, i32 %579)
  %581 = load i32, i32* @bfd_error_bad_value, align 4
  %582 = call i32 @bfd_set_error(i32 %581)
  %583 = load i8*, i8** @FALSE, align 8
  store i8* %583, i8** %5, align 8
  br label %1007

584:                                              ; preds = %563
  store i32 0, i32* %22, align 4
  %585 = load i32, i32* %19, align 4
  %586 = icmp eq i32 %585, 156
  br i1 %586, label %587, label %594

587:                                              ; preds = %584
  %588 = load i32*, i32** %6, align 8
  %589 = call %struct.TYPE_36__* @ppc_elf_tdata(i32* %588)
  %590 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %589, i32 0, i32 0
  store i32 1, i32* %590, align 4
  %591 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %592 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 8
  store i32 %593, i32* %22, align 4
  br label %594

594:                                              ; preds = %587, %584
  %595 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %596 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %595, i32 0, i32 1
  store i32 1, i32* %596, align 4
  %597 = load i32*, i32** %6, align 8
  %598 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %599 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %600 = load i32, i32* %22, align 4
  %601 = call i32 @update_plt_info(i32* %597, %struct.elf_link_hash_entry* %598, %struct.TYPE_50__* %599, i32 %600)
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %605, label %603

603:                                              ; preds = %594
  %604 = load i8*, i8** @FALSE, align 8
  store i8* %604, i8** %5, align 8
  br label %1007

605:                                              ; preds = %594
  br label %606

606:                                              ; preds = %605
  br label %1001

607:                                              ; preds = %208, %208, %208, %208, %208, %208, %208, %208, %208
  br label %1001

608:                                              ; preds = %208, %208, %208, %208
  %609 = load i32*, i32** %6, align 8
  %610 = call %struct.TYPE_36__* @ppc_elf_tdata(i32* %609)
  %611 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %610, i32 0, i32 1
  store i32 1, i32* %611, align 4
  br label %1001

612:                                              ; preds = %208, %208, %208, %208
  br label %1001

613:                                              ; preds = %208, %208, %208, %208
  br label %1001

614:                                              ; preds = %208, %208, %208, %208, %208, %208
  br label %1001

615:                                              ; preds = %208
  %616 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %617 = icmp ne %struct.elf_link_hash_entry* %616, null
  br i1 %617, label %618, label %638

618:                                              ; preds = %615
  %619 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %620 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %621 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %620, i32 0, i32 0
  %622 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %621, i32 0, i32 1
  %623 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %622, align 8
  %624 = icmp eq %struct.elf_link_hash_entry* %619, %623
  br i1 %624, label %625, label %638

625:                                              ; preds = %618
  %626 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %627 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %626, i32 0, i32 3
  %628 = load i8*, i8** %627, align 8
  %629 = load i8*, i8** @PLT_UNSET, align 8
  %630 = icmp eq i8* %628, %629
  br i1 %630, label %631, label %638

631:                                              ; preds = %625
  %632 = load i8*, i8** @PLT_OLD, align 8
  %633 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %634 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %633, i32 0, i32 3
  store i8* %632, i8** %634, align 8
  %635 = load i32*, i32** %6, align 8
  %636 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %637 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %636, i32 0, i32 2
  store i32* %635, i32** %637, align 8
  br label %638

638:                                              ; preds = %631, %625, %618, %615
  br label %1001

639:                                              ; preds = %208
  %640 = load i32*, i32** %6, align 8
  %641 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %642 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %643 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %644 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %643, i32 0, i32 1
  %645 = load i64, i64* %644, align 8
  %646 = call i32 @bfd_elf_gc_record_vtinherit(i32* %640, %struct.TYPE_50__* %641, %struct.elf_link_hash_entry* %642, i64 %645)
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %650, label %648

648:                                              ; preds = %639
  %649 = load i8*, i8** @FALSE, align 8
  store i8* %649, i8** %5, align 8
  br label %1007

650:                                              ; preds = %639
  br label %1001

651:                                              ; preds = %208
  %652 = load i32*, i32** %6, align 8
  %653 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %654 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %655 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %656 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %655, i32 0, i32 0
  %657 = load i32, i32* %656, align 8
  %658 = call i32 @bfd_elf_gc_record_vtentry(i32* %652, %struct.TYPE_50__* %653, %struct.elf_link_hash_entry* %654, i32 %657)
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %662, label %660

660:                                              ; preds = %651
  %661 = load i8*, i8** @FALSE, align 8
  store i8* %661, i8** %5, align 8
  br label %1007

662:                                              ; preds = %651
  br label %1001

663:                                              ; preds = %208, %208, %208, %208, %208
  %664 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %665 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %664, i32 0, i32 4
  %666 = load i32, i32* %665, align 8
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %674, label %668

668:                                              ; preds = %663
  %669 = load i32, i32* @DF_STATIC_TLS, align 4
  %670 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %671 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %670, i32 0, i32 3
  %672 = load i32, i32* %671, align 4
  %673 = or i32 %672, %669
  store i32 %673, i32* %671, align 4
  br label %674

674:                                              ; preds = %668, %663
  br label %781

675:                                              ; preds = %208, %208
  br label %781

676:                                              ; preds = %208
  %677 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %678 = icmp eq %struct.elf_link_hash_entry* %677, null
  br i1 %678, label %679, label %723

679:                                              ; preds = %676
  %680 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %681 = icmp ne %struct.TYPE_50__* %680, null
  br i1 %681, label %682, label %723

682:                                              ; preds = %679
  %683 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %684 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %683, i32 0, i32 0
  %685 = load i32, i32* %684, align 4
  %686 = load i32, i32* @SEC_CODE, align 4
  %687 = and i32 %685, %686
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %689, label %723

689:                                              ; preds = %682
  %690 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %691 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %690, i32 0, i32 0
  %692 = load i32, i32* %691, align 8
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %699, label %694

694:                                              ; preds = %689
  %695 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %696 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %695, i32 0, i32 2
  %697 = load i32, i32* %696, align 8
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %723

699:                                              ; preds = %694, %689
  %700 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %701 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %700, i32 0, i32 3
  %702 = load i8*, i8** %701, align 8
  %703 = load i8*, i8** @PLT_UNSET, align 8
  %704 = icmp eq i8* %702, %703
  br i1 %704, label %705, label %723

705:                                              ; preds = %699
  %706 = load i32*, i32** %6, align 8
  %707 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %708 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %707, i32 0, i32 1
  %709 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %710 = load i64, i64* %18, align 8
  %711 = call %struct.TYPE_50__* @bfd_section_from_r_symndx(i32* %706, i32* %708, %struct.TYPE_50__* %709, i64 %710)
  store %struct.TYPE_50__* %711, %struct.TYPE_50__** %23, align 8
  %712 = load %struct.TYPE_50__*, %struct.TYPE_50__** %23, align 8
  %713 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %714 = icmp eq %struct.TYPE_50__* %712, %713
  br i1 %714, label %715, label %722

715:                                              ; preds = %705
  %716 = load i8*, i8** @PLT_OLD, align 8
  %717 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %718 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %717, i32 0, i32 3
  store i8* %716, i8** %718, align 8
  %719 = load i32*, i32** %6, align 8
  %720 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %721 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %720, i32 0, i32 2
  store i32* %719, i32** %721, align 8
  br label %722

722:                                              ; preds = %715, %705
  br label %723

723:                                              ; preds = %722, %699, %694, %682, %679, %676
  %724 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %725 = icmp eq %struct.elf_link_hash_entry* %724, null
  br i1 %725, label %733, label %726

726:                                              ; preds = %723
  %727 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %728 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %729 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %728, i32 0, i32 0
  %730 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %729, i32 0, i32 1
  %731 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %730, align 8
  %732 = icmp eq %struct.elf_link_hash_entry* %727, %731
  br i1 %732, label %733, label %734

733:                                              ; preds = %726, %723
  br label %1001

734:                                              ; preds = %726
  br label %762

735:                                              ; preds = %208, %208, %208, %208
  %736 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %737 = icmp eq %struct.elf_link_hash_entry* %736, null
  br i1 %737, label %738, label %739

738:                                              ; preds = %735
  br label %1001

739:                                              ; preds = %735
  %740 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %741 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %742 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %741, i32 0, i32 0
  %743 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %742, i32 0, i32 1
  %744 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %743, align 8
  %745 = icmp eq %struct.elf_link_hash_entry* %740, %744
  br i1 %745, label %746, label %760

746:                                              ; preds = %739
  %747 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %748 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %747, i32 0, i32 3
  %749 = load i8*, i8** %748, align 8
  %750 = load i8*, i8** @PLT_UNSET, align 8
  %751 = icmp eq i8* %749, %750
  br i1 %751, label %752, label %759

752:                                              ; preds = %746
  %753 = load i8*, i8** @PLT_OLD, align 8
  %754 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %755 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %754, i32 0, i32 3
  store i8* %753, i8** %755, align 8
  %756 = load i32*, i32** %6, align 8
  %757 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %758 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %757, i32 0, i32 2
  store i32* %756, i32** %758, align 8
  br label %759

759:                                              ; preds = %752, %746
  br label %1001

760:                                              ; preds = %739
  br label %761

761:                                              ; preds = %208, %208, %208, %208, %208, %208, %208, %208, %208, %208, %208, %760
  br label %762

762:                                              ; preds = %761, %734
  %763 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %764 = icmp ne %struct.elf_link_hash_entry* %763, null
  br i1 %764, label %765, label %780

765:                                              ; preds = %762
  %766 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %767 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %766, i32 0, i32 0
  %768 = load i32, i32* %767, align 8
  %769 = icmp ne i32 %768, 0
  br i1 %769, label %780, label %770

770:                                              ; preds = %765
  %771 = load i32*, i32** %6, align 8
  %772 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %773 = call i32 @update_plt_info(i32* %771, %struct.elf_link_hash_entry* %772, %struct.TYPE_50__* null, i32 0)
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %777, label %775

775:                                              ; preds = %770
  %776 = load i8*, i8** @FALSE, align 8
  store i8* %776, i8** %5, align 8
  br label %1007

777:                                              ; preds = %770
  %778 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %779 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %778, i32 0, i32 0
  store i32 1, i32* %779, align 8
  br label %780

780:                                              ; preds = %777, %765, %762
  br label %781

781:                                              ; preds = %780, %675, %674
  %782 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %783 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %782, i32 0, i32 0
  %784 = load i32, i32* %783, align 8
  %785 = icmp ne i32 %784, 0
  br i1 %785, label %786, label %811

786:                                              ; preds = %781
  %787 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %788 = load i32, i32* %19, align 4
  %789 = call i32 @must_be_dyn_reloc(%struct.bfd_link_info* %787, i32 %788)
  %790 = icmp ne i32 %789, 0
  br i1 %790, label %834, label %791

791:                                              ; preds = %786
  %792 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %793 = icmp ne %struct.elf_link_hash_entry* %792, null
  br i1 %793, label %794, label %811

794:                                              ; preds = %791
  %795 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %796 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %795, i32 0, i32 1
  %797 = load i32, i32* %796, align 4
  %798 = icmp ne i32 %797, 0
  br i1 %798, label %799, label %834

799:                                              ; preds = %794
  %800 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %801 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %800, i32 0, i32 2
  %802 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %801, i32 0, i32 0
  %803 = load i64, i64* %802, align 8
  %804 = load i64, i64* @bfd_link_hash_defweak, align 8
  %805 = icmp eq i64 %803, %804
  br i1 %805, label %834, label %806

806:                                              ; preds = %799
  %807 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %808 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %807, i32 0, i32 3
  %809 = load i32, i32* %808, align 8
  %810 = icmp ne i32 %809, 0
  br i1 %810, label %811, label %834

811:                                              ; preds = %806, %791, %781
  %812 = load i32, i32* @ELIMINATE_COPY_RELOCS, align 4
  %813 = icmp ne i32 %812, 0
  br i1 %813, label %814, label %1000

814:                                              ; preds = %811
  %815 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %816 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %815, i32 0, i32 0
  %817 = load i32, i32* %816, align 8
  %818 = icmp ne i32 %817, 0
  br i1 %818, label %1000, label %819

819:                                              ; preds = %814
  %820 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %821 = icmp ne %struct.elf_link_hash_entry* %820, null
  br i1 %821, label %822, label %1000

822:                                              ; preds = %819
  %823 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %824 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %823, i32 0, i32 2
  %825 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %824, i32 0, i32 0
  %826 = load i64, i64* %825, align 8
  %827 = load i64, i64* @bfd_link_hash_defweak, align 8
  %828 = icmp eq i64 %826, %827
  br i1 %828, label %834, label %829

829:                                              ; preds = %822
  %830 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %831 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %830, i32 0, i32 3
  %832 = load i32, i32* %831, align 8
  %833 = icmp ne i32 %832, 0
  br i1 %833, label %1000, label %834

834:                                              ; preds = %829, %822, %806, %799, %794, %786
  %835 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %836 = icmp eq %struct.TYPE_50__* %835, null
  br i1 %836, label %837, label %925

837:                                              ; preds = %834
  %838 = load i32*, i32** %6, align 8
  %839 = load i32*, i32** %6, align 8
  %840 = call %struct.TYPE_44__* @elf_elfheader(i32* %839)
  %841 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %840, i32 0, i32 0
  %842 = load i32, i32* %841, align 4
  %843 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %844 = call %struct.TYPE_42__* @elf_section_data(%struct.TYPE_50__* %843)
  %845 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %844, i32 0, i32 2
  %846 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %845, i32 0, i32 0
  %847 = load i32, i32* %846, align 8
  %848 = call i8* @bfd_elf_string_from_elf_section(i32* %838, i32 %842, i32 %847)
  store i8* %848, i8** %26, align 8
  %849 = load i8*, i8** %26, align 8
  %850 = icmp eq i8* %849, null
  br i1 %850, label %851, label %853

851:                                              ; preds = %837
  %852 = load i8*, i8** @FALSE, align 8
  store i8* %852, i8** %5, align 8
  br label %1007

853:                                              ; preds = %837
  %854 = load i8*, i8** %26, align 8
  %855 = call i32 @CONST_STRNEQ(i8* %854, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %856 = icmp ne i32 %855, 0
  br i1 %856, label %857, label %865

857:                                              ; preds = %853
  %858 = load i32*, i32** %6, align 8
  %859 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %860 = call i8* @bfd_get_section_name(i32* %858, %struct.TYPE_50__* %859)
  %861 = load i8*, i8** %26, align 8
  %862 = getelementptr inbounds i8, i8* %861, i64 5
  %863 = call i64 @strcmp(i8* %860, i8* %862)
  %864 = icmp eq i64 %863, 0
  br label %865

865:                                              ; preds = %857, %853
  %866 = phi i1 [ false, %853 ], [ %864, %857 ]
  %867 = zext i1 %866 to i32
  %868 = call i32 @BFD_ASSERT(i32 %867)
  %869 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %870 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %869, i32 0, i32 0
  %871 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %870, i32 0, i32 0
  %872 = load i32*, i32** %871, align 8
  %873 = icmp eq i32* %872, null
  br i1 %873, label %874, label %879

874:                                              ; preds = %865
  %875 = load i32*, i32** %6, align 8
  %876 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %877 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %876, i32 0, i32 0
  %878 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %877, i32 0, i32 0
  store i32* %875, i32** %878, align 8
  br label %879

879:                                              ; preds = %874, %865
  %880 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %881 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %880, i32 0, i32 0
  %882 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %881, i32 0, i32 0
  %883 = load i32*, i32** %882, align 8
  %884 = load i8*, i8** %26, align 8
  %885 = call %struct.TYPE_50__* @bfd_get_section_by_name(i32* %883, i8* %884)
  store %struct.TYPE_50__* %885, %struct.TYPE_50__** %16, align 8
  %886 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %887 = icmp eq %struct.TYPE_50__* %886, null
  br i1 %887, label %888, label %920

888:                                              ; preds = %879
  %889 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %890 = load i32, i32* @SEC_READONLY, align 4
  %891 = or i32 %889, %890
  %892 = load i32, i32* @SEC_IN_MEMORY, align 4
  %893 = or i32 %891, %892
  %894 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %895 = or i32 %893, %894
  %896 = load i32, i32* @SEC_ALLOC, align 4
  %897 = or i32 %895, %896
  %898 = load i32, i32* @SEC_LOAD, align 4
  %899 = or i32 %897, %898
  store i32 %899, i32* %27, align 4
  %900 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %901 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %900, i32 0, i32 0
  %902 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %901, i32 0, i32 0
  %903 = load i32*, i32** %902, align 8
  %904 = load i8*, i8** %26, align 8
  %905 = load i32, i32* %27, align 4
  %906 = call %struct.TYPE_50__* @bfd_make_section_with_flags(i32* %903, i8* %904, i32 %905)
  store %struct.TYPE_50__* %906, %struct.TYPE_50__** %16, align 8
  %907 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %908 = icmp eq %struct.TYPE_50__* %907, null
  br i1 %908, label %917, label %909

909:                                              ; preds = %888
  %910 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %911 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %910, i32 0, i32 0
  %912 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %911, i32 0, i32 0
  %913 = load i32*, i32** %912, align 8
  %914 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %915 = call i32 @bfd_set_section_alignment(i32* %913, %struct.TYPE_50__* %914, i32 2)
  %916 = icmp ne i32 %915, 0
  br i1 %916, label %919, label %917

917:                                              ; preds = %909, %888
  %918 = load i8*, i8** @FALSE, align 8
  store i8* %918, i8** %5, align 8
  br label %1007

919:                                              ; preds = %909
  br label %920

920:                                              ; preds = %919, %879
  %921 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %922 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %923 = call %struct.TYPE_42__* @elf_section_data(%struct.TYPE_50__* %922)
  %924 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %923, i32 0, i32 1
  store %struct.TYPE_50__* %921, %struct.TYPE_50__** %924, align 8
  br label %925

925:                                              ; preds = %920, %834
  %926 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %927 = icmp ne %struct.elf_link_hash_entry* %926, null
  br i1 %927, label %928, label %932

928:                                              ; preds = %925
  %929 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %930 = call %struct.TYPE_38__* @ppc_elf_hash_entry(%struct.elf_link_hash_entry* %929)
  %931 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %930, i32 0, i32 1
  store %struct.ppc_elf_dyn_relocs** %931, %struct.ppc_elf_dyn_relocs*** %25, align 8
  br label %950

932:                                              ; preds = %925
  %933 = load i32*, i32** %6, align 8
  %934 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %935 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %934, i32 0, i32 1
  %936 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %937 = load i64, i64* %18, align 8
  %938 = call %struct.TYPE_50__* @bfd_section_from_r_symndx(i32* %933, i32* %935, %struct.TYPE_50__* %936, i64 %937)
  store %struct.TYPE_50__* %938, %struct.TYPE_50__** %28, align 8
  %939 = load %struct.TYPE_50__*, %struct.TYPE_50__** %28, align 8
  %940 = icmp eq %struct.TYPE_50__* %939, null
  br i1 %940, label %941, label %943

941:                                              ; preds = %932
  %942 = load i8*, i8** @FALSE, align 8
  store i8* %942, i8** %5, align 8
  br label %1007

943:                                              ; preds = %932
  %944 = load %struct.TYPE_50__*, %struct.TYPE_50__** %28, align 8
  %945 = call %struct.TYPE_42__* @elf_section_data(%struct.TYPE_50__* %944)
  %946 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %945, i32 0, i32 0
  %947 = bitcast i32* %946 to i8*
  store i8* %947, i8** %29, align 8
  %948 = load i8*, i8** %29, align 8
  %949 = bitcast i8* %948 to %struct.ppc_elf_dyn_relocs**
  store %struct.ppc_elf_dyn_relocs** %949, %struct.ppc_elf_dyn_relocs*** %25, align 8
  br label %950

950:                                              ; preds = %943, %928
  %951 = load %struct.ppc_elf_dyn_relocs**, %struct.ppc_elf_dyn_relocs*** %25, align 8
  %952 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %951, align 8
  store %struct.ppc_elf_dyn_relocs* %952, %struct.ppc_elf_dyn_relocs** %24, align 8
  %953 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %24, align 8
  %954 = icmp eq %struct.ppc_elf_dyn_relocs* %953, null
  br i1 %954, label %961, label %955

955:                                              ; preds = %950
  %956 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %24, align 8
  %957 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %956, i32 0, i32 2
  %958 = load %struct.TYPE_50__*, %struct.TYPE_50__** %957, align 8
  %959 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %960 = icmp ne %struct.TYPE_50__* %958, %959
  br i1 %960, label %961, label %985

961:                                              ; preds = %955, %950
  %962 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %963 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %962, i32 0, i32 0
  %964 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %963, i32 0, i32 0
  %965 = load i32*, i32** %964, align 8
  %966 = call %struct.ppc_elf_dyn_relocs* @bfd_alloc(i32* %965, i32 24)
  store %struct.ppc_elf_dyn_relocs* %966, %struct.ppc_elf_dyn_relocs** %24, align 8
  %967 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %24, align 8
  %968 = icmp eq %struct.ppc_elf_dyn_relocs* %967, null
  br i1 %968, label %969, label %971

969:                                              ; preds = %961
  %970 = load i8*, i8** @FALSE, align 8
  store i8* %970, i8** %5, align 8
  br label %1007

971:                                              ; preds = %961
  %972 = load %struct.ppc_elf_dyn_relocs**, %struct.ppc_elf_dyn_relocs*** %25, align 8
  %973 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %972, align 8
  %974 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %24, align 8
  %975 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %974, i32 0, i32 3
  store %struct.ppc_elf_dyn_relocs* %973, %struct.ppc_elf_dyn_relocs** %975, align 8
  %976 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %24, align 8
  %977 = load %struct.ppc_elf_dyn_relocs**, %struct.ppc_elf_dyn_relocs*** %25, align 8
  store %struct.ppc_elf_dyn_relocs* %976, %struct.ppc_elf_dyn_relocs** %977, align 8
  %978 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %979 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %24, align 8
  %980 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %979, i32 0, i32 2
  store %struct.TYPE_50__* %978, %struct.TYPE_50__** %980, align 8
  %981 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %24, align 8
  %982 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %981, i32 0, i32 0
  store i32 0, i32* %982, align 8
  %983 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %24, align 8
  %984 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %983, i32 0, i32 1
  store i32 0, i32* %984, align 4
  br label %985

985:                                              ; preds = %971, %955
  %986 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %24, align 8
  %987 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %986, i32 0, i32 0
  %988 = load i32, i32* %987, align 8
  %989 = add nsw i32 %988, 1
  store i32 %989, i32* %987, align 8
  %990 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %991 = load i32, i32* %19, align 4
  %992 = call i32 @must_be_dyn_reloc(%struct.bfd_link_info* %990, i32 %991)
  %993 = icmp ne i32 %992, 0
  br i1 %993, label %999, label %994

994:                                              ; preds = %985
  %995 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %24, align 8
  %996 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %995, i32 0, i32 1
  %997 = load i32, i32* %996, align 4
  %998 = add nsw i32 %997, 1
  store i32 %998, i32* %996, align 4
  br label %999

999:                                              ; preds = %994, %985
  br label %1000

1000:                                             ; preds = %999, %829, %819, %814, %811
  br label %1001

1001:                                             ; preds = %208, %1000, %759, %738, %733, %662, %650, %638, %614, %613, %612, %608, %607, %606, %562, %543, %484, %443, %402, %347, %293, %210
  br label %1002

1002:                                             ; preds = %1001
  %1003 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %1004 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1003, i32 1
  store %struct.TYPE_52__* %1004, %struct.TYPE_52__** %13, align 8
  br label %75

1005:                                             ; preds = %75
  %1006 = load i8*, i8** @TRUE, align 8
  store i8* %1006, i8** %5, align 8
  br label %1007

1007:                                             ; preds = %1005, %969, %941, %917, %851, %775, %660, %648, %603, %566, %549, %529, %511, %490, %470, %449, %429, %408, %388, %376, %353, %333, %321, %299, %290, %265, %159, %43, %34
  %1008 = load i8*, i8** %5, align 8
  ret i8* %1008
}

declare dso_local i32 @ppc_elf_howto_init(...) #1

declare dso_local %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.elf_link_hash_entry* @elf_link_hash_lookup(%struct.TYPE_43__*, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_40__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

declare dso_local %struct.TYPE_50__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i64 @ELF32_R_SYM(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ppc_elf_create_got(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local %struct.TYPE_38__* @ppc_elf_hash_entry(%struct.elf_link_hash_entry*) #1

declare dso_local i32 @update_local_sym_info(i32*, %struct.TYPE_51__*, i64, i32) #1

declare dso_local i32 @bad_shared_reloc(i32*, i32) #1

declare dso_local i32 @ppc_elf_create_linker_section(i32*, %struct.bfd_link_info*, i32, %struct.TYPE_39__*) #1

declare dso_local i32 @elf_create_pointer_linker_section(i32*, %struct.TYPE_39__*, %struct.elf_link_hash_entry*, %struct.TYPE_52__*) #1

declare dso_local i32 @create_sdata_sym(%struct.ppc_elf_link_hash_table*, %struct.TYPE_39__*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*, %struct.TYPE_50__*, i64, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.TYPE_36__* @ppc_elf_tdata(i32*) #1

declare dso_local i32 @update_plt_info(i32*, %struct.elf_link_hash_entry*, %struct.TYPE_50__*, i32) #1

declare dso_local i32 @bfd_elf_gc_record_vtinherit(i32*, %struct.TYPE_50__*, %struct.elf_link_hash_entry*, i64) #1

declare dso_local i32 @bfd_elf_gc_record_vtentry(i32*, %struct.TYPE_50__*, %struct.elf_link_hash_entry*, i32) #1

declare dso_local %struct.TYPE_50__* @bfd_section_from_r_symndx(i32*, i32*, %struct.TYPE_50__*, i64) #1

declare dso_local i32 @must_be_dyn_reloc(%struct.bfd_link_info*, i32) #1

declare dso_local i8* @bfd_elf_string_from_elf_section(i32*, i32, i32) #1

declare dso_local %struct.TYPE_44__* @elf_elfheader(i32*) #1

declare dso_local %struct.TYPE_42__* @elf_section_data(%struct.TYPE_50__*) #1

declare dso_local i32 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i8* @bfd_get_section_name(i32*, %struct.TYPE_50__*) #1

declare dso_local %struct.TYPE_50__* @bfd_make_section_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, %struct.TYPE_50__*, i32) #1

declare dso_local %struct.ppc_elf_dyn_relocs* @bfd_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
