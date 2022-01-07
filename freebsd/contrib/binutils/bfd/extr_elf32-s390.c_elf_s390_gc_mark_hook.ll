; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-s390.c_elf_s390_gc_mark_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-s390.c_elf_s390_gc_mark_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.elf_link_hash_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.bfd_link_info*, %struct.TYPE_4__*, %struct.elf_link_hash_entry*, i32*)* @elf_s390_gc_mark_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @elf_s390_gc_mark_hook(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_4__* %2, %struct.elf_link_hash_entry* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bfd_link_info*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.elf_link_hash_entry*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store %struct.elf_link_hash_entry* %3, %struct.elf_link_hash_entry** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %10, align 8
  %13 = icmp ne %struct.elf_link_hash_entry* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ELF32_R_TYPE(i32 %17)
  switch i32 %18, label %20 [
    i32 128, label %19
    i32 129, label %19
  ]

19:                                               ; preds = %14, %14
  store i32* null, i32** %6, align 8
  br label %28

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %5
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32* @_bfd_elf_gc_mark_hook(i32* %22, %struct.bfd_link_info* %23, %struct.TYPE_4__* %24, %struct.elf_link_hash_entry* %25, i32* %26)
  store i32* %27, i32** %6, align 8
  br label %28

28:                                               ; preds = %21, %19
  %29 = load i32*, i32** %6, align 8
  ret i32* %29
}

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32* @_bfd_elf_gc_mark_hook(i32*, %struct.bfd_link_info*, %struct.TYPE_4__*, %struct.elf_link_hash_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
