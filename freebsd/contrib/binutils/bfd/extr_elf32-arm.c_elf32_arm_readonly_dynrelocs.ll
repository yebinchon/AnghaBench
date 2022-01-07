; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_readonly_dynrelocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_readonly_dynrelocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.elf32_arm_link_hash_entry = type { %struct.elf32_arm_relocs_copied* }
%struct.elf32_arm_relocs_copied = type { %struct.TYPE_8__*, %struct.elf32_arm_relocs_copied* }
%struct.TYPE_8__ = type { i32 }
%struct.bfd_link_info = type { i32 }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@SEC_READONLY = common dso_local global i32 0, align 4
@DF_TEXTREL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i64)* @elf32_arm_readonly_dynrelocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_arm_readonly_dynrelocs(%struct.elf_link_hash_entry* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.elf32_arm_link_hash_entry*, align 8
  %7 = alloca %struct.elf32_arm_relocs_copied*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.bfd_link_info*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %11 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @bfd_link_hash_warning, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %18 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %23, %struct.elf_link_hash_entry** %4, align 8
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %26 = bitcast %struct.elf_link_hash_entry* %25 to %struct.elf32_arm_link_hash_entry*
  store %struct.elf32_arm_link_hash_entry* %26, %struct.elf32_arm_link_hash_entry** %6, align 8
  %27 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %6, align 8
  %28 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %27, i32 0, i32 0
  %29 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %28, align 8
  store %struct.elf32_arm_relocs_copied* %29, %struct.elf32_arm_relocs_copied** %7, align 8
  br label %30

30:                                               ; preds = %56, %24
  %31 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %7, align 8
  %32 = icmp ne %struct.elf32_arm_relocs_copied* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %30
  %34 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %7, align 8
  %35 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %8, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SEC_READONLY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i64, i64* %5, align 8
  %48 = inttoptr i64 %47 to %struct.bfd_link_info*
  store %struct.bfd_link_info* %48, %struct.bfd_link_info** %9, align 8
  %49 = load i32, i32* @DF_TEXTREL, align 4
  %50 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %51 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %62

55:                                               ; preds = %39, %33
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %7, align 8
  %58 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %57, i32 0, i32 1
  %59 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %58, align 8
  store %struct.elf32_arm_relocs_copied* %59, %struct.elf32_arm_relocs_copied** %7, align 8
  br label %30

60:                                               ; preds = %30
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %46
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
