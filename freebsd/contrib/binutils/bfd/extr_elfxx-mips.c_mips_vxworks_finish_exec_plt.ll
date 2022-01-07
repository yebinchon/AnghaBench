; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_mips_vxworks_finish_exec_plt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_mips_vxworks_finish_exec_plt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_17__ = type { i32, i8*, i64 }
%struct.mips_elf_link_hash_table = type { %struct.TYPE_16__, %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_26__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32* }
%struct.TYPE_24__ = type { i32, i32*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }

@mips_vxworks_finish_exec_plt.plt_entry = internal global i32* null, align 8
@mips_vxworks_exec_plt0_entry = common dso_local global i32* null, align 8
@R_MIPS_HI16 = common dso_local global i32 0, align 4
@R_MIPS_LO16 = common dso_local global i32 0, align 4
@R_MIPS_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.bfd_link_info*)* @mips_vxworks_finish_exec_plt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_vxworks_finish_exec_plt(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.TYPE_17__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mips_elf_link_hash_table*, align 8
  %12 = alloca %struct.TYPE_17__, align 8
  store i32* %0, i32** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %13 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %14 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %13)
  store %struct.mips_elf_link_hash_table* %14, %struct.mips_elf_link_hash_table** %11, align 8
  %15 = load i32*, i32** @mips_vxworks_exec_plt0_entry, align 8
  store i32* %15, i32** @mips_vxworks_finish_exec_plt.plt_entry, align 8
  %16 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %17 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %30 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %28, %39
  %41 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %42 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %40, %49
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 32768
  %53 = ashr i32 %52, 16
  %54 = and i32 %53, 65535
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 65535
  store i32 %56, i32* %9, align 4
  %57 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %58 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %57, i32 0, i32 2
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %65 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %64, i32 0, i32 2
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %63, %68
  store i32 %69, i32* %10, align 4
  %70 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %71 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %70, i32 0, i32 2
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %6, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load i32*, i32** @mips_vxworks_finish_exec_plt.plt_entry, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %78, %79
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @bfd_put_32(i32* %75, i32 %80, i32* %81)
  %83 = load i32*, i32** %3, align 8
  %84 = load i32*, i32** @mips_vxworks_finish_exec_plt.plt_entry, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %86, %87
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = call i32 @bfd_put_32(i32* %83, i32 %88, i32* %90)
  %92 = load i32*, i32** %3, align 8
  %93 = load i32*, i32** @mips_vxworks_finish_exec_plt.plt_entry, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  %98 = call i32 @bfd_put_32(i32* %92, i32 %95, i32* %97)
  %99 = load i32*, i32** %3, align 8
  %100 = load i32*, i32** @mips_vxworks_finish_exec_plt.plt_entry, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 12
  %105 = call i32 @bfd_put_32(i32* %99, i32 %102, i32* %104)
  %106 = load i32*, i32** %3, align 8
  %107 = load i32*, i32** @mips_vxworks_finish_exec_plt.plt_entry, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 16
  %112 = call i32 @bfd_put_32(i32* %106, i32 %109, i32* %111)
  %113 = load i32*, i32** %3, align 8
  %114 = load i32*, i32** @mips_vxworks_finish_exec_plt.plt_entry, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 5
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 20
  %119 = call i32 @bfd_put_32(i32* %113, i32 %116, i32* %118)
  %120 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %121 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %120, i32 0, i32 1
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  store i32* %124, i32** %6, align 8
  %125 = load i32, i32* %10, align 4
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  store i32 %125, i32* %126, align 8
  %127 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %128 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @R_MIPS_HI16, align 4
  %134 = call i8* @ELF32_R_INFO(i32 %132, i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 1
  store i8* %134, i8** %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 2
  store i64 0, i64* %136, align 8
  %137 = load i32*, i32** %3, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @bfd_elf32_swap_reloca_out(i32* %137, %struct.TYPE_17__* %5, i32* %138)
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  store i32* %141, i32** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 4
  store i32 %144, i32* %142, align 8
  %145 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %146 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @R_MIPS_LO16, align 4
  %152 = call i8* @ELF32_R_INFO(i32 %150, i32 %151)
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 1
  store i8* %152, i8** %153, align 8
  %154 = load i32*, i32** %3, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @bfd_elf32_swap_reloca_out(i32* %154, %struct.TYPE_17__* %5, i32* %155)
  %157 = load i32*, i32** %6, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 4
  store i32* %158, i32** %6, align 8
  br label %159

159:                                              ; preds = %174, %2
  %160 = load i32*, i32** %6, align 8
  %161 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %162 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %161, i32 0, i32 1
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %167 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %166, i32 0, i32 1
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %165, i64 %171
  %173 = icmp ult i32* %160, %172
  br i1 %173, label %174, label %226

174:                                              ; preds = %159
  %175 = load i32*, i32** %3, align 8
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 @bfd_elf32_swap_reloca_in(i32* %175, i32* %176, %struct.TYPE_17__* %12)
  %178 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %179 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @R_MIPS_32, align 4
  %185 = call i8* @ELF32_R_INFO(i32 %183, i32 %184)
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  store i8* %185, i8** %186, align 8
  %187 = load i32*, i32** %3, align 8
  %188 = load i32*, i32** %6, align 8
  %189 = call i32 @bfd_elf32_swap_reloca_out(i32* %187, %struct.TYPE_17__* %12, i32* %188)
  %190 = load i32*, i32** %6, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 4
  store i32* %191, i32** %6, align 8
  %192 = load i32*, i32** %3, align 8
  %193 = load i32*, i32** %6, align 8
  %194 = call i32 @bfd_elf32_swap_reloca_in(i32* %192, i32* %193, %struct.TYPE_17__* %12)
  %195 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %196 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @R_MIPS_HI16, align 4
  %202 = call i8* @ELF32_R_INFO(i32 %200, i32 %201)
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  store i8* %202, i8** %203, align 8
  %204 = load i32*, i32** %3, align 8
  %205 = load i32*, i32** %6, align 8
  %206 = call i32 @bfd_elf32_swap_reloca_out(i32* %204, %struct.TYPE_17__* %12, i32* %205)
  %207 = load i32*, i32** %6, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 4
  store i32* %208, i32** %6, align 8
  %209 = load i32*, i32** %3, align 8
  %210 = load i32*, i32** %6, align 8
  %211 = call i32 @bfd_elf32_swap_reloca_in(i32* %209, i32* %210, %struct.TYPE_17__* %12)
  %212 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %11, align 8
  %213 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @R_MIPS_LO16, align 4
  %219 = call i8* @ELF32_R_INFO(i32 %217, i32 %218)
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  store i8* %219, i8** %220, align 8
  %221 = load i32*, i32** %3, align 8
  %222 = load i32*, i32** %6, align 8
  %223 = call i32 @bfd_elf32_swap_reloca_out(i32* %221, %struct.TYPE_17__* %12, i32* %222)
  %224 = load i32*, i32** %6, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 4
  store i32* %225, i32** %6, align 8
  br label %159

226:                                              ; preds = %159
  ret void
}

declare dso_local %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @bfd_put_32(i32*, i32, i32*) #1

declare dso_local i8* @ELF32_R_INFO(i32, i32) #1

declare dso_local i32 @bfd_elf32_swap_reloca_out(i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @bfd_elf32_swap_reloca_in(i32*, i32*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
