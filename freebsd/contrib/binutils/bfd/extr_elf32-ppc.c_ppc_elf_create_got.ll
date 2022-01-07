; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_create_got.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_create_got.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.ppc_elf_link_hash_table = type { i32, i8*, i64, i32* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".got\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c".got.plt\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c".rela.got\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @ppc_elf_create_got to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_elf_create_got(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.ppc_elf_link_hash_table*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %11 = call i32 @_bfd_elf_create_got_section(i32* %9, %struct.bfd_link_info* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %96

15:                                               ; preds = %2
  %16 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %17 = call %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info* %16)
  store %struct.ppc_elf_link_hash_table* %17, %struct.ppc_elf_link_hash_table** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @bfd_get_section_by_name(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %7, align 8
  %21 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %22 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = call i32 (...) @abort() #3
  unreachable

27:                                               ; preds = %15
  %28 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %29 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = call i8* @bfd_get_section_by_name(i32* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %36 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %38 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  %42 = call i32 (...) @abort() #3
  unreachable

43:                                               ; preds = %32
  br label %64

44:                                               ; preds = %27
  %45 = load i32, i32* @SEC_ALLOC, align 4
  %46 = load i32, i32* @SEC_LOAD, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SEC_CODE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SEC_IN_MEMORY, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %8, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @bfd_set_section_flags(i32* %56, i32* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %44
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  br label %96

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i32, i32* @SEC_ALLOC, align 4
  %66 = load i32, i32* @SEC_LOAD, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @SEC_IN_MEMORY, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SEC_READONLY, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %8, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @bfd_make_section_with_flags(i32* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %80 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %82 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %64
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %88 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @bfd_set_section_alignment(i32* %86, i32 %89, i32 2)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %85, %64
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %3, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @TRUE, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %92, %61, %13
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @_bfd_elf_create_got_section(i32*, %struct.bfd_link_info*) #1

declare dso_local %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i8* @bfd_get_section_by_name(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @bfd_set_section_flags(i32*, i32*, i32) #1

declare dso_local i32 @bfd_make_section_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
