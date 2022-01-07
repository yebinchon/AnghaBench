; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_copy_indirect_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_copy_indirect_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_entry = type { i32 }
%struct.ppc_elf_link_hash_entry = type { %struct.TYPE_11__, i32, i32, %struct.ppc_elf_dyn_relocs* }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { %struct.plt_entry* }
%struct.plt_entry = type { i64, i64, %struct.plt_entry*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.ppc_elf_dyn_relocs = type { i64, %struct.ppc_elf_dyn_relocs*, i64, i64 }
%struct.TYPE_12__ = type { i32 }

@ELIMINATE_COPY_RELOCS = common dso_local global i64 0, align 8
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfd_link_info*, %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry*)* @ppc_elf_copy_indirect_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc_elf_copy_indirect_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry* %2) #0 {
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca %struct.elf_link_hash_entry*, align 8
  %7 = alloca %struct.ppc_elf_link_hash_entry*, align 8
  %8 = alloca %struct.ppc_elf_link_hash_entry*, align 8
  %9 = alloca %struct.ppc_elf_dyn_relocs**, align 8
  %10 = alloca %struct.ppc_elf_dyn_relocs*, align 8
  %11 = alloca %struct.ppc_elf_dyn_relocs*, align 8
  %12 = alloca %struct.plt_entry**, align 8
  %13 = alloca %struct.plt_entry*, align 8
  %14 = alloca %struct.plt_entry*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  store %struct.elf_link_hash_entry* %2, %struct.elf_link_hash_entry** %6, align 8
  %15 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %16 = bitcast %struct.elf_link_hash_entry* %15 to %struct.ppc_elf_link_hash_entry*
  store %struct.ppc_elf_link_hash_entry* %16, %struct.ppc_elf_link_hash_entry** %7, align 8
  %17 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %18 = bitcast %struct.elf_link_hash_entry* %17 to %struct.ppc_elf_link_hash_entry*
  store %struct.ppc_elf_link_hash_entry* %18, %struct.ppc_elf_link_hash_entry** %8, align 8
  %19 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %20 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %19, i32 0, i32 3
  %21 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %20, align 8
  %22 = icmp ne %struct.ppc_elf_dyn_relocs* %21, null
  br i1 %22, label %23, label %94

23:                                               ; preds = %3
  %24 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %25 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %24, i32 0, i32 3
  %26 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %25, align 8
  %27 = icmp ne %struct.ppc_elf_dyn_relocs* %26, null
  br i1 %27, label %28, label %86

28:                                               ; preds = %23
  %29 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %30 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %29, i32 0, i32 3
  store %struct.ppc_elf_dyn_relocs** %30, %struct.ppc_elf_dyn_relocs*** %9, align 8
  br label %31

31:                                               ; preds = %80, %28
  %32 = load %struct.ppc_elf_dyn_relocs**, %struct.ppc_elf_dyn_relocs*** %9, align 8
  %33 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %32, align 8
  store %struct.ppc_elf_dyn_relocs* %33, %struct.ppc_elf_dyn_relocs** %10, align 8
  %34 = icmp ne %struct.ppc_elf_dyn_relocs* %33, null
  br i1 %34, label %35, label %81

35:                                               ; preds = %31
  %36 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %37 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %36, i32 0, i32 3
  %38 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %37, align 8
  store %struct.ppc_elf_dyn_relocs* %38, %struct.ppc_elf_dyn_relocs** %11, align 8
  br label %39

39:                                               ; preds = %70, %35
  %40 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %11, align 8
  %41 = icmp ne %struct.ppc_elf_dyn_relocs* %40, null
  br i1 %41, label %42, label %74

42:                                               ; preds = %39
  %43 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %11, align 8
  %44 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %10, align 8
  %47 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %42
  %51 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %10, align 8
  %52 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %11, align 8
  %55 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %10, align 8
  %59 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %11, align 8
  %62 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %10, align 8
  %66 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %65, i32 0, i32 1
  %67 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %66, align 8
  %68 = load %struct.ppc_elf_dyn_relocs**, %struct.ppc_elf_dyn_relocs*** %9, align 8
  store %struct.ppc_elf_dyn_relocs* %67, %struct.ppc_elf_dyn_relocs** %68, align 8
  br label %74

69:                                               ; preds = %42
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %11, align 8
  %72 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %71, i32 0, i32 1
  %73 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %72, align 8
  store %struct.ppc_elf_dyn_relocs* %73, %struct.ppc_elf_dyn_relocs** %11, align 8
  br label %39

74:                                               ; preds = %50, %39
  %75 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %11, align 8
  %76 = icmp eq %struct.ppc_elf_dyn_relocs* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %10, align 8
  %79 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %78, i32 0, i32 1
  store %struct.ppc_elf_dyn_relocs** %79, %struct.ppc_elf_dyn_relocs*** %9, align 8
  br label %80

80:                                               ; preds = %77, %74
  br label %31

81:                                               ; preds = %31
  %82 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %83 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %82, i32 0, i32 3
  %84 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %83, align 8
  %85 = load %struct.ppc_elf_dyn_relocs**, %struct.ppc_elf_dyn_relocs*** %9, align 8
  store %struct.ppc_elf_dyn_relocs* %84, %struct.ppc_elf_dyn_relocs** %85, align 8
  br label %86

86:                                               ; preds = %81, %23
  %87 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %88 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %87, i32 0, i32 3
  %89 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %88, align 8
  %90 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %91 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %90, i32 0, i32 3
  store %struct.ppc_elf_dyn_relocs* %89, %struct.ppc_elf_dyn_relocs** %91, align 8
  %92 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %93 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %92, i32 0, i32 3
  store %struct.ppc_elf_dyn_relocs* null, %struct.ppc_elf_dyn_relocs** %93, align 8
  br label %94

94:                                               ; preds = %86, %3
  %95 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %96 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %99 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %103 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %106 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i64, i64* @ELIMINATE_COPY_RELOCS, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %94
  %112 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %113 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @bfd_link_hash_indirect, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %111
  %120 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %121 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 10
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %119, %111, %94
  %126 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %127 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %131 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 9
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %129
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %125, %119
  %136 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %137 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %141 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %139
  store i32 %144, i32* %142, align 4
  %145 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %146 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %150 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %148
  store i32 %153, i32* %151, align 8
  %154 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %155 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %159 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %157
  store i32 %162, i32* %160, align 4
  %163 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %164 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %168 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %166
  store i32 %171, i32* %169, align 8
  %172 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %173 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @bfd_link_hash_indirect, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %135
  br label %333

180:                                              ; preds = %135
  %181 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %182 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %187 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, %185
  store i64 %191, i64* %189, align 8
  %192 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %193 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  store i64 0, i64* %195, align 8
  %196 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %197 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load %struct.plt_entry*, %struct.plt_entry** %199, align 8
  %201 = icmp ne %struct.plt_entry* %200, null
  br i1 %201, label %202, label %290

202:                                              ; preds = %180
  %203 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %204 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load %struct.plt_entry*, %struct.plt_entry** %206, align 8
  %208 = icmp ne %struct.plt_entry* %207, null
  br i1 %208, label %209, label %276

209:                                              ; preds = %202
  %210 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %211 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  store %struct.plt_entry** %213, %struct.plt_entry*** %12, align 8
  br label %214

214:                                              ; preds = %268, %209
  %215 = load %struct.plt_entry**, %struct.plt_entry*** %12, align 8
  %216 = load %struct.plt_entry*, %struct.plt_entry** %215, align 8
  store %struct.plt_entry* %216, %struct.plt_entry** %13, align 8
  %217 = icmp ne %struct.plt_entry* %216, null
  br i1 %217, label %218, label %269

218:                                              ; preds = %214
  %219 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %220 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load %struct.plt_entry*, %struct.plt_entry** %222, align 8
  store %struct.plt_entry* %223, %struct.plt_entry** %14, align 8
  br label %224

224:                                              ; preds = %258, %218
  %225 = load %struct.plt_entry*, %struct.plt_entry** %14, align 8
  %226 = icmp ne %struct.plt_entry* %225, null
  br i1 %226, label %227, label %262

227:                                              ; preds = %224
  %228 = load %struct.plt_entry*, %struct.plt_entry** %14, align 8
  %229 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.plt_entry*, %struct.plt_entry** %13, align 8
  %232 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %230, %233
  br i1 %234, label %235, label %257

235:                                              ; preds = %227
  %236 = load %struct.plt_entry*, %struct.plt_entry** %14, align 8
  %237 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.plt_entry*, %struct.plt_entry** %13, align 8
  %240 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %238, %241
  br i1 %242, label %243, label %257

243:                                              ; preds = %235
  %244 = load %struct.plt_entry*, %struct.plt_entry** %13, align 8
  %245 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.plt_entry*, %struct.plt_entry** %14, align 8
  %249 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, %247
  store i64 %252, i64* %250, align 8
  %253 = load %struct.plt_entry*, %struct.plt_entry** %13, align 8
  %254 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %253, i32 0, i32 2
  %255 = load %struct.plt_entry*, %struct.plt_entry** %254, align 8
  %256 = load %struct.plt_entry**, %struct.plt_entry*** %12, align 8
  store %struct.plt_entry* %255, %struct.plt_entry** %256, align 8
  br label %262

257:                                              ; preds = %235, %227
  br label %258

258:                                              ; preds = %257
  %259 = load %struct.plt_entry*, %struct.plt_entry** %14, align 8
  %260 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %259, i32 0, i32 2
  %261 = load %struct.plt_entry*, %struct.plt_entry** %260, align 8
  store %struct.plt_entry* %261, %struct.plt_entry** %14, align 8
  br label %224

262:                                              ; preds = %243, %224
  %263 = load %struct.plt_entry*, %struct.plt_entry** %14, align 8
  %264 = icmp eq %struct.plt_entry* %263, null
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load %struct.plt_entry*, %struct.plt_entry** %13, align 8
  %267 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %266, i32 0, i32 2
  store %struct.plt_entry** %267, %struct.plt_entry*** %12, align 8
  br label %268

268:                                              ; preds = %265, %262
  br label %214

269:                                              ; preds = %214
  %270 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %271 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = load %struct.plt_entry*, %struct.plt_entry** %273, align 8
  %275 = load %struct.plt_entry**, %struct.plt_entry*** %12, align 8
  store %struct.plt_entry* %274, %struct.plt_entry** %275, align 8
  br label %276

276:                                              ; preds = %269, %202
  %277 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %278 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 0
  %281 = load %struct.plt_entry*, %struct.plt_entry** %280, align 8
  %282 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %283 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 0
  store %struct.plt_entry* %281, %struct.plt_entry** %285, align 8
  %286 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %287 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 0
  store %struct.plt_entry* null, %struct.plt_entry** %289, align 8
  br label %290

290:                                              ; preds = %276, %180
  %291 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %292 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, -1
  br i1 %295, label %296, label %333

296:                                              ; preds = %290
  %297 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %298 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, -1
  br i1 %301, label %302, label %312

302:                                              ; preds = %296
  %303 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %304 = call %struct.TYPE_12__* @elf_hash_table(%struct.bfd_link_info* %303)
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %308 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = call i32 @_bfd_elf_strtab_delref(i32 %306, i64 %310)
  br label %312

312:                                              ; preds = %302, %296
  %313 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %314 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %318 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 0
  store i32 %316, i32* %319, align 8
  %320 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %321 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %7, align 8
  %325 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 1
  store i64 %323, i64* %326, align 8
  %327 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %328 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 0
  store i32 -1, i32* %329, align 8
  %330 = load %struct.ppc_elf_link_hash_entry*, %struct.ppc_elf_link_hash_entry** %8, align 8
  %331 = getelementptr inbounds %struct.ppc_elf_link_hash_entry, %struct.ppc_elf_link_hash_entry* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 1
  store i64 0, i64* %332, align 8
  br label %333

333:                                              ; preds = %179, %312, %290
  ret void
}

declare dso_local i32 @_bfd_elf_strtab_delref(i32, i64) #1

declare dso_local %struct.TYPE_12__* @elf_hash_table(%struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
