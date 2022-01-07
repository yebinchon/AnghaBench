; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_readonly_dynrelocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_readonly_dynrelocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.ppc_elf_dyn_relocs = type { %struct.TYPE_9__*, %struct.ppc_elf_dyn_relocs* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.ppc_elf_dyn_relocs* }
%struct.bfd_link_info = type { i32 }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@DF_TEXTREL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @readonly_dynrelocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readonly_dynrelocs(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ppc_elf_dyn_relocs*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %9 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @bfd_link_hash_indirect, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %3, align 4
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %18 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @bfd_link_hash_warning, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %25 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %30, %struct.elf_link_hash_entry** %4, align 8
  br label %31

31:                                               ; preds = %23, %16
  %32 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %33 = call %struct.TYPE_12__* @ppc_elf_hash_entry(%struct.elf_link_hash_entry* %32)
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %34, align 8
  store %struct.ppc_elf_dyn_relocs* %35, %struct.ppc_elf_dyn_relocs** %6, align 8
  br label %36

36:                                               ; preds = %68, %31
  %37 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %6, align 8
  %38 = icmp ne %struct.ppc_elf_dyn_relocs* %37, null
  br i1 %38, label %39, label %72

39:                                               ; preds = %36
  %40 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %6, align 8
  %41 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %7, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = icmp ne %struct.TYPE_11__* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %39
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SEC_READONLY, align 4
  %52 = load i32, i32* @SEC_ALLOC, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = load i32, i32* @SEC_READONLY, align 4
  %56 = load i32, i32* @SEC_ALLOC, align 4
  %57 = or i32 %55, %56
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %47
  %60 = load i32, i32* @DF_TEXTREL, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = bitcast i8* %61 to %struct.bfd_link_info*
  %63 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %3, align 4
  br label %74

67:                                               ; preds = %47, %39
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %6, align 8
  %70 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %69, i32 0, i32 1
  %71 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %70, align 8
  store %struct.ppc_elf_dyn_relocs* %71, %struct.ppc_elf_dyn_relocs** %6, align 8
  br label %36

72:                                               ; preds = %36
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %59, %14
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_12__* @ppc_elf_hash_entry(%struct.elf_link_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
