; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_vxworks_finish_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_vxworks_finish_dynamic_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.elf_link_hash_entry = type { i32, %struct.TYPE_33__, i64, i64, i32, %struct.TYPE_39__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_53__* }
%struct.TYPE_53__ = type { i32 }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_42__ = type { i32, i64, i32 }
%struct.TYPE_41__ = type { i64, i64, %struct.TYPE_52__*, i32 }
%struct.TYPE_52__ = type { i64 }
%struct.mips_got_info = type { %struct.TYPE_51__* }
%struct.TYPE_51__ = type { i64 }
%struct.mips_elf_link_hash_table = type { i64, i64, %struct.TYPE_34__*, %struct.TYPE_49__*, %struct.TYPE_48__, %struct.TYPE_40__*, %struct.TYPE_38__*, %struct.TYPE_37__* }
%struct.TYPE_34__ = type { i32, i32* }
%struct.TYPE_49__ = type { i32* }
%struct.TYPE_48__ = type { %struct.TYPE_47__*, %struct.TYPE_46__* }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_40__ = type { i32* }
%struct.TYPE_38__ = type { i64, i64, i32*, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_37__ = type { i64, i32*, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_43__ = type { i32, i64, i8* }
%struct.TYPE_45__ = type { i32* }
%struct.TYPE_44__ = type { %struct.TYPE_50__ }
%struct.TYPE_50__ = type { %struct.mips_got_info* }

@_bfd_mips_vxworks_finish_dynamic_symbol.plt_entry = internal global i64* null, align 8
@mips_vxworks_shared_plt_entry = common dso_local global i64* null, align 8
@mips_vxworks_exec_plt_entry = common dso_local global i64* null, align 8
@R_MIPS_32 = common dso_local global i32 0, align 4
@R_MIPS_HI16 = common dso_local global i32 0, align 4
@R_MIPS_LO16 = common dso_local global i32 0, align 4
@R_MIPS_JUMP_SLOT = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@R_MIPS_GOT16 = common dso_local global i32 0, align 4
@R_MIPS_COPY = common dso_local global i32 0, align 4
@STO_MIPS16 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_mips_vxworks_finish_dynamic_symbol(i32* %0, %struct.bfd_link_info* %1, %struct.elf_link_hash_entry* %2, %struct.TYPE_42__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca %struct.elf_link_hash_entry*, align 8
  %8 = alloca %struct.TYPE_42__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_41__*, align 8
  %11 = alloca %struct.mips_got_info*, align 8
  %12 = alloca %struct.mips_elf_link_hash_table*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_43__, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_43__, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_41__*, align 8
  %26 = alloca %struct.TYPE_43__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store %struct.elf_link_hash_entry* %2, %struct.elf_link_hash_entry** %7, align 8
  store %struct.TYPE_42__* %3, %struct.TYPE_42__** %8, align 8
  %27 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %28 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %27)
  store %struct.mips_elf_link_hash_table* %28, %struct.mips_elf_link_hash_table** %12, align 8
  %29 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %30 = call %struct.TYPE_45__* @elf_hash_table(%struct.bfd_link_info* %29)
  %31 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %9, align 8
  %33 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %34 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, -1
  br i1 %37, label %38, label %333

38:                                               ; preds = %4
  %39 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %40 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = call i32 @BFD_ASSERT(i32 %43)
  %45 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %46 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %45, i32 0, i32 6
  %47 = load %struct.TYPE_38__*, %struct.TYPE_38__** %46, align 8
  %48 = icmp ne %struct.TYPE_38__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @BFD_ASSERT(i32 %49)
  %51 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %52 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %56 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %55, i32 0, i32 6
  %57 = load %struct.TYPE_38__*, %struct.TYPE_38__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sle i64 %54, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @BFD_ASSERT(i32 %61)
  %63 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %64 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %63, i32 0, i32 6
  %65 = load %struct.TYPE_38__*, %struct.TYPE_38__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %71 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %70, i32 0, i32 6
  %72 = load %struct.TYPE_38__*, %struct.TYPE_38__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %69, %74
  %76 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %77 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %75, %79
  store i64 %80, i64* %14, align 8
  %81 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %82 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %86 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  %89 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %90 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sdiv i64 %88, %91
  store i64 %92, i64* %15, align 8
  %93 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %94 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %93, i32 0, i32 7
  %95 = load %struct.TYPE_37__*, %struct.TYPE_37__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_36__*, %struct.TYPE_36__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %101 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %100, i32 0, i32 7
  %102 = load %struct.TYPE_37__*, %struct.TYPE_37__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %99, %104
  %106 = load i64, i64* %15, align 8
  %107 = mul nsw i64 %106, 4
  %108 = add nsw i64 %105, %107
  store i64 %108, i64* %16, align 8
  %109 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %110 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %111 = call i64 @mips_elf_gotplt_index(%struct.bfd_link_info* %109, %struct.elf_link_hash_entry* %110)
  store i64 %111, i64* %17, align 8
  %112 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %113 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = sdiv i64 %115, 4
  %117 = add nsw i64 %116, 1
  %118 = sub nsw i64 0, %117
  %119 = and i64 %118, 65535
  store i64 %119, i64* %18, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %123 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %122, i32 0, i32 7
  %124 = load %struct.TYPE_37__*, %struct.TYPE_37__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %15, align 8
  %128 = mul nsw i64 %127, 4
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = call i32 @bfd_put_32(i32* %120, i64 %121, i32* %129)
  %131 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %132 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %131, i32 0, i32 6
  %133 = load %struct.TYPE_38__*, %struct.TYPE_38__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %137 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  store i32* %140, i32** %13, align 8
  %141 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %142 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %38
  %146 = load i64*, i64** @mips_vxworks_shared_plt_entry, align 8
  store i64* %146, i64** @_bfd_mips_vxworks_finish_dynamic_symbol.plt_entry, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = load i64*, i64** @_bfd_mips_vxworks_finish_dynamic_symbol.plt_entry, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %18, align 8
  %152 = or i64 %150, %151
  %153 = load i32*, i32** %13, align 8
  %154 = call i32 @bfd_put_32(i32* %147, i64 %152, i32* %153)
  %155 = load i32*, i32** %5, align 8
  %156 = load i64*, i64** @_bfd_mips_vxworks_finish_dynamic_symbol.plt_entry, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %15, align 8
  %160 = or i64 %158, %159
  %161 = load i32*, i32** %13, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 4
  %163 = call i32 @bfd_put_32(i32* %155, i64 %160, i32* %162)
  br label %302

164:                                              ; preds = %38
  %165 = load i64*, i64** @mips_vxworks_exec_plt_entry, align 8
  store i64* %165, i64** @_bfd_mips_vxworks_finish_dynamic_symbol.plt_entry, align 8
  %166 = load i64, i64* %16, align 8
  %167 = add nsw i64 %166, 32768
  %168 = ashr i64 %167, 16
  %169 = and i64 %168, 65535
  store i64 %169, i64* %20, align 8
  %170 = load i64, i64* %16, align 8
  %171 = and i64 %170, 65535
  store i64 %171, i64* %21, align 8
  %172 = load i32*, i32** %5, align 8
  %173 = load i64*, i64** @_bfd_mips_vxworks_finish_dynamic_symbol.plt_entry, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %18, align 8
  %177 = or i64 %175, %176
  %178 = load i32*, i32** %13, align 8
  %179 = call i32 @bfd_put_32(i32* %172, i64 %177, i32* %178)
  %180 = load i32*, i32** %5, align 8
  %181 = load i64*, i64** @_bfd_mips_vxworks_finish_dynamic_symbol.plt_entry, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %15, align 8
  %185 = or i64 %183, %184
  %186 = load i32*, i32** %13, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 4
  %188 = call i32 @bfd_put_32(i32* %180, i64 %185, i32* %187)
  %189 = load i32*, i32** %5, align 8
  %190 = load i64*, i64** @_bfd_mips_vxworks_finish_dynamic_symbol.plt_entry, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 2
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %20, align 8
  %194 = or i64 %192, %193
  %195 = load i32*, i32** %13, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 8
  %197 = call i32 @bfd_put_32(i32* %189, i64 %194, i32* %196)
  %198 = load i32*, i32** %5, align 8
  %199 = load i64*, i64** @_bfd_mips_vxworks_finish_dynamic_symbol.plt_entry, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 3
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %21, align 8
  %203 = or i64 %201, %202
  %204 = load i32*, i32** %13, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 12
  %206 = call i32 @bfd_put_32(i32* %198, i64 %203, i32* %205)
  %207 = load i32*, i32** %5, align 8
  %208 = load i64*, i64** @_bfd_mips_vxworks_finish_dynamic_symbol.plt_entry, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 4
  %210 = load i64, i64* %209, align 8
  %211 = load i32*, i32** %13, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 16
  %213 = call i32 @bfd_put_32(i32* %207, i64 %210, i32* %212)
  %214 = load i32*, i32** %5, align 8
  %215 = load i64*, i64** @_bfd_mips_vxworks_finish_dynamic_symbol.plt_entry, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 5
  %217 = load i64, i64* %216, align 8
  %218 = load i32*, i32** %13, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 20
  %220 = call i32 @bfd_put_32(i32* %214, i64 %217, i32* %219)
  %221 = load i32*, i32** %5, align 8
  %222 = load i64*, i64** @_bfd_mips_vxworks_finish_dynamic_symbol.plt_entry, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 6
  %224 = load i64, i64* %223, align 8
  %225 = load i32*, i32** %13, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 24
  %227 = call i32 @bfd_put_32(i32* %221, i64 %224, i32* %226)
  %228 = load i32*, i32** %5, align 8
  %229 = load i64*, i64** @_bfd_mips_vxworks_finish_dynamic_symbol.plt_entry, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 7
  %231 = load i64, i64* %230, align 8
  %232 = load i32*, i32** %13, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 28
  %234 = call i32 @bfd_put_32(i32* %228, i64 %231, i32* %233)
  %235 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %236 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %235, i32 0, i32 5
  %237 = load %struct.TYPE_40__*, %struct.TYPE_40__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i64, i64* %15, align 8
  %241 = mul nsw i64 %240, 3
  %242 = add nsw i64 %241, 2
  %243 = mul i64 %242, 4
  %244 = getelementptr inbounds i32, i32* %239, i64 %243
  store i32* %244, i32** %13, align 8
  %245 = load i64, i64* %16, align 8
  %246 = trunc i64 %245 to i32
  %247 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %19, i32 0, i32 0
  store i32 %246, i32* %247, align 8
  %248 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %249 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_46__*, %struct.TYPE_46__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @R_MIPS_32, align 4
  %255 = call i8* @ELF32_R_INFO(i32 %253, i32 %254)
  %256 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %19, i32 0, i32 2
  store i8* %255, i8** %256, align 8
  %257 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %258 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %19, i32 0, i32 1
  store i64 %260, i64* %261, align 8
  %262 = load i32*, i32** %5, align 8
  %263 = load i32*, i32** %13, align 8
  %264 = call i32 @bfd_elf32_swap_reloca_out(i32* %262, %struct.TYPE_43__* %19, i32* %263)
  %265 = load i32*, i32** %13, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 4
  store i32* %266, i32** %13, align 8
  %267 = load i64, i64* %14, align 8
  %268 = add nsw i64 %267, 8
  %269 = trunc i64 %268 to i32
  %270 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %19, i32 0, i32 0
  store i32 %269, i32* %270, align 8
  %271 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %272 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_47__*, %struct.TYPE_47__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @R_MIPS_HI16, align 4
  %278 = call i8* @ELF32_R_INFO(i32 %276, i32 %277)
  %279 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %19, i32 0, i32 2
  store i8* %278, i8** %279, align 8
  %280 = load i64, i64* %17, align 8
  %281 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %19, i32 0, i32 1
  store i64 %280, i64* %281, align 8
  %282 = load i32*, i32** %5, align 8
  %283 = load i32*, i32** %13, align 8
  %284 = call i32 @bfd_elf32_swap_reloca_out(i32* %282, %struct.TYPE_43__* %19, i32* %283)
  %285 = load i32*, i32** %13, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 4
  store i32* %286, i32** %13, align 8
  %287 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %19, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %288, 4
  store i32 %289, i32* %287, align 8
  %290 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %291 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_47__*, %struct.TYPE_47__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @R_MIPS_LO16, align 4
  %297 = call i8* @ELF32_R_INFO(i32 %295, i32 %296)
  %298 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %19, i32 0, i32 2
  store i8* %297, i8** %298, align 8
  %299 = load i32*, i32** %5, align 8
  %300 = load i32*, i32** %13, align 8
  %301 = call i32 @bfd_elf32_swap_reloca_out(i32* %299, %struct.TYPE_43__* %19, i32* %300)
  br label %302

302:                                              ; preds = %164, %145
  %303 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %304 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %303, i32 0, i32 3
  %305 = load %struct.TYPE_49__*, %struct.TYPE_49__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = load i64, i64* %15, align 8
  %309 = mul i64 %308, 4
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  store i32* %310, i32** %13, align 8
  %311 = load i64, i64* %16, align 8
  %312 = trunc i64 %311 to i32
  %313 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %19, i32 0, i32 0
  store i32 %312, i32* %313, align 8
  %314 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %315 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @R_MIPS_JUMP_SLOT, align 4
  %318 = call i8* @ELF32_R_INFO(i32 %316, i32 %317)
  %319 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %19, i32 0, i32 2
  store i8* %318, i8** %319, align 8
  %320 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %19, i32 0, i32 1
  store i64 0, i64* %320, align 8
  %321 = load i32*, i32** %5, align 8
  %322 = load i32*, i32** %13, align 8
  %323 = call i32 @bfd_elf32_swap_reloca_out(i32* %321, %struct.TYPE_43__* %19, i32* %322)
  %324 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %325 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %332, label %328

328:                                              ; preds = %302
  %329 = load i32, i32* @SHN_UNDEF, align 4
  %330 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %330, i32 0, i32 2
  store i32 %329, i32* %331, align 8
  br label %332

332:                                              ; preds = %328, %302
  br label %333

333:                                              ; preds = %332, %4
  %334 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %335 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp ne i32 %336, -1
  br i1 %337, label %343, label %338

338:                                              ; preds = %333
  %339 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %340 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %339, i32 0, i32 3
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br label %343

343:                                              ; preds = %338, %333
  %344 = phi i1 [ true, %333 ], [ %342, %338 ]
  %345 = zext i1 %344 to i32
  %346 = call i32 @BFD_ASSERT(i32 %345)
  %347 = load i32*, i32** %9, align 8
  %348 = load i32, i32* @FALSE, align 4
  %349 = call %struct.TYPE_41__* @mips_elf_got_section(i32* %347, i32 %348)
  store %struct.TYPE_41__* %349, %struct.TYPE_41__** %10, align 8
  %350 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %351 = icmp ne %struct.TYPE_41__* %350, null
  %352 = zext i1 %351 to i32
  %353 = call i32 @BFD_ASSERT(i32 %352)
  %354 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %355 = call %struct.TYPE_44__* @mips_elf_section_data(%struct.TYPE_41__* %354)
  %356 = icmp ne %struct.TYPE_44__* %355, null
  %357 = zext i1 %356 to i32
  %358 = call i32 @BFD_ASSERT(i32 %357)
  %359 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %360 = call %struct.TYPE_44__* @mips_elf_section_data(%struct.TYPE_41__* %359)
  %361 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %361, i32 0, i32 0
  %363 = load %struct.mips_got_info*, %struct.mips_got_info** %362, align 8
  store %struct.mips_got_info* %363, %struct.mips_got_info** %11, align 8
  %364 = load %struct.mips_got_info*, %struct.mips_got_info** %11, align 8
  %365 = icmp ne %struct.mips_got_info* %364, null
  %366 = zext i1 %365 to i32
  %367 = call i32 @BFD_ASSERT(i32 %366)
  %368 = load %struct.mips_got_info*, %struct.mips_got_info** %11, align 8
  %369 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %368, i32 0, i32 0
  %370 = load %struct.TYPE_51__*, %struct.TYPE_51__** %369, align 8
  %371 = icmp ne %struct.TYPE_51__* %370, null
  br i1 %371, label %372, label %437

372:                                              ; preds = %343
  %373 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %374 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = sext i32 %375 to i64
  %377 = load %struct.mips_got_info*, %struct.mips_got_info** %11, align 8
  %378 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %377, i32 0, i32 0
  %379 = load %struct.TYPE_51__*, %struct.TYPE_51__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = icmp sge i64 %376, %381
  br i1 %382, label %383, label %437

383:                                              ; preds = %372
  %384 = load i32*, i32** %9, align 8
  %385 = load i32*, i32** %5, align 8
  %386 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %387 = load i32, i32* @R_MIPS_GOT16, align 4
  %388 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %389 = call i64 @mips_elf_global_got_index(i32* %384, i32* %385, %struct.elf_link_hash_entry* %386, i32 %387, %struct.bfd_link_info* %388)
  store i64 %389, i64* %22, align 8
  %390 = load i32*, i32** %5, align 8
  %391 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %395 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* %22, align 8
  %398 = add nsw i64 %396, %397
  %399 = call i32 @MIPS_ELF_PUT_WORD(i32* %390, i32 %393, i64 %398)
  %400 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %401 = load i32, i32* @FALSE, align 4
  %402 = call %struct.TYPE_41__* @mips_elf_rel_dyn_section(%struct.bfd_link_info* %400, i32 %401)
  store %struct.TYPE_41__* %402, %struct.TYPE_41__** %25, align 8
  %403 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %404 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %407 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 8
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %407, align 8
  %410 = sext i32 %408 to i64
  %411 = mul i64 %410, 4
  %412 = add i64 %405, %411
  %413 = inttoptr i64 %412 to i32*
  store i32* %413, i32** %24, align 8
  %414 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %415 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %414, i32 0, i32 2
  %416 = load %struct.TYPE_52__*, %struct.TYPE_52__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %420 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %419, i32 0, i32 1
  %421 = load i64, i64* %420, align 8
  %422 = add nsw i64 %418, %421
  %423 = load i64, i64* %22, align 8
  %424 = add nsw i64 %422, %423
  %425 = trunc i64 %424 to i32
  %426 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %23, i32 0, i32 0
  store i32 %425, i32* %426, align 8
  %427 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %428 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* @R_MIPS_32, align 4
  %431 = call i8* @ELF32_R_INFO(i32 %429, i32 %430)
  %432 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %23, i32 0, i32 2
  store i8* %431, i8** %432, align 8
  %433 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %23, i32 0, i32 1
  store i64 0, i64* %433, align 8
  %434 = load i32*, i32** %9, align 8
  %435 = load i32*, i32** %24, align 8
  %436 = call i32 @bfd_elf32_swap_reloca_out(i32* %434, %struct.TYPE_43__* %23, i32* %435)
  br label %437

437:                                              ; preds = %383, %372, %343
  %438 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %439 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %438, i32 0, i32 2
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %504

442:                                              ; preds = %437
  %443 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %444 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = icmp ne i32 %445, -1
  %447 = zext i1 %446 to i32
  %448 = call i32 @BFD_ASSERT(i32 %447)
  %449 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %450 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %452, i32 0, i32 1
  %454 = load %struct.TYPE_30__*, %struct.TYPE_30__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %454, i32 0, i32 1
  %456 = load %struct.TYPE_53__*, %struct.TYPE_53__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %460 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %462, i32 0, i32 1
  %464 = load %struct.TYPE_30__*, %struct.TYPE_30__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = add nsw i32 %458, %466
  %468 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %469 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = add nsw i32 %467, %473
  %475 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %26, i32 0, i32 0
  store i32 %474, i32* %475, align 8
  %476 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %477 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = load i32, i32* @R_MIPS_COPY, align 4
  %480 = call i8* @ELF32_R_INFO(i32 %478, i32 %479)
  %481 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %26, i32 0, i32 2
  store i8* %480, i8** %481, align 8
  %482 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %26, i32 0, i32 1
  store i64 0, i64* %482, align 8
  %483 = load i32*, i32** %5, align 8
  %484 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %485 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %484, i32 0, i32 2
  %486 = load %struct.TYPE_34__*, %struct.TYPE_34__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %486, i32 0, i32 1
  %488 = load i32*, i32** %487, align 8
  %489 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %490 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %489, i32 0, i32 2
  %491 = load %struct.TYPE_34__*, %struct.TYPE_34__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = sext i32 %493 to i64
  %495 = mul i64 %494, 4
  %496 = getelementptr inbounds i32, i32* %488, i64 %495
  %497 = call i32 @bfd_elf32_swap_reloca_out(i32* %483, %struct.TYPE_43__* %26, i32* %496)
  %498 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %12, align 8
  %499 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %498, i32 0, i32 2
  %500 = load %struct.TYPE_34__*, %struct.TYPE_34__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %501, align 8
  br label %504

504:                                              ; preds = %442, %437
  %505 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %506 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %505, i32 0, i32 1
  %507 = load i64, i64* %506, align 8
  %508 = load i64, i64* @STO_MIPS16, align 8
  %509 = icmp eq i64 %507, %508
  br i1 %509, label %510, label %515

510:                                              ; preds = %504
  %511 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %512 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = and i32 %513, -2
  store i32 %514, i32* %512, align 8
  br label %515

515:                                              ; preds = %510, %504
  %516 = load i32, i32* @TRUE, align 4
  ret i32 %516
}

declare dso_local %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_45__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @mips_elf_gotplt_index(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i32 @bfd_put_32(i32*, i64, i32*) #1

declare dso_local i8* @ELF32_R_INFO(i32, i32) #1

declare dso_local i32 @bfd_elf32_swap_reloca_out(i32*, %struct.TYPE_43__*, i32*) #1

declare dso_local %struct.TYPE_41__* @mips_elf_got_section(i32*, i32) #1

declare dso_local %struct.TYPE_44__* @mips_elf_section_data(%struct.TYPE_41__*) #1

declare dso_local i64 @mips_elf_global_got_index(i32*, i32*, %struct.elf_link_hash_entry*, i32, %struct.bfd_link_info*) #1

declare dso_local i32 @MIPS_ELF_PUT_WORD(i32*, i32, i64) #1

declare dso_local %struct.TYPE_41__* @mips_elf_rel_dyn_section(%struct.bfd_link_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
