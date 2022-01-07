; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_link_hash_table_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_link_hash_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_table = type { i32 }
%struct.ppc_link_hash_table = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.bfd_link_hash_table, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32*, i64 }
%struct.TYPE_8__ = type { i32*, i64 }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.TYPE_6__ = type { i32*, i64 }

@link_hash_newfunc = common dso_local global i32 0, align 4
@stub_hash_newfunc = common dso_local global i32 0, align 4
@branch_hash_newfunc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfd_link_hash_table* (i32*)* @ppc64_elf_link_hash_table_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfd_link_hash_table* @ppc64_elf_link_hash_table_create(i32* %0) #0 {
  %2 = alloca %struct.bfd_link_hash_table*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ppc_link_hash_table*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 80, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ppc_link_hash_table* @bfd_zmalloc(i32 %6)
  store %struct.ppc_link_hash_table* %7, %struct.ppc_link_hash_table** %4, align 8
  %8 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %9 = icmp eq %struct.ppc_link_hash_table* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %71

11:                                               ; preds = %1
  %12 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %13 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %12, i32 0, i32 0
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @link_hash_newfunc, align 4
  %16 = call i32 @_bfd_elf_link_hash_table_init(%struct.TYPE_10__* %13, i32* %14, i32 %15, i32 4)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %20 = call i32 @free(%struct.ppc_link_hash_table* %19)
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %71

21:                                               ; preds = %11
  %22 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %23 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %22, i32 0, i32 2
  %24 = load i32, i32* @stub_hash_newfunc, align 4
  %25 = call i32 @bfd_hash_table_init(i32* %23, i32 %24, i32 4)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %71

28:                                               ; preds = %21
  %29 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %30 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %29, i32 0, i32 1
  %31 = load i32, i32* @branch_hash_newfunc, align 4
  %32 = call i32 @bfd_hash_table_init(i32* %30, i32 %31, i32 4)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %71

35:                                               ; preds = %28
  %36 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %37 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %41 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %45 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %49 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  %52 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %53 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %57 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  %60 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %61 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %65 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  %68 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %69 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store %struct.bfd_link_hash_table* %70, %struct.bfd_link_hash_table** %2, align 8
  br label %71

71:                                               ; preds = %35, %34, %27, %18, %10
  %72 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  ret %struct.bfd_link_hash_table* %72
}

declare dso_local %struct.ppc_link_hash_table* @bfd_zmalloc(i32) #1

declare dso_local i32 @_bfd_elf_link_hash_table_init(%struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.ppc_link_hash_table*) #1

declare dso_local i32 @bfd_hash_table_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
