; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c__bfd_score_elf_copy_indirect_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c__bfd_score_elf_copy_indirect_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.score_elf_link_hash_entry = type { i8*, i8*, i64 }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfd_link_info*, %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry*)* @_bfd_score_elf_copy_indirect_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bfd_score_elf_copy_indirect_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry* %2) #0 {
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca %struct.elf_link_hash_entry*, align 8
  %7 = alloca %struct.score_elf_link_hash_entry*, align 8
  %8 = alloca %struct.score_elf_link_hash_entry*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  store %struct.elf_link_hash_entry* %2, %struct.elf_link_hash_entry** %6, align 8
  %9 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %10 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %11 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %12 = call i32 @_bfd_elf_link_hash_copy_indirect(%struct.bfd_link_info* %9, %struct.elf_link_hash_entry* %10, %struct.elf_link_hash_entry* %11)
  %13 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %14 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @bfd_link_hash_indirect, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %49

20:                                               ; preds = %3
  %21 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %22 = bitcast %struct.elf_link_hash_entry* %21 to %struct.score_elf_link_hash_entry*
  store %struct.score_elf_link_hash_entry* %22, %struct.score_elf_link_hash_entry** %7, align 8
  %23 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %24 = bitcast %struct.elf_link_hash_entry* %23 to %struct.score_elf_link_hash_entry*
  store %struct.score_elf_link_hash_entry* %24, %struct.score_elf_link_hash_entry** %8, align 8
  %25 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %26 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %7, align 8
  %29 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %33 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = load i8*, i8** @TRUE, align 8
  %38 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %7, align 8
  %39 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %36, %20
  %41 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %42 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i8*, i8** @TRUE, align 8
  %47 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %7, align 8
  %48 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %19, %45, %40
  ret void
}

declare dso_local i32 @_bfd_elf_link_hash_copy_indirect(%struct.bfd_link_info*, %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
