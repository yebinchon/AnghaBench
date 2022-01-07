; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_create_got_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_create_got_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf64_x86_64_link_hash_table = type { i32*, i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".got\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c".got.plt\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c".rela.got\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @create_got_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_got_section(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.elf64_x86_64_link_hash_table*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %9 = call i32 @_bfd_elf_create_got_section(i32* %7, %struct.bfd_link_info* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %66

13:                                               ; preds = %2
  %14 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %15 = call %struct.elf64_x86_64_link_hash_table* @elf64_x86_64_hash_table(%struct.bfd_link_info* %14)
  store %struct.elf64_x86_64_link_hash_table* %15, %struct.elf64_x86_64_link_hash_table** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @bfd_get_section_by_name(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %6, align 8
  %19 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i8* @bfd_get_section_by_name(i32* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %6, align 8
  %23 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %6, align 8
  %25 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %13
  %29 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %6, align 8
  %30 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28, %13
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @SEC_ALLOC, align 4
  %38 = load i32, i32* @SEC_LOAD, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SEC_IN_MEMORY, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SEC_READONLY, align 4
  %47 = or i32 %45, %46
  %48 = call i32* @bfd_make_section_with_flags(i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %6, align 8
  %50 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %6, align 8
  %52 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %35
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %6, align 8
  %58 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @bfd_set_section_alignment(i32* %56, i32* %59, i32 3)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %55, %35
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %3, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %62, %11
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @_bfd_elf_create_got_section(i32*, %struct.bfd_link_info*) #1

declare dso_local %struct.elf64_x86_64_link_hash_table* @elf64_x86_64_hash_table(%struct.bfd_link_info*) #1

declare dso_local i8* @bfd_get_section_by_name(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32* @bfd_make_section_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
