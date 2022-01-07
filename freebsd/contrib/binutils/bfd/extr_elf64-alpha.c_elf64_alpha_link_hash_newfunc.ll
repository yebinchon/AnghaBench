; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_link_hash_newfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_link_hash_newfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_hash_entry = type { i32 }
%struct.bfd_hash_table = type { i32 }
%struct.alpha_elf_link_hash_entry = type { i32*, i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* @elf64_alpha_link_hash_newfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfd_hash_entry* @elf64_alpha_link_hash_newfunc(%struct.bfd_hash_entry* %0, %struct.bfd_hash_table* %1, i8* %2) #0 {
  %4 = alloca %struct.bfd_hash_entry*, align 8
  %5 = alloca %struct.bfd_hash_entry*, align 8
  %6 = alloca %struct.bfd_hash_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.alpha_elf_link_hash_entry*, align 8
  store %struct.bfd_hash_entry* %0, %struct.bfd_hash_entry** %5, align 8
  store %struct.bfd_hash_table* %1, %struct.bfd_hash_table** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %10 = bitcast %struct.bfd_hash_entry* %9 to %struct.alpha_elf_link_hash_entry*
  store %struct.alpha_elf_link_hash_entry* %10, %struct.alpha_elf_link_hash_entry** %8, align 8
  %11 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %8, align 8
  %12 = icmp eq %struct.alpha_elf_link_hash_entry* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %15 = call i64 @bfd_hash_allocate(%struct.bfd_hash_table* %14, i32 32)
  %16 = inttoptr i64 %15 to %struct.alpha_elf_link_hash_entry*
  store %struct.alpha_elf_link_hash_entry* %16, %struct.alpha_elf_link_hash_entry** %8, align 8
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %8, align 8
  %19 = icmp eq %struct.alpha_elf_link_hash_entry* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %8, align 8
  %22 = bitcast %struct.alpha_elf_link_hash_entry* %21 to %struct.bfd_hash_entry*
  store %struct.bfd_hash_entry* %22, %struct.bfd_hash_entry** %4, align 8
  br label %48

23:                                               ; preds = %17
  %24 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %8, align 8
  %25 = bitcast %struct.alpha_elf_link_hash_entry* %24 to %struct.bfd_hash_entry*
  %26 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @_bfd_elf_link_hash_newfunc(%struct.bfd_hash_entry* %25, %struct.bfd_hash_table* %26, i8* %27)
  %29 = inttoptr i64 %28 to %struct.alpha_elf_link_hash_entry*
  store %struct.alpha_elf_link_hash_entry* %29, %struct.alpha_elf_link_hash_entry** %8, align 8
  %30 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %8, align 8
  %31 = icmp ne %struct.alpha_elf_link_hash_entry* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %23
  %33 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %8, align 8
  %34 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %33, i32 0, i32 3
  %35 = call i32 @memset(%struct.TYPE_2__* %34, i32 0, i32 4)
  %36 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %8, align 8
  %37 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 -2, i32* %38, align 8
  %39 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %8, align 8
  %40 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %8, align 8
  %42 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %8, align 8
  %44 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %32, %23
  %46 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %8, align 8
  %47 = bitcast %struct.alpha_elf_link_hash_entry* %46 to %struct.bfd_hash_entry*
  store %struct.bfd_hash_entry* %47, %struct.bfd_hash_entry** %4, align 8
  br label %48

48:                                               ; preds = %45, %20
  %49 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %4, align 8
  ret %struct.bfd_hash_entry* %49
}

declare dso_local i64 @bfd_hash_allocate(%struct.bfd_hash_table*, i32) #1

declare dso_local i64 @_bfd_elf_link_hash_newfunc(%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
