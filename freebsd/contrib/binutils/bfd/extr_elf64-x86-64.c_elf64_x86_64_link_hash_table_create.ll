; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_elf64_x86_64_link_hash_table_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_elf64_x86_64_link_hash_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_table = type { i32 }
%struct.elf64_x86_64_link_hash_table = type { %struct.TYPE_6__, i64, %struct.TYPE_5__, i64, i64, %struct.TYPE_4__, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_6__ = type { %struct.bfd_link_hash_table }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32* }

@link_hash_newfunc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfd_link_hash_table* (i32*)* @elf64_x86_64_link_hash_table_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfd_link_hash_table* @elf64_x86_64_link_hash_table_create(i32* %0) #0 {
  %2 = alloca %struct.bfd_link_hash_table*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.elf64_x86_64_link_hash_table*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 104, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @bfd_malloc(i32 %6)
  %8 = inttoptr i64 %7 to %struct.elf64_x86_64_link_hash_table*
  store %struct.elf64_x86_64_link_hash_table* %8, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %9 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %10 = icmp eq %struct.elf64_x86_64_link_hash_table* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %14 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %13, i32 0, i32 0
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @link_hash_newfunc, align 4
  %17 = call i32 @_bfd_elf_link_hash_table_init(%struct.TYPE_6__* %14, i32* %15, i32 %16, i32 4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %21 = call i32 @free(%struct.elf64_x86_64_link_hash_table* %20)
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %52

22:                                               ; preds = %12
  %23 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %24 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %23, i32 0, i32 12
  store i32* null, i32** %24, align 8
  %25 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %26 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %25, i32 0, i32 11
  store i32* null, i32** %26, align 8
  %27 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %28 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %27, i32 0, i32 10
  store i32* null, i32** %28, align 8
  %29 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %30 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %29, i32 0, i32 9
  store i32* null, i32** %30, align 8
  %31 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %32 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %31, i32 0, i32 8
  store i32* null, i32** %32, align 8
  %33 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %34 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %33, i32 0, i32 7
  store i32* null, i32** %34, align 8
  %35 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %36 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %35, i32 0, i32 6
  store i32* null, i32** %36, align 8
  %37 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %38 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %41 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %43 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %45 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %48 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %4, align 8
  %50 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store %struct.bfd_link_hash_table* %51, %struct.bfd_link_hash_table** %2, align 8
  br label %52

52:                                               ; preds = %22, %19, %11
  %53 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  ret %struct.bfd_link_hash_table* %53
}

declare dso_local i64 @bfd_malloc(i32) #1

declare dso_local i32 @_bfd_elf_link_hash_table_init(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.elf64_x86_64_link_hash_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
