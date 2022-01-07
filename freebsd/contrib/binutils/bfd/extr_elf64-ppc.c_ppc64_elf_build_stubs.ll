; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_build_stubs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_build_stubs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.ppc_link_hash_table = type { i32*, i8*, %struct.TYPE_19__*, %struct.TYPE_13__*, %struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.TYPE_15__*, i32, i8* }
%struct.TYPE_19__ = type { i32, i32, i32*, i32, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i64, %struct.TYPE_12__*, i32* }
%struct.TYPE_18__ = type { i64, i64, i32*, %struct.TYPE_13__* }
%struct.TYPE_17__ = type { i64, i32*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.elf_link_hash_entry = type { i32, i32, i32, i32, i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }

@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"__glink\00", align 1
@TRUE = common dso_local global i8* null, align 8
@bfd_link_hash_new = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@MFLR_R12 = common dso_local global i32 0, align 4
@BCL_20_31 = common dso_local global i32 0, align 4
@MFLR_R11 = common dso_local global i32 0, align 4
@LD_R2_M16R11 = common dso_local global i32 0, align 4
@MTLR_R12 = common dso_local global i32 0, align 4
@ADD_R12_R2_R11 = common dso_local global i32 0, align 4
@LD_R11_0R12 = common dso_local global i32 0, align 4
@LD_R2_0R12 = common dso_local global i32 0, align 4
@MTCTR_R11 = common dso_local global i32 0, align 4
@BCTR = common dso_local global i32 0, align 4
@GLINK_CALL_STUB_SIZE = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@LI_R0_0 = common dso_local global i32 0, align 4
@LIS_R0_0 = common dso_local global i32 0, align 4
@ORI_R0_R0_0 = common dso_local global i32 0, align 4
@B_DOT = common dso_local global i32 0, align 4
@ppc_build_one_stub = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"stubs don't match calculated size\00", align 1
@.str.2 = private unnamed_addr constant [122 x i8] c"linker stubs in %u group%s\0A  branch       %lu\0A  toc adjust   %lu\0A  long branch  %lu\0A  long toc adj %lu\0A  plt call     %lu\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@ppc_stub_long_branch = common dso_local global i32 0, align 4
@ppc_stub_long_branch_r2off = common dso_local global i32 0, align 4
@ppc_stub_plt_branch = common dso_local global i32 0, align 4
@ppc_stub_plt_branch_r2off = common dso_local global i32 0, align 4
@ppc_stub_plt_call = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ppc64_elf_build_stubs(i8* %0, %struct.bfd_link_info* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ppc_link_hash_table*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.elf_link_hash_entry*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  %15 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %16 = call %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info* %15)
  store %struct.ppc_link_hash_table* %16, %struct.ppc_link_hash_table** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %19 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %18, i32 0, i32 9
  store i8* %17, i8** %19, align 8
  %20 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %21 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %20, i32 0, i32 3
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %9, align 8
  br label %25

25:                                               ; preds = %66, %3
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %28, label %70

28:                                               ; preds = %25
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %28
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %35
  %41 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %42 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %41, i32 0, i32 3
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @bfd_zalloc(%struct.TYPE_13__* %43, i64 %46)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 4
  store i32* %48, i32** %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i8*, i8** @FALSE, align 8
  store i8* %56, i8** %4, align 8
  br label %628

57:                                               ; preds = %40
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %57, %35, %28
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %9, align 8
  br label %25

70:                                               ; preds = %25
  %71 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %72 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %71, i32 0, i32 2
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = icmp ne %struct.TYPE_19__* %73, null
  br i1 %74, label %75, label %418

75:                                               ; preds = %70
  %76 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %77 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %76, i32 0, i32 2
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %418

82:                                               ; preds = %75
  %83 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %84 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %83, i32 0, i32 9
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %134

87:                                               ; preds = %82
  %88 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %89 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %88, i32 0, i32 8
  %90 = load i8*, i8** @TRUE, align 8
  %91 = load i8*, i8** @FALSE, align 8
  %92 = load i8*, i8** @FALSE, align 8
  %93 = call %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %90, i8* %91, i8* %92)
  store %struct.elf_link_hash_entry* %93, %struct.elf_link_hash_entry** %14, align 8
  %94 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  %95 = icmp eq %struct.elf_link_hash_entry* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i8*, i8** @FALSE, align 8
  store i8* %97, i8** %4, align 8
  br label %628

98:                                               ; preds = %87
  %99 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  %100 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @bfd_link_hash_new, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %133

105:                                              ; preds = %98
  %106 = load i64, i64* @bfd_link_hash_defined, align 8
  %107 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  %108 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  store i64 %106, i64* %109, align 8
  %110 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %111 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %110, i32 0, i32 2
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  %114 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  store %struct.TYPE_19__* %112, %struct.TYPE_19__** %117, align 8
  %118 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  %119 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  store i32 8, i32* %122, align 8
  %123 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  %124 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  %126 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  %127 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  %128 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %127, i32 0, i32 2
  store i32 1, i32* %128, align 8
  %129 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  %130 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %129, i32 0, i32 3
  store i32 1, i32* %130, align 4
  %131 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  %132 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %131, i32 0, i32 4
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %105, %98
  br label %134

134:                                              ; preds = %133, %82
  %135 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %136 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %135, i32 0, i32 2
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %10, align 8
  %140 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %141 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %140, i32 0, i32 7
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %148 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %147, i32 0, i32 7
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %146, %151
  %153 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %154 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %153, i32 0, i32 2
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %161 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %160, i32 0, i32 2
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %159, %164
  %166 = add nsw i64 %165, 16
  %167 = sub nsw i64 %152, %166
  store i64 %167, i64* %13, align 8
  %168 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %169 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %168, i32 0, i32 2
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i64, i64* %13, align 8
  %174 = load i32*, i32** %10, align 8
  %175 = call i32 @bfd_put_64(i32 %172, i64 %173, i32* %174)
  %176 = load i32*, i32** %10, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 8
  store i32* %177, i32** %10, align 8
  %178 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %179 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %178, i32 0, i32 2
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @MFLR_R12, align 4
  %184 = load i32*, i32** %10, align 8
  %185 = call i32 @bfd_put_32(i32 %182, i32 %183, i32* %184)
  %186 = load i32*, i32** %10, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 4
  store i32* %187, i32** %10, align 8
  %188 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %189 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %188, i32 0, i32 2
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @BCL_20_31, align 4
  %194 = load i32*, i32** %10, align 8
  %195 = call i32 @bfd_put_32(i32 %192, i32 %193, i32* %194)
  %196 = load i32*, i32** %10, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 4
  store i32* %197, i32** %10, align 8
  %198 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %199 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %198, i32 0, i32 2
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @MFLR_R11, align 4
  %204 = load i32*, i32** %10, align 8
  %205 = call i32 @bfd_put_32(i32 %202, i32 %203, i32* %204)
  %206 = load i32*, i32** %10, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 4
  store i32* %207, i32** %10, align 8
  %208 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %209 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %208, i32 0, i32 2
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @LD_R2_M16R11, align 4
  %214 = load i32*, i32** %10, align 8
  %215 = call i32 @bfd_put_32(i32 %212, i32 %213, i32* %214)
  %216 = load i32*, i32** %10, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 4
  store i32* %217, i32** %10, align 8
  %218 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %219 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %218, i32 0, i32 2
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @MTLR_R12, align 4
  %224 = load i32*, i32** %10, align 8
  %225 = call i32 @bfd_put_32(i32 %222, i32 %223, i32* %224)
  %226 = load i32*, i32** %10, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 4
  store i32* %227, i32** %10, align 8
  %228 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %229 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %228, i32 0, i32 2
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @ADD_R12_R2_R11, align 4
  %234 = load i32*, i32** %10, align 8
  %235 = call i32 @bfd_put_32(i32 %232, i32 %233, i32* %234)
  %236 = load i32*, i32** %10, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 4
  store i32* %237, i32** %10, align 8
  %238 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %239 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %238, i32 0, i32 2
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @LD_R11_0R12, align 4
  %244 = load i32*, i32** %10, align 8
  %245 = call i32 @bfd_put_32(i32 %242, i32 %243, i32* %244)
  %246 = load i32*, i32** %10, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 4
  store i32* %247, i32** %10, align 8
  %248 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %249 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %248, i32 0, i32 2
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @LD_R2_0R12, align 4
  %254 = or i32 %253, 8
  %255 = load i32*, i32** %10, align 8
  %256 = call i32 @bfd_put_32(i32 %252, i32 %254, i32* %255)
  %257 = load i32*, i32** %10, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 4
  store i32* %258, i32** %10, align 8
  %259 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %260 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %259, i32 0, i32 2
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @MTCTR_R11, align 4
  %265 = load i32*, i32** %10, align 8
  %266 = call i32 @bfd_put_32(i32 %263, i32 %264, i32* %265)
  %267 = load i32*, i32** %10, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 4
  store i32* %268, i32** %10, align 8
  %269 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %270 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %269, i32 0, i32 2
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @LD_R11_0R12, align 4
  %275 = or i32 %274, 16
  %276 = load i32*, i32** %10, align 8
  %277 = call i32 @bfd_put_32(i32 %273, i32 %275, i32* %276)
  %278 = load i32*, i32** %10, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 4
  store i32* %279, i32** %10, align 8
  %280 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %281 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %280, i32 0, i32 2
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @BCTR, align 4
  %286 = load i32*, i32** %10, align 8
  %287 = call i32 @bfd_put_32(i32 %284, i32 %285, i32* %286)
  %288 = load i32*, i32** %10, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 4
  store i32* %289, i32** %10, align 8
  br label %290

290:                                              ; preds = %304, %134
  %291 = load i32*, i32** %10, align 8
  %292 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %293 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %292, i32 0, i32 2
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 2
  %296 = load i32*, i32** %295, align 8
  %297 = ptrtoint i32* %291 to i64
  %298 = ptrtoint i32* %296 to i64
  %299 = sub i64 %297, %298
  %300 = sdiv exact i64 %299, 4
  %301 = load i32, i32* @GLINK_CALL_STUB_SIZE, align 4
  %302 = sext i32 %301 to i64
  %303 = icmp slt i64 %300, %302
  br i1 %303, label %304, label %315

304:                                              ; preds = %290
  %305 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %306 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %305, i32 0, i32 2
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @NOP, align 4
  %311 = load i32*, i32** %10, align 8
  %312 = call i32 @bfd_put_32(i32 %309, i32 %310, i32* %311)
  %313 = load i32*, i32** %10, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 4
  store i32* %314, i32** %10, align 8
  br label %290

315:                                              ; preds = %290
  store i32 0, i32* %12, align 4
  br label %316

316:                                              ; preds = %374, %315
  %317 = load i32*, i32** %10, align 8
  %318 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %319 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %318, i32 0, i32 2
  %320 = load %struct.TYPE_19__*, %struct.TYPE_19__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %320, i32 0, i32 2
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %324 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %323, i32 0, i32 2
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %322, i64 %328
  %330 = icmp ult i32* %317, %329
  br i1 %330, label %331, label %402

331:                                              ; preds = %316
  %332 = load i32, i32* %12, align 4
  %333 = icmp ult i32 %332, 32768
  br i1 %333, label %334, label %347

334:                                              ; preds = %331
  %335 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %336 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %335, i32 0, i32 2
  %337 = load %struct.TYPE_19__*, %struct.TYPE_19__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* @LI_R0_0, align 4
  %341 = load i32, i32* %12, align 4
  %342 = or i32 %340, %341
  %343 = load i32*, i32** %10, align 8
  %344 = call i32 @bfd_put_32(i32 %339, i32 %342, i32* %343)
  %345 = load i32*, i32** %10, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 4
  store i32* %346, i32** %10, align 8
  br label %374

347:                                              ; preds = %331
  %348 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %349 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %348, i32 0, i32 2
  %350 = load %struct.TYPE_19__*, %struct.TYPE_19__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @LIS_R0_0, align 4
  %354 = load i32, i32* %12, align 4
  %355 = call i32 @PPC_HI(i32 %354)
  %356 = or i32 %353, %355
  %357 = load i32*, i32** %10, align 8
  %358 = call i32 @bfd_put_32(i32 %352, i32 %356, i32* %357)
  %359 = load i32*, i32** %10, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 4
  store i32* %360, i32** %10, align 8
  %361 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %362 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %361, i32 0, i32 2
  %363 = load %struct.TYPE_19__*, %struct.TYPE_19__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @ORI_R0_R0_0, align 4
  %367 = load i32, i32* %12, align 4
  %368 = call i32 @PPC_LO(i32 %367)
  %369 = or i32 %366, %368
  %370 = load i32*, i32** %10, align 8
  %371 = call i32 @bfd_put_32(i32 %365, i32 %369, i32* %370)
  %372 = load i32*, i32** %10, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 4
  store i32* %373, i32** %10, align 8
  br label %374

374:                                              ; preds = %347, %334
  %375 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %376 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %375, i32 0, i32 2
  %377 = load %struct.TYPE_19__*, %struct.TYPE_19__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @B_DOT, align 4
  %381 = sext i32 %380 to i64
  %382 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %383 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %382, i32 0, i32 2
  %384 = load %struct.TYPE_19__*, %struct.TYPE_19__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %384, i32 0, i32 2
  %386 = load i32*, i32** %385, align 8
  %387 = load i32*, i32** %10, align 8
  %388 = ptrtoint i32* %386 to i64
  %389 = ptrtoint i32* %387 to i64
  %390 = sub i64 %388, %389
  %391 = sdiv exact i64 %390, 4
  %392 = add nsw i64 %391, 8
  %393 = and i64 %392, 67108860
  %394 = or i64 %381, %393
  %395 = trunc i64 %394 to i32
  %396 = load i32*, i32** %10, align 8
  %397 = call i32 @bfd_put_32(i32 %379, i32 %395, i32* %396)
  %398 = load i32, i32* %12, align 4
  %399 = add i32 %398, 1
  store i32 %399, i32* %12, align 4
  %400 = load i32*, i32** %10, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 4
  store i32* %401, i32** %10, align 8
  br label %316

402:                                              ; preds = %316
  %403 = load i32*, i32** %10, align 8
  %404 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %405 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %404, i32 0, i32 2
  %406 = load %struct.TYPE_19__*, %struct.TYPE_19__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %406, i32 0, i32 2
  %408 = load i32*, i32** %407, align 8
  %409 = ptrtoint i32* %403 to i64
  %410 = ptrtoint i32* %408 to i64
  %411 = sub i64 %409, %410
  %412 = sdiv exact i64 %411, 4
  %413 = trunc i64 %412 to i32
  %414 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %415 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %414, i32 0, i32 2
  %416 = load %struct.TYPE_19__*, %struct.TYPE_19__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %416, i32 0, i32 1
  store i32 %413, i32* %417, align 4
  br label %418

418:                                              ; preds = %402, %75, %70
  %419 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %420 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %419, i32 0, i32 6
  %421 = load %struct.TYPE_17__*, %struct.TYPE_17__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %451

425:                                              ; preds = %418
  %426 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %427 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %426, i32 0, i32 6
  %428 = load %struct.TYPE_17__*, %struct.TYPE_17__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %428, i32 0, i32 2
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %429, align 8
  %431 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %432 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %431, i32 0, i32 6
  %433 = load %struct.TYPE_17__*, %struct.TYPE_17__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = call i8* @bfd_zalloc(%struct.TYPE_13__* %430, i64 %435)
  %437 = bitcast i8* %436 to i32*
  %438 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %439 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %438, i32 0, i32 6
  %440 = load %struct.TYPE_17__*, %struct.TYPE_17__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %440, i32 0, i32 1
  store i32* %437, i32** %441, align 8
  %442 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %443 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %442, i32 0, i32 6
  %444 = load %struct.TYPE_17__*, %struct.TYPE_17__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %444, i32 0, i32 1
  %446 = load i32*, i32** %445, align 8
  %447 = icmp eq i32* %446, null
  br i1 %447, label %448, label %450

448:                                              ; preds = %425
  %449 = load i8*, i8** @FALSE, align 8
  store i8* %449, i8** %4, align 8
  br label %628

450:                                              ; preds = %425
  br label %451

451:                                              ; preds = %450, %418
  %452 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %453 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %452, i32 0, i32 4
  %454 = load %struct.TYPE_18__*, %struct.TYPE_18__** %453, align 8
  %455 = icmp ne %struct.TYPE_18__* %454, null
  br i1 %455, label %456, label %489

456:                                              ; preds = %451
  %457 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %458 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %457, i32 0, i32 4
  %459 = load %struct.TYPE_18__*, %struct.TYPE_18__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %489

463:                                              ; preds = %456
  %464 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %465 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %464, i32 0, i32 4
  %466 = load %struct.TYPE_18__*, %struct.TYPE_18__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %466, i32 0, i32 3
  %468 = load %struct.TYPE_13__*, %struct.TYPE_13__** %467, align 8
  %469 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %470 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %469, i32 0, i32 4
  %471 = load %struct.TYPE_18__*, %struct.TYPE_18__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = call i8* @bfd_zalloc(%struct.TYPE_13__* %468, i64 %473)
  %475 = bitcast i8* %474 to i32*
  %476 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %477 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %476, i32 0, i32 4
  %478 = load %struct.TYPE_18__*, %struct.TYPE_18__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %478, i32 0, i32 2
  store i32* %475, i32** %479, align 8
  %480 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %481 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %480, i32 0, i32 4
  %482 = load %struct.TYPE_18__*, %struct.TYPE_18__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %482, i32 0, i32 2
  %484 = load i32*, i32** %483, align 8
  %485 = icmp eq i32* %484, null
  br i1 %485, label %486, label %488

486:                                              ; preds = %463
  %487 = load i8*, i8** @FALSE, align 8
  store i8* %487, i8** %4, align 8
  br label %628

488:                                              ; preds = %463
  br label %489

489:                                              ; preds = %488, %456, %451
  %490 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %491 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %490, i32 0, i32 5
  %492 = load i32, i32* @ppc_build_one_stub, align 4
  %493 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %494 = call i32 @bfd_hash_traverse(i32* %491, i32 %492, %struct.bfd_link_info* %493)
  %495 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %496 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %495, i32 0, i32 4
  %497 = load %struct.TYPE_18__*, %struct.TYPE_18__** %496, align 8
  %498 = icmp ne %struct.TYPE_18__* %497, null
  br i1 %498, label %499, label %504

499:                                              ; preds = %489
  %500 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %501 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %500, i32 0, i32 4
  %502 = load %struct.TYPE_18__*, %struct.TYPE_18__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %502, i32 0, i32 1
  store i64 0, i64* %503, align 8
  br label %504

504:                                              ; preds = %499, %489
  %505 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %506 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %505, i32 0, i32 3
  %507 = load %struct.TYPE_13__*, %struct.TYPE_13__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %507, i32 0, i32 0
  %509 = load %struct.TYPE_12__*, %struct.TYPE_12__** %508, align 8
  store %struct.TYPE_12__* %509, %struct.TYPE_12__** %9, align 8
  br label %510

510:                                              ; preds = %533, %504
  %511 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %512 = icmp ne %struct.TYPE_12__* %511, null
  br i1 %512, label %513, label %537

513:                                              ; preds = %510
  %514 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %515 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %518 = and i32 %516, %517
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %532

520:                                              ; preds = %513
  %521 = load i32, i32* %11, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %11, align 4
  %523 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %524 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %523, i32 0, i32 2
  %525 = load i64, i64* %524, align 8
  %526 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %527 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %526, i32 0, i32 1
  %528 = load i64, i64* %527, align 8
  %529 = icmp ne i64 %525, %528
  br i1 %529, label %530, label %531

530:                                              ; preds = %520
  br label %537

531:                                              ; preds = %520
  br label %532

532:                                              ; preds = %531, %513
  br label %533

533:                                              ; preds = %532
  %534 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %535 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %534, i32 0, i32 3
  %536 = load %struct.TYPE_12__*, %struct.TYPE_12__** %535, align 8
  store %struct.TYPE_12__* %536, %struct.TYPE_12__** %9, align 8
  br label %510

537:                                              ; preds = %530, %510
  %538 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %539 = icmp ne %struct.TYPE_12__* %538, null
  br i1 %539, label %552, label %540

540:                                              ; preds = %537
  %541 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %542 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %541, i32 0, i32 2
  %543 = load %struct.TYPE_19__*, %struct.TYPE_19__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %547 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %546, i32 0, i32 2
  %548 = load %struct.TYPE_19__*, %struct.TYPE_19__** %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 8
  %551 = icmp ne i32 %545, %550
  br i1 %551, label %552, label %558

552:                                              ; preds = %540, %537
  %553 = load i8*, i8** @TRUE, align 8
  %554 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %555 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %554, i32 0, i32 1
  store i8* %553, i8** %555, align 8
  %556 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %557 = call i32 @_bfd_error_handler(i8* %556)
  br label %558

558:                                              ; preds = %552, %540
  %559 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %560 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %559, i32 0, i32 1
  %561 = load i8*, i8** %560, align 8
  %562 = icmp ne i8* %561, null
  br i1 %562, label %563, label %565

563:                                              ; preds = %558
  %564 = load i8*, i8** @FALSE, align 8
  store i8* %564, i8** %4, align 8
  br label %628

565:                                              ; preds = %558
  %566 = load i8**, i8*** %7, align 8
  %567 = icmp ne i8** %566, null
  br i1 %567, label %568, label %626

568:                                              ; preds = %565
  %569 = call i8* @bfd_malloc(i32 500)
  %570 = load i8**, i8*** %7, align 8
  store i8* %569, i8** %570, align 8
  %571 = load i8**, i8*** %7, align 8
  %572 = load i8*, i8** %571, align 8
  %573 = icmp eq i8* %572, null
  br i1 %573, label %574, label %576

574:                                              ; preds = %568
  %575 = load i8*, i8** @FALSE, align 8
  store i8* %575, i8** %4, align 8
  br label %628

576:                                              ; preds = %568
  %577 = load i8**, i8*** %7, align 8
  %578 = load i8*, i8** %577, align 8
  %579 = call i8* @_(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.2, i64 0, i64 0))
  %580 = load i32, i32* %11, align 4
  %581 = load i32, i32* %11, align 4
  %582 = icmp eq i32 %581, 1
  %583 = zext i1 %582 to i64
  %584 = select i1 %582, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %585 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %586 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %585, i32 0, i32 0
  %587 = load i32*, i32** %586, align 8
  %588 = load i32, i32* @ppc_stub_long_branch, align 4
  %589 = sub nsw i32 %588, 1
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i32, i32* %587, i64 %590
  %592 = load i32, i32* %591, align 4
  %593 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %594 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %593, i32 0, i32 0
  %595 = load i32*, i32** %594, align 8
  %596 = load i32, i32* @ppc_stub_long_branch_r2off, align 4
  %597 = sub nsw i32 %596, 1
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i32, i32* %595, i64 %598
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %602 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %601, i32 0, i32 0
  %603 = load i32*, i32** %602, align 8
  %604 = load i32, i32* @ppc_stub_plt_branch, align 4
  %605 = sub nsw i32 %604, 1
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i32, i32* %603, i64 %606
  %608 = load i32, i32* %607, align 4
  %609 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %610 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %609, i32 0, i32 0
  %611 = load i32*, i32** %610, align 8
  %612 = load i32, i32* @ppc_stub_plt_branch_r2off, align 4
  %613 = sub nsw i32 %612, 1
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i32, i32* %611, i64 %614
  %616 = load i32, i32* %615, align 4
  %617 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %8, align 8
  %618 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %617, i32 0, i32 0
  %619 = load i32*, i32** %618, align 8
  %620 = load i32, i32* @ppc_stub_plt_call, align 4
  %621 = sub nsw i32 %620, 1
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i32, i32* %619, i64 %622
  %624 = load i32, i32* %623, align 4
  %625 = call i32 @sprintf(i8* %578, i8* %579, i32 %580, i8* %584, i32 %592, i32 %600, i32 %608, i32 %616, i32 %624)
  br label %626

626:                                              ; preds = %576, %565
  %627 = load i8*, i8** @TRUE, align 8
  store i8* %627, i8** %4, align 8
  br label %628

628:                                              ; preds = %626, %574, %563, %486, %448, %96, %55
  %629 = load i8*, i8** %4, align 8
  ret i8* %629
}

declare dso_local %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info*) #1

declare dso_local i8* @bfd_zalloc(%struct.TYPE_13__*, i64) #1

declare dso_local %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @bfd_put_64(i32, i64, i32*) #1

declare dso_local i32 @bfd_put_32(i32, i32, i32*) #1

declare dso_local i32 @PPC_HI(i32) #1

declare dso_local i32 @PPC_LO(i32) #1

declare dso_local i32 @bfd_hash_traverse(i32*, i32, %struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_error_handler(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
