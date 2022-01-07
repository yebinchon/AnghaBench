; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_create_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_create_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.ppc_elf_link_hash_table = type { i64, i32*, i8*, i32, i64, i32*, i8*, i32*, i8*, i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c".glink\00", align 1
@SEC_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c".dynbss\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c".dynsbss\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c".rela.bss\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c".rela.sbss\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c".rela.plt\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@PLT_VXWORKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @ppc_elf_create_dynamic_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_elf_create_dynamic_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.ppc_elf_link_hash_table*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %9 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %10 = call %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info* %9)
  store %struct.ppc_elf_link_hash_table* %10, %struct.ppc_elf_link_hash_table** %6, align 8
  %11 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %12 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %11, i32 0, i32 10
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %18 = call i32 @ppc_elf_create_got(i32* %16, %struct.bfd_link_info* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %153

22:                                               ; preds = %15, %2
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %25 = call i32 @_bfd_elf_create_dynamic_sections(i32* %23, %struct.bfd_link_info* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %153

29:                                               ; preds = %22
  %30 = load i32, i32* @SEC_ALLOC, align 4
  %31 = load i32, i32* @SEC_LOAD, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SEC_READONLY, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SEC_IN_MEMORY, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @SEC_CODE, align 4
  %44 = or i32 %42, %43
  %45 = call i32* @bfd_make_section_anyway_with_flags(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %48 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %47, i32 0, i32 9
  store i32* %46, i32** %48, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %29
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @bfd_set_section_alignment(i32* %52, i32* %53, i32 4)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51, %29
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %3, align 4
  br label %153

58:                                               ; preds = %51
  %59 = load i32*, i32** %4, align 8
  %60 = call i8* @bfd_get_section_by_name(i32* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %62 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %61, i32 0, i32 8
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* @SEC_ALLOC, align 4
  %65 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %66 = or i32 %64, %65
  %67 = call i32* @bfd_make_section_with_flags(i32* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %70 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %69, i32 0, i32 7
  store i32* %68, i32** %70, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %153

75:                                               ; preds = %58
  %76 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %77 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %4, align 8
  %82 = call i8* @bfd_get_section_by_name(i32* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %84 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %83, i32 0, i32 6
  store i8* %82, i8** %84, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32* @bfd_make_section_with_flags(i32* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  store i32* %87, i32** %7, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %90 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %89, i32 0, i32 5
  store i32* %88, i32** %90, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %80
  %94 = load i32*, i32** %4, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @bfd_set_section_alignment(i32* %94, i32* %95, i32 2)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %93, %80
  %99 = load i32, i32* @FALSE, align 4
  store i32 %99, i32* %3, align 4
  br label %153

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %75
  %102 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %103 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i32*, i32** %4, align 8
  %108 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %109 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %110 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %109, i32 0, i32 3
  %111 = call i32 @elf_vxworks_create_dynamic_sections(i32* %107, %struct.bfd_link_info* %108, i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @FALSE, align 4
  store i32 %114, i32* %3, align 4
  br label %153

115:                                              ; preds = %106, %101
  %116 = load i32*, i32** %4, align 8
  %117 = call i8* @bfd_get_section_by_name(i32* %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %118 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %119 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = call i8* @bfd_get_section_by_name(i32* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %122 = bitcast i8* %121 to i32*
  store i32* %122, i32** %7, align 8
  %123 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %124 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %123, i32 0, i32 1
  store i32* %122, i32** %124, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %115
  %128 = call i32 (...) @abort() #3
  unreachable

129:                                              ; preds = %115
  %130 = load i32, i32* @SEC_ALLOC, align 4
  %131 = load i32, i32* @SEC_CODE, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %8, align 4
  %135 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %136 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @PLT_VXWORKS, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %129
  %141 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %142 = load i32, i32* @SEC_LOAD, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @SEC_READONLY, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %140, %129
  %149 = load i32*, i32** %4, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @bfd_set_section_flags(i32* %149, i32* %150, i32 %151)
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %148, %113, %98, %73, %56, %27, %20
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @ppc_elf_create_got(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_elf_create_dynamic_sections(i32*, %struct.bfd_link_info*) #1

declare dso_local i32* @bfd_make_section_anyway_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, i32*, i32) #1

declare dso_local i8* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32* @bfd_make_section_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @elf_vxworks_create_dynamic_sections(i32*, %struct.bfd_link_info*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @bfd_set_section_flags(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
