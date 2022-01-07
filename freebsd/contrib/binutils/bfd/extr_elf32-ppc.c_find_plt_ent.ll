; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_find_plt_ent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_find_plt_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plt_entry = type { i32, i32*, %struct.plt_entry* }
%struct.elf_link_hash_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.plt_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.plt_entry* (%struct.elf_link_hash_entry*, i32*, i32)* @find_plt_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.plt_entry* @find_plt_ent(%struct.elf_link_hash_entry* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.plt_entry*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 32768
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32* null, i32** %5, align 8
  br label %11

11:                                               ; preds = %10, %3
  %12 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %13 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.plt_entry*, %struct.plt_entry** %14, align 8
  store %struct.plt_entry* %15, %struct.plt_entry** %7, align 8
  br label %16

16:                                               ; preds = %33, %11
  %17 = load %struct.plt_entry*, %struct.plt_entry** %7, align 8
  %18 = icmp ne %struct.plt_entry* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load %struct.plt_entry*, %struct.plt_entry** %7, align 8
  %21 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp eq i32* %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.plt_entry*, %struct.plt_entry** %7, align 8
  %27 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %37

32:                                               ; preds = %25, %19
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.plt_entry*, %struct.plt_entry** %7, align 8
  %35 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %34, i32 0, i32 2
  %36 = load %struct.plt_entry*, %struct.plt_entry** %35, align 8
  store %struct.plt_entry* %36, %struct.plt_entry** %7, align 8
  br label %16

37:                                               ; preds = %31, %16
  %38 = load %struct.plt_entry*, %struct.plt_entry** %7, align 8
  ret %struct.plt_entry* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
