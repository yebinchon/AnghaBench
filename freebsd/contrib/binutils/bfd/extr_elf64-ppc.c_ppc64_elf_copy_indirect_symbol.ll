; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_copy_indirect_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_copy_indirect_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_entry = type { i32 }
%struct.ppc_link_hash_entry = type { %struct.TYPE_9__, i32, i32, i32, %struct.ppc_dyn_relocs* }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.got_entry* }
%struct.got_entry = type { i64, i64, i64, %struct.got_entry*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.ppc_dyn_relocs = type { i64, %struct.ppc_dyn_relocs*, i64, i64 }
%struct.TYPE_10__ = type { i32 }

@ELIMINATE_COPY_RELOCS = common dso_local global i64 0, align 8
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfd_link_info*, %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry*)* @ppc64_elf_copy_indirect_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc64_elf_copy_indirect_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry* %2) #0 {
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca %struct.elf_link_hash_entry*, align 8
  %7 = alloca %struct.ppc_link_hash_entry*, align 8
  %8 = alloca %struct.ppc_link_hash_entry*, align 8
  %9 = alloca %struct.ppc_dyn_relocs**, align 8
  %10 = alloca %struct.ppc_dyn_relocs*, align 8
  %11 = alloca %struct.ppc_dyn_relocs*, align 8
  %12 = alloca %struct.got_entry**, align 8
  %13 = alloca %struct.got_entry*, align 8
  %14 = alloca %struct.got_entry*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  store %struct.elf_link_hash_entry* %2, %struct.elf_link_hash_entry** %6, align 8
  %15 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %16 = bitcast %struct.elf_link_hash_entry* %15 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %16, %struct.ppc_link_hash_entry** %7, align 8
  %17 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %18 = bitcast %struct.elf_link_hash_entry* %17 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %18, %struct.ppc_link_hash_entry** %8, align 8
  %19 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %20 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %19, i32 0, i32 4
  %21 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %20, align 8
  %22 = icmp ne %struct.ppc_dyn_relocs* %21, null
  br i1 %22, label %23, label %94

23:                                               ; preds = %3
  %24 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %25 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %24, i32 0, i32 4
  %26 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %25, align 8
  %27 = icmp ne %struct.ppc_dyn_relocs* %26, null
  br i1 %27, label %28, label %86

28:                                               ; preds = %23
  %29 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %30 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %29, i32 0, i32 4
  store %struct.ppc_dyn_relocs** %30, %struct.ppc_dyn_relocs*** %9, align 8
  br label %31

31:                                               ; preds = %80, %28
  %32 = load %struct.ppc_dyn_relocs**, %struct.ppc_dyn_relocs*** %9, align 8
  %33 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %32, align 8
  store %struct.ppc_dyn_relocs* %33, %struct.ppc_dyn_relocs** %10, align 8
  %34 = icmp ne %struct.ppc_dyn_relocs* %33, null
  br i1 %34, label %35, label %81

35:                                               ; preds = %31
  %36 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %37 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %36, i32 0, i32 4
  %38 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %37, align 8
  store %struct.ppc_dyn_relocs* %38, %struct.ppc_dyn_relocs** %11, align 8
  br label %39

39:                                               ; preds = %70, %35
  %40 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %11, align 8
  %41 = icmp ne %struct.ppc_dyn_relocs* %40, null
  br i1 %41, label %42, label %74

42:                                               ; preds = %39
  %43 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %11, align 8
  %44 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %47 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %42
  %51 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %52 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %11, align 8
  %55 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %59 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %11, align 8
  %62 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %66 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %65, i32 0, i32 1
  %67 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %66, align 8
  %68 = load %struct.ppc_dyn_relocs**, %struct.ppc_dyn_relocs*** %9, align 8
  store %struct.ppc_dyn_relocs* %67, %struct.ppc_dyn_relocs** %68, align 8
  br label %74

69:                                               ; preds = %42
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %11, align 8
  %72 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %71, i32 0, i32 1
  %73 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %72, align 8
  store %struct.ppc_dyn_relocs* %73, %struct.ppc_dyn_relocs** %11, align 8
  br label %39

74:                                               ; preds = %50, %39
  %75 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %11, align 8
  %76 = icmp eq %struct.ppc_dyn_relocs* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %10, align 8
  %79 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %78, i32 0, i32 1
  store %struct.ppc_dyn_relocs** %79, %struct.ppc_dyn_relocs*** %9, align 8
  br label %80

80:                                               ; preds = %77, %74
  br label %31

81:                                               ; preds = %31
  %82 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %83 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %82, i32 0, i32 4
  %84 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %83, align 8
  %85 = load %struct.ppc_dyn_relocs**, %struct.ppc_dyn_relocs*** %9, align 8
  store %struct.ppc_dyn_relocs* %84, %struct.ppc_dyn_relocs** %85, align 8
  br label %86

86:                                               ; preds = %81, %23
  %87 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %88 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %87, i32 0, i32 4
  %89 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %88, align 8
  %90 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %91 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %90, i32 0, i32 4
  store %struct.ppc_dyn_relocs* %89, %struct.ppc_dyn_relocs** %91, align 8
  %92 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %93 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %92, i32 0, i32 4
  store %struct.ppc_dyn_relocs* null, %struct.ppc_dyn_relocs** %93, align 8
  br label %94

94:                                               ; preds = %86, %3
  %95 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %96 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %99 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %103 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %106 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %110 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %113 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load i64, i64* @ELIMINATE_COPY_RELOCS, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %94
  %119 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %120 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @bfd_link_hash_indirect, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %118
  %127 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %128 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 9
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %126, %118, %94
  %133 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %134 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %138 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %136
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %132, %126
  %143 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %144 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %148 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %146
  store i32 %151, i32* %149, align 4
  %152 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %153 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %157 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %155
  store i32 %160, i32* %158, align 8
  %161 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %162 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %166 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %164
  store i32 %169, i32* %167, align 4
  %170 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %171 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %175 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %173
  store i32 %178, i32* %176, align 8
  %179 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %180 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @bfd_link_hash_indirect, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %142
  br label %336

187:                                              ; preds = %142
  %188 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %189 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load %struct.got_entry*, %struct.got_entry** %191, align 8
  %193 = icmp ne %struct.got_entry* %192, null
  br i1 %193, label %194, label %290

194:                                              ; preds = %187
  %195 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %196 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load %struct.got_entry*, %struct.got_entry** %198, align 8
  %200 = icmp ne %struct.got_entry* %199, null
  br i1 %200, label %201, label %276

201:                                              ; preds = %194
  %202 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %203 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  store %struct.got_entry** %205, %struct.got_entry*** %12, align 8
  br label %206

206:                                              ; preds = %268, %201
  %207 = load %struct.got_entry**, %struct.got_entry*** %12, align 8
  %208 = load %struct.got_entry*, %struct.got_entry** %207, align 8
  store %struct.got_entry* %208, %struct.got_entry** %13, align 8
  %209 = icmp ne %struct.got_entry* %208, null
  br i1 %209, label %210, label %269

210:                                              ; preds = %206
  %211 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %212 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load %struct.got_entry*, %struct.got_entry** %214, align 8
  store %struct.got_entry* %215, %struct.got_entry** %14, align 8
  br label %216

216:                                              ; preds = %258, %210
  %217 = load %struct.got_entry*, %struct.got_entry** %14, align 8
  %218 = icmp ne %struct.got_entry* %217, null
  br i1 %218, label %219, label %262

219:                                              ; preds = %216
  %220 = load %struct.got_entry*, %struct.got_entry** %14, align 8
  %221 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.got_entry*, %struct.got_entry** %13, align 8
  %224 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %222, %225
  br i1 %226, label %227, label %257

227:                                              ; preds = %219
  %228 = load %struct.got_entry*, %struct.got_entry** %14, align 8
  %229 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.got_entry*, %struct.got_entry** %13, align 8
  %232 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %230, %233
  br i1 %234, label %235, label %257

235:                                              ; preds = %227
  %236 = load %struct.got_entry*, %struct.got_entry** %14, align 8
  %237 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.got_entry*, %struct.got_entry** %13, align 8
  %240 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %238, %241
  br i1 %242, label %243, label %257

243:                                              ; preds = %235
  %244 = load %struct.got_entry*, %struct.got_entry** %13, align 8
  %245 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.got_entry*, %struct.got_entry** %14, align 8
  %249 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, %247
  store i64 %252, i64* %250, align 8
  %253 = load %struct.got_entry*, %struct.got_entry** %13, align 8
  %254 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %253, i32 0, i32 3
  %255 = load %struct.got_entry*, %struct.got_entry** %254, align 8
  %256 = load %struct.got_entry**, %struct.got_entry*** %12, align 8
  store %struct.got_entry* %255, %struct.got_entry** %256, align 8
  br label %262

257:                                              ; preds = %235, %227, %219
  br label %258

258:                                              ; preds = %257
  %259 = load %struct.got_entry*, %struct.got_entry** %14, align 8
  %260 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %259, i32 0, i32 3
  %261 = load %struct.got_entry*, %struct.got_entry** %260, align 8
  store %struct.got_entry* %261, %struct.got_entry** %14, align 8
  br label %216

262:                                              ; preds = %243, %216
  %263 = load %struct.got_entry*, %struct.got_entry** %14, align 8
  %264 = icmp eq %struct.got_entry* %263, null
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load %struct.got_entry*, %struct.got_entry** %13, align 8
  %267 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %266, i32 0, i32 3
  store %struct.got_entry** %267, %struct.got_entry*** %12, align 8
  br label %268

268:                                              ; preds = %265, %262
  br label %206

269:                                              ; preds = %206
  %270 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %271 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load %struct.got_entry*, %struct.got_entry** %273, align 8
  %275 = load %struct.got_entry**, %struct.got_entry*** %12, align 8
  store %struct.got_entry* %274, %struct.got_entry** %275, align 8
  br label %276

276:                                              ; preds = %269, %194
  %277 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %278 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 0
  %281 = load %struct.got_entry*, %struct.got_entry** %280, align 8
  %282 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %283 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  store %struct.got_entry* %281, %struct.got_entry** %285, align 8
  %286 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %287 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 0
  store %struct.got_entry* null, %struct.got_entry** %289, align 8
  br label %290

290:                                              ; preds = %276, %187
  %291 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %292 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %293 = call i32 @move_plt_plist(%struct.ppc_link_hash_entry* %291, %struct.ppc_link_hash_entry* %292)
  %294 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %295 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp ne i32 %297, -1
  br i1 %298, label %299, label %336

299:                                              ; preds = %290
  %300 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %301 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, -1
  br i1 %304, label %305, label %315

305:                                              ; preds = %299
  %306 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %307 = call %struct.TYPE_10__* @elf_hash_table(%struct.bfd_link_info* %306)
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %311 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = call i32 @_bfd_elf_strtab_delref(i32 %309, i64 %313)
  br label %315

315:                                              ; preds = %305, %299
  %316 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %317 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %321 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 0
  store i32 %319, i32* %322, align 8
  %323 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %324 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %328 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 1
  store i64 %326, i64* %329, align 8
  %330 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %331 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 0
  store i32 -1, i32* %332, align 8
  %333 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %334 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 1
  store i64 0, i64* %335, align 8
  br label %336

336:                                              ; preds = %186, %315, %290
  ret void
}

declare dso_local i32 @move_plt_plist(%struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry*) #1

declare dso_local i32 @_bfd_elf_strtab_delref(i32, i64) #1

declare dso_local %struct.TYPE_10__* @elf_hash_table(%struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
