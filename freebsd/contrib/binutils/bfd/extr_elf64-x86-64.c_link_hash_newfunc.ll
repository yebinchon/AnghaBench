; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_link_hash_newfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_link_hash_newfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_hash_entry = type { i32 }
%struct.bfd_hash_table = type { i32 }
%struct.elf64_x86_64_link_hash_entry = type { i64, i32, i32* }

@GOT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* @link_hash_newfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfd_hash_entry* @link_hash_newfunc(%struct.bfd_hash_entry* %0, %struct.bfd_hash_table* %1, i8* %2) #0 {
  %4 = alloca %struct.bfd_hash_entry*, align 8
  %5 = alloca %struct.bfd_hash_entry*, align 8
  %6 = alloca %struct.bfd_hash_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.elf64_x86_64_link_hash_entry*, align 8
  store %struct.bfd_hash_entry* %0, %struct.bfd_hash_entry** %5, align 8
  store %struct.bfd_hash_table* %1, %struct.bfd_hash_table** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %10 = icmp eq %struct.bfd_hash_entry* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %13 = call %struct.bfd_hash_entry* @bfd_hash_allocate(%struct.bfd_hash_table* %12, i32 24)
  store %struct.bfd_hash_entry* %13, %struct.bfd_hash_entry** %5, align 8
  %14 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %15 = icmp eq %struct.bfd_hash_entry* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  store %struct.bfd_hash_entry* %17, %struct.bfd_hash_entry** %4, align 8
  br label %38

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %3
  %20 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %21 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call %struct.bfd_hash_entry* @_bfd_elf_link_hash_newfunc(%struct.bfd_hash_entry* %20, %struct.bfd_hash_table* %21, i8* %22)
  store %struct.bfd_hash_entry* %23, %struct.bfd_hash_entry** %5, align 8
  %24 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %25 = icmp ne %struct.bfd_hash_entry* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %28 = bitcast %struct.bfd_hash_entry* %27 to %struct.elf64_x86_64_link_hash_entry*
  store %struct.elf64_x86_64_link_hash_entry* %28, %struct.elf64_x86_64_link_hash_entry** %8, align 8
  %29 = load %struct.elf64_x86_64_link_hash_entry*, %struct.elf64_x86_64_link_hash_entry** %8, align 8
  %30 = getelementptr inbounds %struct.elf64_x86_64_link_hash_entry, %struct.elf64_x86_64_link_hash_entry* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* @GOT_UNKNOWN, align 4
  %32 = load %struct.elf64_x86_64_link_hash_entry*, %struct.elf64_x86_64_link_hash_entry** %8, align 8
  %33 = getelementptr inbounds %struct.elf64_x86_64_link_hash_entry, %struct.elf64_x86_64_link_hash_entry* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.elf64_x86_64_link_hash_entry*, %struct.elf64_x86_64_link_hash_entry** %8, align 8
  %35 = getelementptr inbounds %struct.elf64_x86_64_link_hash_entry, %struct.elf64_x86_64_link_hash_entry* %34, i32 0, i32 0
  store i64 -1, i64* %35, align 8
  br label %36

36:                                               ; preds = %26, %19
  %37 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  store %struct.bfd_hash_entry* %37, %struct.bfd_hash_entry** %4, align 8
  br label %38

38:                                               ; preds = %36, %16
  %39 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %4, align 8
  ret %struct.bfd_hash_entry* %39
}

declare dso_local %struct.bfd_hash_entry* @bfd_hash_allocate(%struct.bfd_hash_table*, i32) #1

declare dso_local %struct.bfd_hash_entry* @_bfd_elf_link_hash_newfunc(%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
