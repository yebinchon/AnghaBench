; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_bfd_link_hash_table_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_bfd_link_hash_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_table = type { i32 }
%struct.alpha_elf_link_hash_table = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bfd_link_hash_table }

@elf64_alpha_link_hash_newfunc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfd_link_hash_table* (i32*)* @elf64_alpha_bfd_link_hash_table_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfd_link_hash_table* @elf64_alpha_bfd_link_hash_table_create(i32* %0) #0 {
  %2 = alloca %struct.bfd_link_hash_table*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.alpha_elf_link_hash_table*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 4, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @bfd_zmalloc(i32 %6)
  %8 = inttoptr i64 %7 to %struct.alpha_elf_link_hash_table*
  store %struct.alpha_elf_link_hash_table* %8, %struct.alpha_elf_link_hash_table** %4, align 8
  %9 = load %struct.alpha_elf_link_hash_table*, %struct.alpha_elf_link_hash_table** %4, align 8
  %10 = icmp eq %struct.alpha_elf_link_hash_table* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.alpha_elf_link_hash_table*, %struct.alpha_elf_link_hash_table** %4, align 8
  %14 = getelementptr inbounds %struct.alpha_elf_link_hash_table, %struct.alpha_elf_link_hash_table* %13, i32 0, i32 0
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @elf64_alpha_link_hash_newfunc, align 4
  %17 = call i32 @_bfd_elf_link_hash_table_init(%struct.TYPE_2__* %14, i32* %15, i32 %16, i32 4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load %struct.alpha_elf_link_hash_table*, %struct.alpha_elf_link_hash_table** %4, align 8
  %21 = call i32 @free(%struct.alpha_elf_link_hash_table* %20)
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %26

22:                                               ; preds = %12
  %23 = load %struct.alpha_elf_link_hash_table*, %struct.alpha_elf_link_hash_table** %4, align 8
  %24 = getelementptr inbounds %struct.alpha_elf_link_hash_table, %struct.alpha_elf_link_hash_table* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.bfd_link_hash_table* %25, %struct.bfd_link_hash_table** %2, align 8
  br label %26

26:                                               ; preds = %22, %19, %11
  %27 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  ret %struct.bfd_link_hash_table* %27
}

declare dso_local i64 @bfd_zmalloc(i32) #1

declare dso_local i32 @_bfd_elf_link_hash_table_init(%struct.TYPE_2__*, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.alpha_elf_link_hash_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
