; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-i386.c_elf_i386_finish_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-i386.c_elf_i386_finish_dynamic_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.elf_link_hash_entry = type { i32, i32, %struct.TYPE_28__, i64, %struct.TYPE_43__, i32, i32, %struct.TYPE_34__ }
%struct.TYPE_28__ = type { i64, %struct.TYPE_27__, %struct.TYPE_48__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_48__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i32, %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i32, %struct.TYPE_45__* }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_38__ = type { i32, i64 }
%struct.elf_i386_link_hash_table = type { %struct.TYPE_29__, i64, %struct.TYPE_26__*, %struct.TYPE_44__*, %struct.TYPE_42__*, %struct.TYPE_30__*, %struct.TYPE_32__*, %struct.TYPE_33__*, %struct.TYPE_35__* }
%struct.TYPE_29__ = type { %struct.elf_link_hash_entry*, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32* }
%struct.TYPE_44__ = type { i32, i32* }
%struct.TYPE_42__ = type { i32, i32, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_35__ = type { i32* }
%struct.TYPE_39__ = type { i32, i8* }
%struct.TYPE_40__ = type { i32 }

@PLT_ENTRY_SIZE = common dso_local global i32 0, align 4
@elf_i386_plt_entry = common dso_local global i32 0, align 4
@PLTRESOLVE_RELOCS_SHLIB = common dso_local global i32 0, align 4
@PLTRESOLVE_RELOCS = common dso_local global i32 0, align 4
@PLT_NON_JUMP_SLOT_RELOCS = common dso_local global i32 0, align 4
@R_386_32 = common dso_local global i32 0, align 4
@elf_i386_pic_plt_entry = common dso_local global i32 0, align 4
@R_386_JUMP_SLOT = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i32 0, align 4
@GOT_TLS_IE = common dso_local global i32 0, align 4
@R_386_RELATIVE = common dso_local global i32 0, align 4
@R_386_GLOB_DAT = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@R_386_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"_DYNAMIC\00", align 1
@SHN_ABS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, %struct.elf_link_hash_entry*, %struct.TYPE_38__*)* @elf_i386_finish_dynamic_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_i386_finish_dynamic_symbol(i32* %0, %struct.bfd_link_info* %1, %struct.elf_link_hash_entry* %2, %struct.TYPE_38__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca %struct.elf_link_hash_entry*, align 8
  %8 = alloca %struct.TYPE_38__*, align 8
  %9 = alloca %struct.elf_i386_link_hash_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_39__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_39__, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_39__, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store %struct.elf_link_hash_entry* %2, %struct.elf_link_hash_entry** %7, align 8
  store %struct.TYPE_38__* %3, %struct.TYPE_38__** %8, align 8
  %21 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %22 = call %struct.elf_i386_link_hash_table* @elf_i386_hash_table(%struct.bfd_link_info* %21)
  store %struct.elf_i386_link_hash_table* %22, %struct.elf_i386_link_hash_table** %9, align 8
  %23 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %24 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %350

28:                                               ; preds = %4
  %29 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %30 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %48, label %33

33:                                               ; preds = %28
  %34 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %35 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %34, i32 0, i32 7
  %36 = load %struct.TYPE_33__*, %struct.TYPE_33__** %35, align 8
  %37 = icmp eq %struct.TYPE_33__* %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %40 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %39, i32 0, i32 6
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** %40, align 8
  %42 = icmp eq %struct.TYPE_32__* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %45 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %44, i32 0, i32 5
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %45, align 8
  %47 = icmp eq %struct.TYPE_30__* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43, %38, %33, %28
  %49 = call i32 (...) @abort() #3
  unreachable

50:                                               ; preds = %43
  %51 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %52 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PLT_ENTRY_SIZE, align 4
  %56 = sdiv i32 %54, %55
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 3
  %60 = mul nsw i32 %59, 4
  store i32 %60, i32* %11, align 4
  %61 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %62 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %205, label %65

65:                                               ; preds = %50
  %66 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %67 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %66, i32 0, i32 7
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %72 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %70, %74
  %76 = load i32, i32* @elf_i386_plt_entry, align 4
  %77 = load i32, i32* @PLT_ENTRY_SIZE, align 4
  %78 = call i32 @memcpy(i32 %75, i32 %76, i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %81 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %80, i32 0, i32 6
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %88 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %87, i32 0, i32 6
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %86, %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %92, %93
  %95 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %96 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %95, i32 0, i32 7
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %101 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %99, %103
  %105 = add nsw i32 %104, 2
  %106 = call i32 @bfd_put_32(i32* %79, i32 %94, i32 %105)
  %107 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %108 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %204

111:                                              ; preds = %65
  %112 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %113 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @PLT_ENTRY_SIZE, align 4
  %117 = sub nsw i32 %115, %116
  %118 = load i32, i32* @PLT_ENTRY_SIZE, align 4
  %119 = sdiv i32 %117, %118
  store i32 %119, i32* %14, align 4
  %120 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %121 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %111
  %125 = load i32, i32* @PLTRESOLVE_RELOCS_SHLIB, align 4
  store i32 %125, i32* %15, align 4
  br label %128

126:                                              ; preds = %111
  %127 = load i32, i32* @PLTRESOLVE_RELOCS, align 4
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @PLT_NON_JUMP_SLOT_RELOCS, align 4
  %132 = mul nsw i32 %130, %131
  %133 = add nsw i32 %129, %132
  store i32 %133, i32* %16, align 4
  %134 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %135 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %134, i32 0, i32 8
  %136 = load %struct.TYPE_35__*, %struct.TYPE_35__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 4
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32* %142, i32** %13, align 8
  %143 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %144 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %143, i32 0, i32 7
  %145 = load %struct.TYPE_33__*, %struct.TYPE_33__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_37__*, %struct.TYPE_37__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %151 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %150, i32 0, i32 7
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %149, %154
  %156 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %157 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %155, %159
  %161 = add nsw i32 %160, 2
  %162 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %12, i32 0, i32 0
  store i32 %161, i32* %162, align 8
  %163 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %164 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 0
  %166 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %165, align 8
  %167 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @R_386_32, align 4
  %170 = call i8* @ELF32_R_INFO(i32 %168, i32 %169)
  %171 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %12, i32 0, i32 1
  store i8* %170, i8** %171, align 8
  %172 = load i32*, i32** %5, align 8
  %173 = load i32*, i32** %13, align 8
  %174 = call i32 @bfd_elf32_swap_reloc_out(i32* %172, %struct.TYPE_39__* %12, i32* %173)
  %175 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %176 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %175, i32 0, i32 6
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %183 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %182, i32 0, i32 6
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %181, %186
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %187, %188
  %190 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %12, i32 0, i32 0
  store i32 %189, i32* %190, align 8
  %191 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %192 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_36__*, %struct.TYPE_36__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @R_386_32, align 4
  %198 = call i8* @ELF32_R_INFO(i32 %196, i32 %197)
  %199 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %12, i32 0, i32 1
  store i8* %198, i8** %199, align 8
  %200 = load i32*, i32** %5, align 8
  %201 = load i32*, i32** %13, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 4
  %203 = call i32 @bfd_elf32_swap_reloc_out(i32* %200, %struct.TYPE_39__* %12, i32* %202)
  br label %204

204:                                              ; preds = %128, %65
  br label %233

205:                                              ; preds = %50
  %206 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %207 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %206, i32 0, i32 7
  %208 = load %struct.TYPE_33__*, %struct.TYPE_33__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %212 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %211, i32 0, i32 7
  %213 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %210, %214
  %216 = load i32, i32* @elf_i386_pic_plt_entry, align 4
  %217 = load i32, i32* @PLT_ENTRY_SIZE, align 4
  %218 = call i32 @memcpy(i32 %215, i32 %216, i32 %217)
  %219 = load i32*, i32** %5, align 8
  %220 = load i32, i32* %11, align 4
  %221 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %222 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %221, i32 0, i32 7
  %223 = load %struct.TYPE_33__*, %struct.TYPE_33__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %227 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %226, i32 0, i32 7
  %228 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %225, %229
  %231 = add nsw i32 %230, 2
  %232 = call i32 @bfd_put_32(i32* %219, i32 %220, i32 %231)
  br label %233

233:                                              ; preds = %205, %204
  %234 = load i32*, i32** %5, align 8
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = mul i64 %236, 4
  %238 = trunc i64 %237 to i32
  %239 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %240 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %239, i32 0, i32 7
  %241 = load %struct.TYPE_33__*, %struct.TYPE_33__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %245 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %244, i32 0, i32 7
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %243, %247
  %249 = add nsw i32 %248, 7
  %250 = call i32 @bfd_put_32(i32* %234, i32 %238, i32 %249)
  %251 = load i32*, i32** %5, align 8
  %252 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %253 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %252, i32 0, i32 7
  %254 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @PLT_ENTRY_SIZE, align 4
  %257 = add nsw i32 %255, %256
  %258 = sub nsw i32 0, %257
  %259 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %260 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %259, i32 0, i32 7
  %261 = load %struct.TYPE_33__*, %struct.TYPE_33__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %265 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %264, i32 0, i32 7
  %266 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %263, %267
  %269 = add nsw i32 %268, 12
  %270 = call i32 @bfd_put_32(i32* %251, i32 %258, i32 %269)
  %271 = load i32*, i32** %5, align 8
  %272 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %273 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %272, i32 0, i32 7
  %274 = load %struct.TYPE_33__*, %struct.TYPE_33__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_37__*, %struct.TYPE_37__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %280 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %279, i32 0, i32 7
  %281 = load %struct.TYPE_33__*, %struct.TYPE_33__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %278, %283
  %285 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %286 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %285, i32 0, i32 7
  %287 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %284, %288
  %290 = add nsw i32 %289, 6
  %291 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %292 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %291, i32 0, i32 6
  %293 = load %struct.TYPE_32__*, %struct.TYPE_32__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %11, align 4
  %297 = add nsw i32 %295, %296
  %298 = call i32 @bfd_put_32(i32* %271, i32 %290, i32 %297)
  %299 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %300 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %299, i32 0, i32 6
  %301 = load %struct.TYPE_32__*, %struct.TYPE_32__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %301, i32 0, i32 2
  %303 = load %struct.TYPE_31__*, %struct.TYPE_31__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %307 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %306, i32 0, i32 6
  %308 = load %struct.TYPE_32__*, %struct.TYPE_32__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = add nsw i32 %305, %310
  %312 = load i32, i32* %11, align 4
  %313 = add nsw i32 %311, %312
  %314 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %12, i32 0, i32 0
  store i32 %313, i32* %314, align 8
  %315 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %316 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @R_386_JUMP_SLOT, align 4
  %319 = call i8* @ELF32_R_INFO(i32 %317, i32 %318)
  %320 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %12, i32 0, i32 1
  store i8* %319, i8** %320, align 8
  %321 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %322 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %321, i32 0, i32 5
  %323 = load %struct.TYPE_30__*, %struct.TYPE_30__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %10, align 4
  %327 = sext i32 %326 to i64
  %328 = mul i64 %327, 4
  %329 = getelementptr inbounds i32, i32* %325, i64 %328
  store i32* %329, i32** %13, align 8
  %330 = load i32*, i32** %5, align 8
  %331 = load i32*, i32** %13, align 8
  %332 = call i32 @bfd_elf32_swap_reloc_out(i32* %330, %struct.TYPE_39__* %12, i32* %331)
  %333 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %334 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 8
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %349, label %337

337:                                              ; preds = %233
  %338 = load i32, i32* @SHN_UNDEF, align 4
  %339 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %339, i32 0, i32 0
  store i32 %338, i32* %340, align 8
  %341 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %342 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %348, label %345

345:                                              ; preds = %337
  %346 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %346, i32 0, i32 1
  store i64 0, i64* %347, align 8
  br label %348

348:                                              ; preds = %345, %337
  br label %349

349:                                              ; preds = %348, %233
  br label %350

350:                                              ; preds = %349, %4
  %351 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %352 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %351, i32 0, i32 4
  %353 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, -1
  br i1 %355, label %356, label %471

356:                                              ; preds = %350
  %357 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %358 = call %struct.TYPE_40__* @elf_i386_hash_entry(%struct.elf_link_hash_entry* %357)
  %359 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @GOT_TLS_GD_ANY_P(i32 %360)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %471, label %363

363:                                              ; preds = %356
  %364 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %365 = call %struct.TYPE_40__* @elf_i386_hash_entry(%struct.elf_link_hash_entry* %364)
  %366 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @GOT_TLS_IE, align 4
  %369 = and i32 %367, %368
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %471

371:                                              ; preds = %363
  %372 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %373 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %372, i32 0, i32 4
  %374 = load %struct.TYPE_42__*, %struct.TYPE_42__** %373, align 8
  %375 = icmp eq %struct.TYPE_42__* %374, null
  br i1 %375, label %381, label %376

376:                                              ; preds = %371
  %377 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %378 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %377, i32 0, i32 3
  %379 = load %struct.TYPE_44__*, %struct.TYPE_44__** %378, align 8
  %380 = icmp eq %struct.TYPE_44__* %379, null
  br i1 %380, label %381, label %383

381:                                              ; preds = %376, %371
  %382 = call i32 (...) @abort() #3
  unreachable

383:                                              ; preds = %376
  %384 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %385 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %384, i32 0, i32 4
  %386 = load %struct.TYPE_42__*, %struct.TYPE_42__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %386, i32 0, i32 2
  %388 = load %struct.TYPE_41__*, %struct.TYPE_41__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %392 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %391, i32 0, i32 4
  %393 = load %struct.TYPE_42__*, %struct.TYPE_42__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = add nsw i32 %390, %395
  %397 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %398 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %397, i32 0, i32 4
  %399 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = and i32 %400, -2
  %402 = add nsw i32 %396, %401
  %403 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %17, i32 0, i32 0
  store i32 %402, i32* %403, align 8
  %404 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %405 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %425

408:                                              ; preds = %383
  %409 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %410 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %411 = call i64 @SYMBOL_REFERENCES_LOCAL(%struct.bfd_link_info* %409, %struct.elf_link_hash_entry* %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %425

413:                                              ; preds = %408
  %414 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %415 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %414, i32 0, i32 4
  %416 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = and i32 %417, 1
  %419 = icmp ne i32 %418, 0
  %420 = zext i1 %419 to i32
  %421 = call i32 @BFD_ASSERT(i32 %420)
  %422 = load i32, i32* @R_386_RELATIVE, align 4
  %423 = call i8* @ELF32_R_INFO(i32 0, i32 %422)
  %424 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %17, i32 0, i32 1
  store i8* %423, i8** %424, align 8
  br label %452

425:                                              ; preds = %408, %383
  %426 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %427 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %426, i32 0, i32 4
  %428 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = and i32 %429, 1
  %431 = icmp eq i32 %430, 0
  %432 = zext i1 %431 to i32
  %433 = call i32 @BFD_ASSERT(i32 %432)
  %434 = load i32*, i32** %5, align 8
  %435 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %436 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %435, i32 0, i32 4
  %437 = load %struct.TYPE_42__*, %struct.TYPE_42__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %441 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %440, i32 0, i32 4
  %442 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = add nsw i32 %439, %443
  %445 = call i32 @bfd_put_32(i32* %434, i32 0, i32 %444)
  %446 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %447 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* @R_386_GLOB_DAT, align 4
  %450 = call i8* @ELF32_R_INFO(i32 %448, i32 %449)
  %451 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %17, i32 0, i32 1
  store i8* %450, i8** %451, align 8
  br label %452

452:                                              ; preds = %425, %413
  %453 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %454 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %453, i32 0, i32 3
  %455 = load %struct.TYPE_44__*, %struct.TYPE_44__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %455, i32 0, i32 1
  %457 = load i32*, i32** %456, align 8
  store i32* %457, i32** %18, align 8
  %458 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %459 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %458, i32 0, i32 3
  %460 = load %struct.TYPE_44__*, %struct.TYPE_44__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %461, align 8
  %464 = sext i32 %462 to i64
  %465 = mul i64 %464, 4
  %466 = load i32*, i32** %18, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 %465
  store i32* %467, i32** %18, align 8
  %468 = load i32*, i32** %5, align 8
  %469 = load i32*, i32** %18, align 8
  %470 = call i32 @bfd_elf32_swap_reloc_out(i32* %468, %struct.TYPE_39__* %17, i32* %469)
  br label %471

471:                                              ; preds = %452, %363, %356, %350
  %472 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %473 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %472, i32 0, i32 3
  %474 = load i64, i64* %473, align 8
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %554

476:                                              ; preds = %471
  %477 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %478 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = icmp eq i32 %479, -1
  br i1 %480, label %500, label %481

481:                                              ; preds = %476
  %482 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %483 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %483, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = load i64, i64* @bfd_link_hash_defined, align 8
  %487 = icmp ne i64 %485, %486
  br i1 %487, label %488, label %495

488:                                              ; preds = %481
  %489 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %490 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %489, i32 0, i32 2
  %491 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %490, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* @bfd_link_hash_defweak, align 8
  %494 = icmp ne i64 %492, %493
  br i1 %494, label %500, label %495

495:                                              ; preds = %488, %481
  %496 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %497 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %496, i32 0, i32 2
  %498 = load %struct.TYPE_26__*, %struct.TYPE_26__** %497, align 8
  %499 = icmp eq %struct.TYPE_26__* %498, null
  br i1 %499, label %500, label %502

500:                                              ; preds = %495, %488, %476
  %501 = call i32 (...) @abort() #3
  unreachable

502:                                              ; preds = %495
  %503 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %504 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %503, i32 0, i32 2
  %505 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %510 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %509, i32 0, i32 2
  %511 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %510, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %512, i32 0, i32 1
  %514 = load %struct.TYPE_46__*, %struct.TYPE_46__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %514, i32 0, i32 1
  %516 = load %struct.TYPE_45__*, %struct.TYPE_45__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 4
  %519 = add nsw i32 %508, %518
  %520 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %521 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %520, i32 0, i32 2
  %522 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %521, i32 0, i32 2
  %523 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %523, i32 0, i32 1
  %525 = load %struct.TYPE_46__*, %struct.TYPE_46__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = add nsw i32 %519, %527
  %529 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %19, i32 0, i32 0
  store i32 %528, i32* %529, align 8
  %530 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %531 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = load i32, i32* @R_386_COPY, align 4
  %534 = call i8* @ELF32_R_INFO(i32 %532, i32 %533)
  %535 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %19, i32 0, i32 1
  store i8* %534, i8** %535, align 8
  %536 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %537 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %536, i32 0, i32 2
  %538 = load %struct.TYPE_26__*, %struct.TYPE_26__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %538, i32 0, i32 1
  %540 = load i32*, i32** %539, align 8
  store i32* %540, i32** %20, align 8
  %541 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %542 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %541, i32 0, i32 2
  %543 = load %struct.TYPE_26__*, %struct.TYPE_26__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %544, align 8
  %547 = sext i32 %545 to i64
  %548 = mul i64 %547, 4
  %549 = load i32*, i32** %20, align 8
  %550 = getelementptr inbounds i32, i32* %549, i64 %548
  store i32* %550, i32** %20, align 8
  %551 = load i32*, i32** %5, align 8
  %552 = load i32*, i32** %20, align 8
  %553 = call i32 @bfd_elf32_swap_reloc_out(i32* %551, %struct.TYPE_39__* %19, i32* %552)
  br label %554

554:                                              ; preds = %502, %471
  %555 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %556 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %555, i32 0, i32 2
  %557 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %556, i32 0, i32 1
  %558 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = call i64 @strcmp(i32 %559, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %561 = icmp eq i64 %560, 0
  br i1 %561, label %574, label %562

562:                                              ; preds = %554
  %563 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %564 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %563, i32 0, i32 1
  %565 = load i64, i64* %564, align 8
  %566 = icmp ne i64 %565, 0
  br i1 %566, label %578, label %567

567:                                              ; preds = %562
  %568 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %569 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %9, align 8
  %570 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %569, i32 0, i32 0
  %571 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %570, i32 0, i32 0
  %572 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %571, align 8
  %573 = icmp eq %struct.elf_link_hash_entry* %568, %572
  br i1 %573, label %574, label %578

574:                                              ; preds = %567, %554
  %575 = load i32, i32* @SHN_ABS, align 4
  %576 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %577 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %576, i32 0, i32 0
  store i32 %575, i32* %577, align 8
  br label %578

578:                                              ; preds = %574, %567, %562
  %579 = load i32, i32* @TRUE, align 4
  ret i32 %579
}

declare dso_local %struct.elf_i386_link_hash_table* @elf_i386_hash_table(%struct.bfd_link_info*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bfd_put_32(i32*, i32, i32) #1

declare dso_local i8* @ELF32_R_INFO(i32, i32) #1

declare dso_local i32 @bfd_elf32_swap_reloc_out(i32*, %struct.TYPE_39__*, i32*) #1

declare dso_local i32 @GOT_TLS_GD_ANY_P(i32) #1

declare dso_local %struct.TYPE_40__* @elf_i386_hash_entry(%struct.elf_link_hash_entry*) #1

declare dso_local i64 @SYMBOL_REFERENCES_LOCAL(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
