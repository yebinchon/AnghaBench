; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_link_renumber_local_hash_table_dynsyms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_link_renumber_local_hash_table_dynsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @elf_link_renumber_local_hash_table_dynsyms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_link_renumber_local_hash_table_dynsyms(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %6, align 8
  %9 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %10 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @bfd_link_hash_warning, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %17 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %22, %struct.elf_link_hash_entry** %4, align 8
  br label %23

23:                                               ; preds = %15, %2
  %24 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %25 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %3, align 4
  br label %44

30:                                               ; preds = %23
  %31 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %32 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %41 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %28
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
