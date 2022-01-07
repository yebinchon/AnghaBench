; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_create_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_create_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.ppc_link_hash_table = type { i8*, i8*, i8*, i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".got\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c".rela.plt\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".dynbss\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c".rela.bss\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @ppc64_elf_create_dynamic_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc64_elf_create_dynamic_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.ppc_link_hash_table*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %9 = call i32 @_bfd_elf_create_dynamic_sections(i32* %7, %struct.bfd_link_info* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %81

13:                                               ; preds = %2
  %14 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %15 = call %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info* %14)
  store %struct.ppc_link_hash_table* %15, %struct.ppc_link_hash_table** %6, align 8
  %16 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %17 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %16, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load i32*, i32** %4, align 8
  %22 = call i8* @bfd_get_section_by_name(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %24 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @bfd_get_section_by_name(i32* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %29 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i8* @bfd_get_section_by_name(i32* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %33 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i8* @bfd_get_section_by_name(i32* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %37 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %39 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %25
  %43 = load i32*, i32** %4, align 8
  %44 = call i8* @bfd_get_section_by_name(i32* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %45 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %46 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %42, %25
  %48 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %49 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %77

52:                                               ; preds = %47
  %53 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %54 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %59 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %64 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %69 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %74 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %72, %62, %57, %52, %47
  %78 = call i32 (...) @abort() #3
  unreachable

79:                                               ; preds = %72, %67
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %11
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @_bfd_elf_create_dynamic_sections(i32*, %struct.bfd_link_info*) #1

declare dso_local %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info*) #1

declare dso_local i8* @bfd_get_section_by_name(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
