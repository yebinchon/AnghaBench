; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_sec_merge_syms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_sec_merge_syms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@SEC_MERGE = common dso_local global i32 0, align 4
@ELF_INFO_TYPE_MERGE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_link_sec_merge_syms(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.elf_link_hash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %8 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @bfd_link_hash_warning, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %15 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %20, %struct.elf_link_hash_entry** %3, align 8
  br label %21

21:                                               ; preds = %13, %2
  %22 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %23 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @bfd_link_hash_defined, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %30 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @bfd_link_hash_defweak, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %78

35:                                               ; preds = %28, %21
  %36 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %37 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SEC_MERGE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %35
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ELF_INFO_TYPE_MERGE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %47
  %54 = load i8*, i8** %4, align 8
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %58 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = call %struct.TYPE_14__* @elf_section_data(%struct.TYPE_13__* %62)
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %67 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @_bfd_merged_section_offset(i32* %56, %struct.TYPE_13__** %61, i32 %65, i32 %71)
  %73 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %74 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 8
  br label %78

78:                                               ; preds = %53, %47, %35, %28
  %79 = load i32, i32* @TRUE, align 4
  ret i32 %79
}

declare dso_local i32 @_bfd_merged_section_offset(i32*, %struct.TYPE_13__**, i32, i32) #1

declare dso_local %struct.TYPE_14__* @elf_section_data(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
