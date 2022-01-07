; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_link_hash_table_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_link_hash_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_table = type { i32 }
%struct.ppc_elf_link_hash_table = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.bfd_link_hash_table, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_5__ = type { i32*, i64 }
%struct.TYPE_7__ = type { i8*, i8*, i8* }

@ppc_elf_link_hash_newfunc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c".sdata\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"_SDA_BASE_\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".sbss\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".sdata2\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"_SDA2_BASE_\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c".sbss2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfd_link_hash_table* (i32*)* @ppc_elf_link_hash_table_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfd_link_hash_table* @ppc_elf_link_hash_table_create(i32* %0) #0 {
  %2 = alloca %struct.bfd_link_hash_table*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ppc_elf_link_hash_table*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct.ppc_elf_link_hash_table* @bfd_zmalloc(i32 64)
  store %struct.ppc_elf_link_hash_table* %5, %struct.ppc_elf_link_hash_table** %4, align 8
  %6 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %7 = icmp eq %struct.ppc_elf_link_hash_table* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %75

9:                                                ; preds = %1
  %10 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %11 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %10, i32 0, i32 3
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @ppc_elf_link_hash_newfunc, align 4
  %14 = call i32 @_bfd_elf_link_hash_table_init(%struct.TYPE_8__* %11, i32* %12, i32 %13, i32 4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %18 = call i32 @free(%struct.ppc_elf_link_hash_table* %17)
  store %struct.bfd_link_hash_table* null, %struct.bfd_link_hash_table** %2, align 8
  br label %75

19:                                               ; preds = %9
  %20 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %21 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %25 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %29 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %33 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %37 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %36, i32 0, i32 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %42 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %41, i32 0, i32 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %45, align 8
  %46 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %47 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %46, i32 0, i32 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %50, align 8
  %51 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %52 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %51, i32 0, i32 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %55, align 8
  %56 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %57 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %56, i32 0, i32 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %60, align 8
  %61 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %62 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %61, i32 0, i32 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %65, align 8
  %66 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %67 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %66, i32 0, i32 0
  store i32 12, i32* %67, align 8
  %68 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %69 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %68, i32 0, i32 1
  store i32 8, i32* %69, align 4
  %70 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %71 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %70, i32 0, i32 2
  store i32 72, i32* %71, align 8
  %72 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %4, align 8
  %73 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store %struct.bfd_link_hash_table* %74, %struct.bfd_link_hash_table** %2, align 8
  br label %75

75:                                               ; preds = %19, %16, %8
  %76 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  ret %struct.bfd_link_hash_table* %76
}

declare dso_local %struct.ppc_elf_link_hash_table* @bfd_zmalloc(i32) #1

declare dso_local i32 @_bfd_elf_link_hash_table_init(%struct.TYPE_8__*, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.ppc_elf_link_hash_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
