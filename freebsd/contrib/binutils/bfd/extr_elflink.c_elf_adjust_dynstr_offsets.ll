; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_adjust_dynstr_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_adjust_dynstr_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.elf_strtab_hash = type { i32 }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @elf_adjust_dynstr_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_adjust_dynstr_offsets(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.elf_link_hash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.elf_strtab_hash*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.elf_strtab_hash*
  store %struct.elf_strtab_hash* %7, %struct.elf_strtab_hash** %5, align 8
  %8 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %9 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @bfd_link_hash_warning, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %16 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %21, %struct.elf_link_hash_entry** %3, align 8
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %24 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %29 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %30 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @_bfd_elf_strtab_offset(%struct.elf_strtab_hash* %28, i32 %31)
  %33 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %34 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %27, %22
  %36 = load i32, i32* @TRUE, align 4
  ret i32 %36
}

declare dso_local i32 @_bfd_elf_strtab_offset(%struct.elf_strtab_hash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
