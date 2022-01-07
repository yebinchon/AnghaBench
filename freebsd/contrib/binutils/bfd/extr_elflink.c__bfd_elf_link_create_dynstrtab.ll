; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_create_dynstrtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_create_dynstrtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_table = type { i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @_bfd_elf_link_create_dynstrtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bfd_elf_link_create_dynstrtab(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.elf_link_hash_table*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %7 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %8 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %7)
  store %struct.elf_link_hash_table* %8, %struct.elf_link_hash_table** %6, align 8
  %9 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %6, align 8
  %10 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %6, align 8
  %16 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %6, align 8
  %19 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = call i32* (...) @_bfd_elf_strtab_init()
  %24 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %6, align 8
  %25 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %6, align 8
  %27 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32* @_bfd_elf_strtab_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
