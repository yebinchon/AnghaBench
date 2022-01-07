; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_link_hash_table_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_link_hash_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_table = type { i32 }
%struct.mips_elf_link_hash_table = type { i32*, %struct.TYPE_2__, i64, i64, i64, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i8*, i64, i8*, i64, i64 }
%struct.TYPE_2__ = type { %struct.bfd_link_hash_table }

@mips_elf_link_hash_newfunc = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@SIZEOF_MIPS_DYNSYM_SECNAMES = common dso_local global i64 0, align 8
@i = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_link_hash_table* @_bfd_mips_elf_link_hash_table_create(i32* %0) #0 {
  %2 = alloca %struct.bfd_link_hash_table*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mips_elf_link_hash_table*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 136, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.mips_elf_link_hash_table* @bfd_malloc(i32 %6)
  store %struct.mips_elf_link_hash_table* %7, %struct.mips_elf_link_hash_table** %4, align 8
  %8 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %9 = icmp eq %struct.mips_elf_link_hash_table* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %13 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %12, i32 0, i32 1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @mips_elf_link_hash_newfunc, align 4
  %16 = call i32 @_bfd_elf_link_hash_table_init(%struct.TYPE_2__* %13, i32* %14, i32 %15, i32 4)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %20 = call i32 @free(%struct.mips_elf_link_hash_table* %19)
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %58

21:                                               ; preds = %11
  %22 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %23 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %22, i32 0, i32 16
  store i64 0, i64* %23, align 8
  %24 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %25 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %24, i32 0, i32 15
  store i64 0, i64* %25, align 8
  %26 = load i8*, i8** @FALSE, align 8
  %27 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %28 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %27, i32 0, i32 14
  store i8* %26, i8** %28, align 8
  %29 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %30 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %29, i32 0, i32 13
  store i64 0, i64* %30, align 8
  %31 = load i8*, i8** @FALSE, align 8
  %32 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %33 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %32, i32 0, i32 12
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @FALSE, align 8
  %35 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %36 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %35, i32 0, i32 11
  store i8* %34, i8** %36, align 8
  %37 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %38 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %37, i32 0, i32 10
  store i32* null, i32** %38, align 8
  %39 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %40 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %39, i32 0, i32 9
  store i32* null, i32** %40, align 8
  %41 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %42 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %41, i32 0, i32 8
  store i32* null, i32** %42, align 8
  %43 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %44 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %43, i32 0, i32 7
  store i32* null, i32** %44, align 8
  %45 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %46 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %45, i32 0, i32 6
  store i32* null, i32** %46, align 8
  %47 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %48 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %47, i32 0, i32 5
  store i32* null, i32** %48, align 8
  %49 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %50 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %52 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %54 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %4, align 8
  %56 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.bfd_link_hash_table* %57, %struct.bfd_link_hash_table** %2, align 8
  br label %58

58:                                               ; preds = %21, %18, %10
  %59 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  ret %struct.bfd_link_hash_table* %59
}

declare dso_local %struct.mips_elf_link_hash_table* @bfd_malloc(i32) #1

declare dso_local i32 @_bfd_elf_link_hash_table_init(%struct.TYPE_2__*, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.mips_elf_link_hash_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
