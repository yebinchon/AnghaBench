; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_create_got_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_create_got_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf32_arm_link_hash_table = type { i32*, i8*, i8*, i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".got\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c".got.plt\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @create_got_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_got_section(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.elf32_arm_link_hash_table*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %7 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %8 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %7)
  store %struct.elf32_arm_link_hash_table* %8, %struct.elf32_arm_link_hash_table** %6, align 8
  %9 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %10 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %3, align 4
  br label %75

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %18 = call i32 @_bfd_elf_create_got_section(i32* %16, %struct.bfd_link_info* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %75

22:                                               ; preds = %15
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @bfd_get_section_by_name(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %26 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i8* @bfd_get_section_by_name(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %30 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %32 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %37 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35, %22
  %41 = call i32 (...) @abort() #3
  unreachable

42:                                               ; preds = %35
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %45 = call i32 @RELOC_SECTION(%struct.elf32_arm_link_hash_table* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @SEC_ALLOC, align 4
  %47 = load i32, i32* @SEC_LOAD, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SEC_IN_MEMORY, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SEC_READONLY, align 4
  %56 = or i32 %54, %55
  %57 = call i32* @bfd_make_section_with_flags(i32* %43, i32 %45, i32 %56)
  %58 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %59 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %61 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %42
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %67 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @bfd_set_section_alignment(i32* %65, i32* %68, i32 2)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %64, %42
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %71, %20, %13
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_elf_create_got_section(i32*, %struct.bfd_link_info*) #1

declare dso_local i8* @bfd_get_section_by_name(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32* @bfd_make_section_with_flags(i32*, i32, i32) #1

declare dso_local i32 @RELOC_SECTION(%struct.elf32_arm_link_hash_table*, i8*) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
