; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-strtab.c__bfd_elf_strtab_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-strtab.c__bfd_elf_strtab_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_strtab_hash = type { i64, i32, %struct.elf_strtab_hash_entry** }
%struct.elf_strtab_hash_entry = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_elf_strtab_offset(%struct.elf_strtab_hash* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.elf_strtab_hash*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.elf_strtab_hash_entry*, align 8
  store %struct.elf_strtab_hash* %0, %struct.elf_strtab_hash** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i64 0, i64* %3, align 8
  br label %47

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %4, align 8
  %13 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BFD_ASSERT(i32 %16)
  %18 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %4, align 8
  %19 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @BFD_ASSERT(i32 %20)
  %22 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %4, align 8
  %23 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %22, i32 0, i32 2
  %24 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %24, i64 %25
  %27 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %26, align 8
  store %struct.elf_strtab_hash_entry* %27, %struct.elf_strtab_hash_entry** %6, align 8
  %28 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %6, align 8
  %29 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @BFD_ASSERT(i32 %32)
  %34 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %6, align 8
  %35 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %4, align 8
  %39 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %38, i32 0, i32 2
  %40 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %40, i64 %41
  %43 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %42, align 8
  %44 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %10, %9
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
