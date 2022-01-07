; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_allocate_got.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_allocate_got.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_elf_link_hash_table = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PLT_VXWORKS = common dso_local global i64 0, align 8
@PLT_NEW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppc_elf_link_hash_table*, i32)* @allocate_got to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_got(%struct.ppc_elf_link_hash_table* %0, i32 %1) #0 {
  %3 = alloca %struct.ppc_elf_link_hash_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ppc_elf_link_hash_table* %0, %struct.ppc_elf_link_hash_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %3, align 8
  %8 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PLT_VXWORKS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %3, align 8
  %14 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %3, align 8
  %20 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add i32 %23, %18
  store i32 %24, i32* %22, align 4
  br label %100

25:                                               ; preds = %2
  %26 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %3, align 8
  %27 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PLT_NEW, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 32768, i32 32764
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %3, align 8
  %35 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ule i32 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %3, align 8
  %41 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sub i32 %39, %42
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %3, align 8
  %46 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sub i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %99

49:                                               ; preds = %25
  %50 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %3, align 8
  %51 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %49
  %60 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %3, align 8
  %61 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ule i32 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %3, align 8
  %70 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub i32 %68, %73
  %75 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %3, align 8
  %76 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %3, align 8
  %79 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %77, %80
  %82 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %3, align 8
  %83 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %67, %59, %49
  %87 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %3, align 8
  %88 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %87, i32 0, i32 3
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %3, align 8
  %94 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %93, i32 0, i32 3
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, %92
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %86, %38
  br label %100

100:                                              ; preds = %99, %12
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
