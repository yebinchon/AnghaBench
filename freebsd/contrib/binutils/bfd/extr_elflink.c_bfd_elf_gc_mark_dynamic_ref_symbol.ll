; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_gc_mark_dynamic_ref_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_gc_mark_dynamic_ref_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_10__, i32, i64, i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.bfd_link_info = type { i32 }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@STV_INTERNAL = common dso_local global i64 0, align 8
@STV_HIDDEN = common dso_local global i64 0, align 8
@SEC_KEEP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_elf_gc_mark_dynamic_ref_symbol(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.elf_link_hash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.bfd_link_info*
  store %struct.bfd_link_info* %7, %struct.bfd_link_info** %5, align 8
  %8 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %9 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @bfd_link_hash_warning, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %16 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %21, %struct.elf_link_hash_entry** %3, align 8
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %24 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @bfd_link_hash_defined, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %31 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @bfd_link_hash_defweak, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %29, %22
  %37 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %38 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %65, label %41

41:                                               ; preds = %36
  %42 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %43 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %41
  %47 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %48 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %46
  %52 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %53 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @ELF_ST_VISIBILITY(i32 %54)
  %56 = load i64, i64* @STV_INTERNAL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %51
  %59 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %60 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @ELF_ST_VISIBILITY(i32 %61)
  %63 = load i64, i64* @STV_HIDDEN, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %58, %36
  %66 = load i32, i32* @SEC_KEEP, align 4
  %67 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %68 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %66
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %65, %58, %51, %46, %41, %29
  %77 = load i32, i32* @TRUE, align 4
  ret i32 %77
}

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
