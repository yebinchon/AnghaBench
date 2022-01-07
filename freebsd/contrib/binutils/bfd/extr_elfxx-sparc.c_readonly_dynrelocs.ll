; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c_readonly_dynrelocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c_readonly_dynrelocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct._bfd_sparc_elf_link_hash_entry = type { %struct._bfd_sparc_elf_dyn_relocs* }
%struct._bfd_sparc_elf_dyn_relocs = type { %struct.TYPE_7__*, %struct._bfd_sparc_elf_dyn_relocs* }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.bfd_link_info = type { i32 }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@SEC_READONLY = common dso_local global i32 0, align 4
@DF_TEXTREL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i64)* @readonly_dynrelocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readonly_dynrelocs(%struct.elf_link_hash_entry* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._bfd_sparc_elf_link_hash_entry*, align 8
  %7 = alloca %struct._bfd_sparc_elf_dyn_relocs*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.bfd_link_info*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %11 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @bfd_link_hash_warning, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %18 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %23, %struct.elf_link_hash_entry** %4, align 8
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %26 = bitcast %struct.elf_link_hash_entry* %25 to %struct._bfd_sparc_elf_link_hash_entry*
  store %struct._bfd_sparc_elf_link_hash_entry* %26, %struct._bfd_sparc_elf_link_hash_entry** %6, align 8
  %27 = load %struct._bfd_sparc_elf_link_hash_entry*, %struct._bfd_sparc_elf_link_hash_entry** %6, align 8
  %28 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_entry, %struct._bfd_sparc_elf_link_hash_entry* %27, i32 0, i32 0
  %29 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %28, align 8
  store %struct._bfd_sparc_elf_dyn_relocs* %29, %struct._bfd_sparc_elf_dyn_relocs** %7, align 8
  br label %30

30:                                               ; preds = %58, %24
  %31 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %7, align 8
  %32 = icmp ne %struct._bfd_sparc_elf_dyn_relocs* %31, null
  br i1 %32, label %33, label %62

33:                                               ; preds = %30
  %34 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %7, align 8
  %35 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %8, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = icmp ne %struct.TYPE_10__* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %33
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SEC_READONLY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load i64, i64* %5, align 8
  %50 = inttoptr i64 %49 to %struct.bfd_link_info*
  store %struct.bfd_link_info* %50, %struct.bfd_link_info** %9, align 8
  %51 = load i32, i32* @DF_TEXTREL, align 4
  %52 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %53 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %3, align 4
  br label %64

57:                                               ; preds = %41, %33
  br label %58

58:                                               ; preds = %57
  %59 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %7, align 8
  %60 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %59, i32 0, i32 1
  %61 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %60, align 8
  store %struct._bfd_sparc_elf_dyn_relocs* %61, %struct._bfd_sparc_elf_dyn_relocs** %7, align 8
  br label %30

62:                                               ; preds = %30
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %48
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
