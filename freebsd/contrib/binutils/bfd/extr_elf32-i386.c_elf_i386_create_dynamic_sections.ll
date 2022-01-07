; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-i386.c_elf_i386_create_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-i386.c_elf_i386_create_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_i386_link_hash_table = type { i32, i64, i8*, i8*, i8*, i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c".rel.plt\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".dynbss\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".rel.bss\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @elf_i386_create_dynamic_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_i386_create_dynamic_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.elf_i386_link_hash_table*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %7 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %8 = call %struct.elf_i386_link_hash_table* @elf_i386_hash_table(%struct.bfd_link_info* %7)
  store %struct.elf_i386_link_hash_table* %8, %struct.elf_i386_link_hash_table** %6, align 8
  %9 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %6, align 8
  %10 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %16 = call i32 @create_got_section(i32* %14, %struct.bfd_link_info* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %92

20:                                               ; preds = %13, %2
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %23 = call i32 @_bfd_elf_create_dynamic_sections(i32* %21, %struct.bfd_link_info* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %92

27:                                               ; preds = %20
  %28 = load i32*, i32** %4, align 8
  %29 = call i8* @bfd_get_section_by_name(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %6, align 8
  %31 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i8* @bfd_get_section_by_name(i32* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %6, align 8
  %35 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i8* @bfd_get_section_by_name(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %6, align 8
  %39 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %41 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %27
  %45 = load i32*, i32** %4, align 8
  %46 = call i8* @bfd_get_section_by_name(i32* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %6, align 8
  %48 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %44, %27
  %50 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %6, align 8
  %51 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %50, i32 0, i32 5
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %49
  %55 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %6, align 8
  %56 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %6, align 8
  %61 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %66 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %64
  %70 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %6, align 8
  %71 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %69, %59, %54, %49
  %75 = call i32 (...) @abort() #3
  unreachable

76:                                               ; preds = %69, %64
  %77 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %6, align 8
  %78 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %84 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %6, align 8
  %85 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %84, i32 0, i32 0
  %86 = call i32 @elf_vxworks_create_dynamic_sections(i32* %82, %struct.bfd_link_info* %83, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %3, align 4
  br label %92

90:                                               ; preds = %81, %76
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %88, %25, %18
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.elf_i386_link_hash_table* @elf_i386_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @create_got_section(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_elf_create_dynamic_sections(i32*, %struct.bfd_link_info*) #1

declare dso_local i8* @bfd_get_section_by_name(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @elf_vxworks_create_dynamic_sections(i32*, %struct.bfd_link_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
