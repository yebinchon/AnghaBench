; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_lookup_local_dynindx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_lookup_local_dynindx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_local_dynamic_entry = type { i64, i64, i32*, %struct.elf_link_local_dynamic_entry* }
%struct.TYPE_2__ = type { %struct.elf_link_local_dynamic_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_elf_link_lookup_local_dynindx(%struct.bfd_link_info* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.elf_link_local_dynamic_entry*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %10 = call %struct.TYPE_2__* @elf_hash_table(%struct.bfd_link_info* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %11, align 8
  store %struct.elf_link_local_dynamic_entry* %12, %struct.elf_link_local_dynamic_entry** %8, align 8
  br label %13

13:                                               ; preds = %33, %3
  %14 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %8, align 8
  %15 = icmp ne %struct.elf_link_local_dynamic_entry* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %8, align 8
  %18 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %8, align 8
  %24 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %8, align 8
  %30 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %4, align 8
  br label %38

32:                                               ; preds = %22, %16
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %8, align 8
  %35 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %34, i32 0, i32 3
  %36 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %35, align 8
  store %struct.elf_link_local_dynamic_entry* %36, %struct.elf_link_local_dynamic_entry** %8, align 8
  br label %13

37:                                               ; preds = %13
  store i64 -1, i64* %4, align 8
  br label %38

38:                                               ; preds = %37, %28
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local %struct.TYPE_2__* @elf_hash_table(%struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
