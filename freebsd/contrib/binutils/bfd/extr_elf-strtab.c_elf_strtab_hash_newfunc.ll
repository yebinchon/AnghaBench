; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-strtab.c_elf_strtab_hash_newfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-strtab.c_elf_strtab_hash_newfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_hash_entry = type { i32 }
%struct.bfd_hash_table = type { i32 }
%struct.elf_strtab_hash_entry = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* @elf_strtab_hash_newfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfd_hash_entry* @elf_strtab_hash_newfunc(%struct.bfd_hash_entry* %0, %struct.bfd_hash_table* %1, i8* %2) #0 {
  %4 = alloca %struct.bfd_hash_entry*, align 8
  %5 = alloca %struct.bfd_hash_entry*, align 8
  %6 = alloca %struct.bfd_hash_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.elf_strtab_hash_entry*, align 8
  store %struct.bfd_hash_entry* %0, %struct.bfd_hash_entry** %5, align 8
  store %struct.bfd_hash_table* %1, %struct.bfd_hash_table** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %10 = icmp eq %struct.bfd_hash_entry* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %13 = call %struct.bfd_hash_entry* @bfd_hash_allocate(%struct.bfd_hash_table* %12, i32 24)
  store %struct.bfd_hash_entry* %13, %struct.bfd_hash_entry** %5, align 8
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %16 = icmp eq %struct.bfd_hash_entry* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store %struct.bfd_hash_entry* null, %struct.bfd_hash_entry** %4, align 8
  br label %37

18:                                               ; preds = %14
  %19 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %20 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call %struct.bfd_hash_entry* @bfd_hash_newfunc(%struct.bfd_hash_entry* %19, %struct.bfd_hash_table* %20, i8* %21)
  store %struct.bfd_hash_entry* %22, %struct.bfd_hash_entry** %5, align 8
  %23 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %24 = icmp ne %struct.bfd_hash_entry* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %27 = bitcast %struct.bfd_hash_entry* %26 to %struct.elf_strtab_hash_entry*
  store %struct.elf_strtab_hash_entry* %27, %struct.elf_strtab_hash_entry** %8, align 8
  %28 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %8, align 8
  %29 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %8, align 8
  %32 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %8, align 8
  %34 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %25, %18
  %36 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  store %struct.bfd_hash_entry* %36, %struct.bfd_hash_entry** %4, align 8
  br label %37

37:                                               ; preds = %35, %17
  %38 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %4, align 8
  ret %struct.bfd_hash_entry* %38
}

declare dso_local %struct.bfd_hash_entry* @bfd_hash_allocate(%struct.bfd_hash_table*, i32) #1

declare dso_local %struct.bfd_hash_entry* @bfd_hash_newfunc(%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
