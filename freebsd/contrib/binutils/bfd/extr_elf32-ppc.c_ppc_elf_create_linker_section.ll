; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_create_linker_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_create_linker_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.ppc_elf_link_hash_table = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, i32, %struct.TYPE_6__*)* @ppc_elf_create_linker_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_elf_create_linker_section(i32* %0, %struct.bfd_link_info* %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.ppc_elf_link_hash_table*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %12 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %13 = call %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info* %12)
  store %struct.ppc_elf_link_hash_table* %13, %struct.ppc_elf_link_hash_table** %10, align 8
  %14 = load i32, i32* @SEC_ALLOC, align 4
  %15 = load i32, i32* @SEC_LOAD, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SEC_IN_MEMORY, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %26 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %4
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %33 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32* %31, i32** %34, align 8
  br label %35

35:                                               ; preds = %30, %4
  %36 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %37 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32* @bfd_make_section_anyway_with_flags(i32* %39, i32 %42, i32 %43)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %35
  %48 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %49 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @bfd_set_section_alignment(i32* %51, i32* %52, i32 2)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %47, %35
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %5, align 4
  br label %64

57:                                               ; preds = %47
  %58 = load i32*, i32** %11, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %10, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = call i32 @create_sdata_sym(%struct.ppc_elf_link_hash_table* %61, %struct.TYPE_6__* %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %57, %55
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32* @bfd_make_section_anyway_with_flags(i32*, i32, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, i32*, i32) #1

declare dso_local i32 @create_sdata_sym(%struct.ppc_elf_link_hash_table*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
