; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_elf64_x86_64_finish_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_elf64_x86_64_finish_dynamic_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.elf_link_hash_entry = type { i32, %struct.TYPE_25__, i64, %struct.TYPE_38__, i32, i32, %struct.TYPE_29__ }
%struct.TYPE_25__ = type { i64, %struct.TYPE_24__, %struct.TYPE_43__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i64, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i64, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_33__ = type { i32, i64 }
%struct.elf64_x86_64_link_hash_table = type { %struct.TYPE_26__, %struct.TYPE_44__*, %struct.TYPE_39__*, %struct.TYPE_37__*, %struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_28__* }
%struct.TYPE_26__ = type { %struct.elf_link_hash_entry* }
%struct.TYPE_44__ = type { i32, i32* }
%struct.TYPE_39__ = type { i32, i32* }
%struct.TYPE_37__ = type { i64, i64, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_32__ = type { i32* }
%struct.TYPE_31__ = type { i64, %struct.TYPE_30__*, i64 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_28__ = type { i32, i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_35__ = type { i64, i64, i8* }
%struct.TYPE_36__ = type { i64 }

@PLT_ENTRY_SIZE = common dso_local global i32 0, align 4
@GOT_ENTRY_SIZE = common dso_local global i64 0, align 8
@elf64_x86_64_plt_entry = common dso_local global i32 0, align 4
@R_X86_64_JUMP_SLOT = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i32 0, align 4
@GOT_TLS_IE = common dso_local global i64 0, align 8
@R_X86_64_RELATIVE = common dso_local global i32 0, align 4
@R_X86_64_GLOB_DAT = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@R_X86_64_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"_DYNAMIC\00", align 1
@SHN_ABS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, %struct.elf_link_hash_entry*, %struct.TYPE_33__*)* @elf64_x86_64_finish_dynamic_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf64_x86_64_finish_dynamic_symbol(i32* %0, %struct.bfd_link_info* %1, %struct.elf_link_hash_entry* %2, %struct.TYPE_33__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca %struct.elf_link_hash_entry*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.elf64_x86_64_link_hash_table*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_35__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_35__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_35__, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store %struct.elf_link_hash_entry* %2, %struct.elf_link_hash_entry** %7, align 8
  store %struct.TYPE_33__* %3, %struct.TYPE_33__** %8, align 8
  %18 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %19 = call %struct.elf64_x86_64_link_hash_table* @elf64_x86_64_hash_table(%struct.bfd_link_info* %18)
  store %struct.elf64_x86_64_link_hash_table* %19, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %20 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %21 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, -1
  br i1 %24, label %25, label %243

25:                                               ; preds = %4
  %26 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %27 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %45, label %30

30:                                               ; preds = %25
  %31 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %32 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %31, i32 0, i32 6
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %32, align 8
  %34 = icmp eq %struct.TYPE_28__* %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %37 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %36, i32 0, i32 5
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %37, align 8
  %39 = icmp eq %struct.TYPE_31__* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %42 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %41, i32 0, i32 4
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %42, align 8
  %44 = icmp eq %struct.TYPE_32__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40, %35, %30, %25
  %46 = call i32 (...) @abort() #3
  unreachable

47:                                               ; preds = %40
  %48 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %49 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @PLT_ENTRY_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = sdiv i64 %51, %53
  %55 = sub nsw i64 %54, 1
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = add nsw i64 %56, 3
  %58 = load i64, i64* @GOT_ENTRY_SIZE, align 8
  %59 = mul nsw i64 %57, %58
  store i64 %59, i64* %11, align 8
  %60 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %61 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %60, i32 0, i32 6
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %67 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %65, %69
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @elf64_x86_64_plt_entry, align 4
  %73 = load i32, i32* @PLT_ENTRY_SIZE, align 4
  %74 = call i32 @memcpy(i32 %71, i32 %72, i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %77 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %76, i32 0, i32 5
  %78 = load %struct.TYPE_31__*, %struct.TYPE_31__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %84 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %83, i32 0, i32 5
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %82, %87
  %89 = load i64, i64* %11, align 8
  %90 = add nsw i64 %88, %89
  %91 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %92 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %91, i32 0, i32 6
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %90, %97
  %99 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %100 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %99, i32 0, i32 6
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %98, %103
  %105 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %106 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %104, %108
  %110 = sub nsw i64 %109, 6
  %111 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %112 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %111, i32 0, i32 6
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %118 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %116, %120
  %122 = add nsw i64 %121, 2
  %123 = trunc i64 %122 to i32
  %124 = call i32 @bfd_put_32(i32* %75, i64 %110, i32 %123)
  %125 = load i32*, i32** %5, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %128 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %127, i32 0, i32 6
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %134 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %132, %136
  %138 = add nsw i64 %137, 7
  %139 = trunc i64 %138 to i32
  %140 = call i32 @bfd_put_32(i32* %125, i64 %126, i32 %139)
  %141 = load i32*, i32** %5, align 8
  %142 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %143 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* @PLT_ENTRY_SIZE, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %145, %147
  %149 = sub nsw i64 0, %148
  %150 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %151 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %150, i32 0, i32 6
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %157 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %155, %159
  %161 = add nsw i64 %160, 12
  %162 = trunc i64 %161 to i32
  %163 = call i32 @bfd_put_32(i32* %141, i64 %149, i32 %162)
  %164 = load i32*, i32** %5, align 8
  %165 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %166 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %165, i32 0, i32 6
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %173 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %172, i32 0, i32 6
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %171, %176
  %178 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %179 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %178, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %177, %181
  %183 = add nsw i64 %182, 6
  %184 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %185 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %184, i32 0, i32 5
  %186 = load %struct.TYPE_31__*, %struct.TYPE_31__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %11, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @bfd_put_64(i32* %164, i64 %183, i64 %190)
  %192 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %193 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %192, i32 0, i32 5
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %200 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %199, i32 0, i32 5
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %198, %203
  %205 = load i64, i64* %11, align 8
  %206 = add nsw i64 %204, %205
  %207 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %12, i32 0, i32 0
  store i64 %206, i64* %207, align 8
  %208 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %209 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @R_X86_64_JUMP_SLOT, align 4
  %212 = call i8* @ELF64_R_INFO(i32 %210, i32 %211)
  %213 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %12, i32 0, i32 2
  store i8* %212, i8** %213, align 8
  %214 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %12, i32 0, i32 1
  store i64 0, i64* %214, align 8
  %215 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %216 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %215, i32 0, i32 4
  %217 = load %struct.TYPE_32__*, %struct.TYPE_32__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* %10, align 8
  %221 = mul i64 %220, 4
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32* %222, i32** %13, align 8
  %223 = load i32*, i32** %5, align 8
  %224 = load i32*, i32** %13, align 8
  %225 = call i32 @bfd_elf64_swap_reloca_out(i32* %223, %struct.TYPE_35__* %12, i32* %224)
  %226 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %227 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %242, label %230

230:                                              ; preds = %47
  %231 = load i32, i32* @SHN_UNDEF, align 4
  %232 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %235 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %230
  %239 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %239, i32 0, i32 1
  store i64 0, i64* %240, align 8
  br label %241

241:                                              ; preds = %238, %230
  br label %242

242:                                              ; preds = %241, %47
  br label %243

243:                                              ; preds = %242, %4
  %244 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %245 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, -1
  br i1 %248, label %249, label %391

249:                                              ; preds = %243
  %250 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %251 = call %struct.TYPE_36__* @elf64_x86_64_hash_entry(%struct.elf_link_hash_entry* %250)
  %252 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @GOT_TLS_GD_ANY_P(i64 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %391, label %256

256:                                              ; preds = %249
  %257 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %258 = call %struct.TYPE_36__* @elf64_x86_64_hash_entry(%struct.elf_link_hash_entry* %257)
  %259 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @GOT_TLS_IE, align 8
  %262 = icmp ne i64 %260, %261
  br i1 %262, label %263, label %391

263:                                              ; preds = %256
  %264 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %265 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %264, i32 0, i32 3
  %266 = load %struct.TYPE_37__*, %struct.TYPE_37__** %265, align 8
  %267 = icmp eq %struct.TYPE_37__* %266, null
  br i1 %267, label %273, label %268

268:                                              ; preds = %263
  %269 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %270 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %269, i32 0, i32 2
  %271 = load %struct.TYPE_39__*, %struct.TYPE_39__** %270, align 8
  %272 = icmp eq %struct.TYPE_39__* %271, null
  br i1 %272, label %273, label %275

273:                                              ; preds = %268, %263
  %274 = call i32 (...) @abort() #3
  unreachable

275:                                              ; preds = %268
  %276 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %277 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %276, i32 0, i32 3
  %278 = load %struct.TYPE_37__*, %struct.TYPE_37__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %278, i32 0, i32 2
  %280 = load %struct.TYPE_34__*, %struct.TYPE_34__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %284 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %283, i32 0, i32 3
  %285 = load %struct.TYPE_37__*, %struct.TYPE_37__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = add nsw i64 %282, %287
  %289 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %290 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = and i64 %292, -2
  %294 = add nsw i64 %288, %293
  %295 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 0
  store i64 %294, i64* %295, align 8
  %296 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %297 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %344

300:                                              ; preds = %275
  %301 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %302 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %303 = call i64 @SYMBOL_REFERENCES_LOCAL(%struct.bfd_link_info* %301, %struct.elf_link_hash_entry* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %344

305:                                              ; preds = %300
  %306 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %307 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %306, i32 0, i32 3
  %308 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = and i64 %309, 1
  %311 = icmp ne i64 %310, 0
  %312 = zext i1 %311 to i32
  %313 = call i32 @BFD_ASSERT(i32 %312)
  %314 = load i32, i32* @R_X86_64_RELATIVE, align 4
  %315 = call i8* @ELF64_R_INFO(i32 0, i32 %314)
  %316 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 2
  store i8* %315, i8** %316, align 8
  %317 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %318 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %324 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_41__*, %struct.TYPE_41__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_40__*, %struct.TYPE_40__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = add nsw i64 %322, %332
  %334 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %335 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_41__*, %struct.TYPE_41__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = add nsw i64 %333, %341
  %343 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 1
  store i64 %342, i64* %343, align 8
  br label %372

344:                                              ; preds = %300, %275
  %345 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %346 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = and i64 %348, 1
  %350 = icmp eq i64 %349, 0
  %351 = zext i1 %350 to i32
  %352 = call i32 @BFD_ASSERT(i32 %351)
  %353 = load i32*, i32** %5, align 8
  %354 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %355 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %354, i32 0, i32 3
  %356 = load %struct.TYPE_37__*, %struct.TYPE_37__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %360 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %359, i32 0, i32 3
  %361 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = add nsw i64 %358, %362
  %364 = call i32 @bfd_put_64(i32* %353, i64 0, i64 %363)
  %365 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %366 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @R_X86_64_GLOB_DAT, align 4
  %369 = call i8* @ELF64_R_INFO(i32 %367, i32 %368)
  %370 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 2
  store i8* %369, i8** %370, align 8
  %371 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 1
  store i64 0, i64* %371, align 8
  br label %372

372:                                              ; preds = %344, %305
  %373 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %374 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %373, i32 0, i32 2
  %375 = load %struct.TYPE_39__*, %struct.TYPE_39__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  store i32* %377, i32** %15, align 8
  %378 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %379 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %378, i32 0, i32 2
  %380 = load %struct.TYPE_39__*, %struct.TYPE_39__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %381, align 8
  %384 = sext i32 %382 to i64
  %385 = mul i64 %384, 4
  %386 = load i32*, i32** %15, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 %385
  store i32* %387, i32** %15, align 8
  %388 = load i32*, i32** %5, align 8
  %389 = load i32*, i32** %15, align 8
  %390 = call i32 @bfd_elf64_swap_reloca_out(i32* %388, %struct.TYPE_35__* %14, i32* %389)
  br label %391

391:                                              ; preds = %372, %256, %249, %243
  %392 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %393 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %392, i32 0, i32 2
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %475

396:                                              ; preds = %391
  %397 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %398 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = icmp eq i32 %399, -1
  br i1 %400, label %420, label %401

401:                                              ; preds = %396
  %402 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %403 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* @bfd_link_hash_defined, align 8
  %407 = icmp ne i64 %405, %406
  br i1 %407, label %408, label %415

408:                                              ; preds = %401
  %409 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %410 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* @bfd_link_hash_defweak, align 8
  %414 = icmp ne i64 %412, %413
  br i1 %414, label %420, label %415

415:                                              ; preds = %408, %401
  %416 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %417 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %416, i32 0, i32 1
  %418 = load %struct.TYPE_44__*, %struct.TYPE_44__** %417, align 8
  %419 = icmp eq %struct.TYPE_44__* %418, null
  br i1 %419, label %420, label %422

420:                                              ; preds = %415, %408, %396
  %421 = call i32 (...) @abort() #3
  unreachable

422:                                              ; preds = %415
  %423 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %424 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %424, i32 0, i32 2
  %426 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %430 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %432, i32 0, i32 1
  %434 = load %struct.TYPE_41__*, %struct.TYPE_41__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %434, i32 0, i32 1
  %436 = load %struct.TYPE_40__*, %struct.TYPE_40__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = add nsw i64 %428, %438
  %440 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %441 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %441, i32 0, i32 2
  %443 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %443, i32 0, i32 1
  %445 = load %struct.TYPE_41__*, %struct.TYPE_41__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = add nsw i64 %439, %447
  %449 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 0
  store i64 %448, i64* %449, align 8
  %450 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %451 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = load i32, i32* @R_X86_64_COPY, align 4
  %454 = call i8* @ELF64_R_INFO(i32 %452, i32 %453)
  %455 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 2
  store i8* %454, i8** %455, align 8
  %456 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 1
  store i64 0, i64* %456, align 8
  %457 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %458 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %457, i32 0, i32 1
  %459 = load %struct.TYPE_44__*, %struct.TYPE_44__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %459, i32 0, i32 1
  %461 = load i32*, i32** %460, align 8
  store i32* %461, i32** %17, align 8
  %462 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %463 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %462, i32 0, i32 1
  %464 = load %struct.TYPE_44__*, %struct.TYPE_44__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %465, align 8
  %468 = sext i32 %466 to i64
  %469 = mul i64 %468, 4
  %470 = load i32*, i32** %17, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 %469
  store i32* %471, i32** %17, align 8
  %472 = load i32*, i32** %5, align 8
  %473 = load i32*, i32** %17, align 8
  %474 = call i32 @bfd_elf64_swap_reloca_out(i32* %472, %struct.TYPE_35__* %16, i32* %473)
  br label %475

475:                                              ; preds = %422, %391
  %476 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %477 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = call i64 @strcmp(i32 %480, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %482 = icmp eq i64 %481, 0
  br i1 %482, label %490, label %483

483:                                              ; preds = %475
  %484 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %485 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %9, align 8
  %486 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %486, i32 0, i32 0
  %488 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %487, align 8
  %489 = icmp eq %struct.elf_link_hash_entry* %484, %488
  br i1 %489, label %490, label %494

490:                                              ; preds = %483, %475
  %491 = load i32, i32* @SHN_ABS, align 4
  %492 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %493 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %492, i32 0, i32 0
  store i32 %491, i32* %493, align 8
  br label %494

494:                                              ; preds = %490, %483
  %495 = load i32, i32* @TRUE, align 4
  ret i32 %495
}

declare dso_local %struct.elf64_x86_64_link_hash_table* @elf64_x86_64_hash_table(%struct.bfd_link_info*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bfd_put_32(i32*, i64, i32) #1

declare dso_local i32 @bfd_put_64(i32*, i64, i64) #1

declare dso_local i8* @ELF64_R_INFO(i32, i32) #1

declare dso_local i32 @bfd_elf64_swap_reloca_out(i32*, %struct.TYPE_35__*, i32*) #1

declare dso_local i32 @GOT_TLS_GD_ANY_P(i64) #1

declare dso_local %struct.TYPE_36__* @elf64_x86_64_hash_entry(%struct.elf_link_hash_entry*) #1

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
