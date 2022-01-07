; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_create_got_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_create_got_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.ppc_link_hash_table = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".got\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c".rela.got\00", align 1
@SEC_READONLY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @create_got_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_got_section(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ppc_link_hash_table*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %10 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %11 = call %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info* %10)
  store %struct.ppc_link_hash_table* %11, %struct.ppc_link_hash_table** %9, align 8
  %12 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %9, align 8
  %13 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %2
  %17 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %9, align 8
  %18 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %22 = call i32 @_bfd_elf_create_got_section(i32 %20, %struct.bfd_link_info* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %88

26:                                               ; preds = %16
  %27 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %9, align 8
  %28 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @bfd_get_section_by_name(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %9, align 8
  %33 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %9, align 8
  %35 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %26
  %39 = call i32 (...) @abort() #3
  unreachable

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* @SEC_ALLOC, align 4
  %43 = load i32, i32* @SEC_LOAD, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SEC_IN_MEMORY, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32* @bfd_make_section_anyway_with_flags(i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32* %53, i32** %6, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %41
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @bfd_set_section_alignment(i32* %57, i32* %58, i32 3)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56, %41
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  br label %88

63:                                               ; preds = %56
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @SEC_READONLY, align 4
  %67 = or i32 %65, %66
  %68 = call i32* @bfd_make_section_anyway_with_flags(i32* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  store i32* %68, i32** %7, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load i32*, i32** %4, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @bfd_set_section_alignment(i32* %72, i32* %73, i32 3)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71, %63
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %3, align 4
  br label %88

78:                                               ; preds = %71
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call %struct.TYPE_4__* @ppc64_elf_tdata(i32* %80)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i32* %79, i32** %82, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = call %struct.TYPE_4__* @ppc64_elf_tdata(i32* %84)
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32* %83, i32** %86, align 8
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %78, %76, %61, %24
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_elf_create_got_section(i32, %struct.bfd_link_info*) #1

declare dso_local i64 @bfd_get_section_by_name(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32* @bfd_make_section_anyway_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @ppc64_elf_tdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
