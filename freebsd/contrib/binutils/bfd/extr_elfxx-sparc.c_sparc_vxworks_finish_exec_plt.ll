; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c_sparc_vxworks_finish_exec_plt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c_sparc_vxworks_finish_exec_plt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct._bfd_sparc_elf_link_hash_table = type { %struct.TYPE_17__, %struct.TYPE_26__*, %struct.TYPE_25__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_27__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_24__*, i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_18__ = type { i32, i8*, i64 }

@sparc_vxworks_exec_plt0_entry = common dso_local global i64* null, align 8
@R_SPARC_HI22 = common dso_local global i32 0, align 4
@R_SPARC_LO10 = common dso_local global i32 0, align 4
@R_SPARC_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.bfd_link_info*)* @sparc_vxworks_finish_exec_plt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc_vxworks_finish_exec_plt(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct._bfd_sparc_elf_link_hash_table*, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  store i32* %0, i32** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %10 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %11 = call %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info* %10)
  store %struct._bfd_sparc_elf_link_hash_table* %11, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %12 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %13 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %26 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %24, %35
  %37 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %38 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %36, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = load i64*, i64** @sparc_vxworks_exec_plt0_entry, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 8
  %53 = ashr i32 %52, 10
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %57 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %56, i32 0, i32 2
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @bfd_put_32(i32* %47, i64 %55, i64 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i64*, i64** @sparc_vxworks_exec_plt0_entry, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 8
  %68 = and i32 %67, 1023
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %65, %69
  %71 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %72 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %71, i32 0, i32 2
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 4
  %77 = call i32 @bfd_put_32(i32* %62, i64 %70, i64 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = load i64*, i64** @sparc_vxworks_exec_plt0_entry, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %83 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %82, i32 0, i32 2
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 8
  %88 = call i32 @bfd_put_32(i32* %78, i64 %81, i64 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = load i64*, i64** @sparc_vxworks_exec_plt0_entry, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 3
  %92 = load i64, i64* %91, align 8
  %93 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %94 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %93, i32 0, i32 2
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 12
  %99 = call i32 @bfd_put_32(i32* %89, i64 %92, i64 %98)
  %100 = load i32*, i32** %3, align 8
  %101 = load i64*, i64** @sparc_vxworks_exec_plt0_entry, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 4
  %103 = load i64, i64* %102, align 8
  %104 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %105 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %104, i32 0, i32 2
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 16
  %110 = call i32 @bfd_put_32(i32* %100, i64 %103, i64 %109)
  %111 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %112 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %111, i32 0, i32 1
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %8, align 8
  %116 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %117 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %116, i32 0, i32 2
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %124 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %123, i32 0, i32 2
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %122, %127
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  store i64 %128, i64* %129, align 8
  %130 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %131 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @R_SPARC_HI22, align 4
  %137 = call i8* @ELF32_R_INFO(i32 %135, i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  store i8* %137, i8** %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  store i32 8, i32* %139, align 8
  %140 = load i32*, i32** %3, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @bfd_elf32_swap_reloca_out(i32* %140, %struct.TYPE_18__* %6, i32* %141)
  %143 = load i32*, i32** %8, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 4
  store i32* %144, i32** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 4
  store i64 %147, i64* %145, align 8
  %148 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %149 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @R_SPARC_LO10, align 4
  %155 = call i8* @ELF32_R_INFO(i32 %153, i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  store i8* %155, i8** %156, align 8
  %157 = load i32*, i32** %3, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = call i32 @bfd_elf32_swap_reloca_out(i32* %157, %struct.TYPE_18__* %6, i32* %158)
  %160 = load i32*, i32** %8, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 4
  store i32* %161, i32** %8, align 8
  br label %162

162:                                              ; preds = %177, %2
  %163 = load i32*, i32** %8, align 8
  %164 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %165 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %164, i32 0, i32 1
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %170 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %169, i32 0, i32 1
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %168, i64 %174
  %176 = icmp ult i32* %163, %175
  br i1 %176, label %177, label %229

177:                                              ; preds = %162
  %178 = load i32*, i32** %3, align 8
  %179 = load i32*, i32** %8, align 8
  %180 = call i32 @bfd_elf32_swap_reloc_in(i32* %178, i32* %179, %struct.TYPE_18__* %9)
  %181 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %182 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @R_SPARC_HI22, align 4
  %188 = call i8* @ELF32_R_INFO(i32 %186, i32 %187)
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i8* %188, i8** %189, align 8
  %190 = load i32*, i32** %3, align 8
  %191 = load i32*, i32** %8, align 8
  %192 = call i32 @bfd_elf32_swap_reloc_out(i32* %190, %struct.TYPE_18__* %9, i32* %191)
  %193 = load i32*, i32** %8, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 4
  store i32* %194, i32** %8, align 8
  %195 = load i32*, i32** %3, align 8
  %196 = load i32*, i32** %8, align 8
  %197 = call i32 @bfd_elf32_swap_reloc_in(i32* %195, i32* %196, %struct.TYPE_18__* %9)
  %198 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %199 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @R_SPARC_LO10, align 4
  %205 = call i8* @ELF32_R_INFO(i32 %203, i32 %204)
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i8* %205, i8** %206, align 8
  %207 = load i32*, i32** %3, align 8
  %208 = load i32*, i32** %8, align 8
  %209 = call i32 @bfd_elf32_swap_reloc_out(i32* %207, %struct.TYPE_18__* %9, i32* %208)
  %210 = load i32*, i32** %8, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 4
  store i32* %211, i32** %8, align 8
  %212 = load i32*, i32** %3, align 8
  %213 = load i32*, i32** %8, align 8
  %214 = call i32 @bfd_elf32_swap_reloc_in(i32* %212, i32* %213, %struct.TYPE_18__* %9)
  %215 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %5, align 8
  %216 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @R_SPARC_32, align 4
  %222 = call i8* @ELF32_R_INFO(i32 %220, i32 %221)
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i8* %222, i8** %223, align 8
  %224 = load i32*, i32** %3, align 8
  %225 = load i32*, i32** %8, align 8
  %226 = call i32 @bfd_elf32_swap_reloc_out(i32* %224, %struct.TYPE_18__* %9, i32* %225)
  %227 = load i32*, i32** %8, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 4
  store i32* %228, i32** %8, align 8
  br label %162

229:                                              ; preds = %162
  ret void
}

declare dso_local %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @bfd_put_32(i32*, i64, i64) #1

declare dso_local i8* @ELF32_R_INFO(i32, i32) #1

declare dso_local i32 @bfd_elf32_swap_reloca_out(i32*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @bfd_elf32_swap_reloc_in(i32*, i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @bfd_elf32_swap_reloc_out(i32*, %struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
