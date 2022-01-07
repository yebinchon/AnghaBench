; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_create_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_create_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct._bfd_sparc_elf_link_hash_table = type { i32, i32, i8*, i8*, i8*, i8*, i32, i32, i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c".rela.plt\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".dynbss\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c".rela.bss\00", align 1
@sparc_vxworks_shared_plt0_entry = common dso_local global i32 0, align 4
@sparc_vxworks_shared_plt_entry = common dso_local global i32 0, align 4
@sparc_vxworks_exec_plt0_entry = common dso_local global i32 0, align 4
@sparc_vxworks_exec_plt_entry = common dso_local global i32 0, align 4
@sparc64_plt_entry_build = common dso_local global i32 0, align 4
@PLT64_HEADER_SIZE = common dso_local global i32 0, align 4
@PLT64_ENTRY_SIZE = common dso_local global i32 0, align 4
@sparc32_plt_entry_build = common dso_local global i32 0, align 4
@PLT32_HEADER_SIZE = common dso_local global i32 0, align 4
@PLT32_ENTRY_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_sparc_elf_create_dynamic_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct._bfd_sparc_elf_link_hash_table*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %7 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %8 = call %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info* %7)
  store %struct._bfd_sparc_elf_link_hash_table* %8, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %9 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %10 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %9, i32 0, i32 9
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
  br label %145

20:                                               ; preds = %13, %2
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %23 = call i32 @_bfd_elf_create_dynamic_sections(i32* %21, %struct.bfd_link_info* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %145

27:                                               ; preds = %20
  %28 = load i32*, i32** %4, align 8
  %29 = call i8* @bfd_get_section_by_name(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %31 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i8* @bfd_get_section_by_name(i32* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %35 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i8* @bfd_get_section_by_name(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %39 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %41 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %27
  %45 = load i32*, i32** %4, align 8
  %46 = call i8* @bfd_get_section_by_name(i32* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %48 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %44, %27
  %50 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %51 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %49
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %57 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %58 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %57, i32 0, i32 7
  %59 = call i32 @elf_vxworks_create_dynamic_sections(i32* %55, %struct.bfd_link_info* %56, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  br label %145

63:                                               ; preds = %54
  %64 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %65 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load i32, i32* @sparc_vxworks_shared_plt0_entry, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = mul nsw i32 4, %70
  %72 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %73 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @sparc_vxworks_shared_plt_entry, align 4
  %75 = call i32 @ARRAY_SIZE(i32 %74)
  %76 = mul nsw i32 4, %75
  %77 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %78 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %90

79:                                               ; preds = %63
  %80 = load i32, i32* @sparc_vxworks_exec_plt0_entry, align 4
  %81 = call i32 @ARRAY_SIZE(i32 %80)
  %82 = mul nsw i32 4, %81
  %83 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %84 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @sparc_vxworks_exec_plt_entry, align 4
  %86 = call i32 @ARRAY_SIZE(i32 %85)
  %87 = mul nsw i32 4, %86
  %88 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %89 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %79, %68
  br label %116

91:                                               ; preds = %49
  %92 = load i32*, i32** %4, align 8
  %93 = call i64 @ABI_64_P(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i32, i32* @sparc64_plt_entry_build, align 4
  %97 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %98 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @PLT64_HEADER_SIZE, align 4
  %100 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %101 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @PLT64_ENTRY_SIZE, align 4
  %103 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %104 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %115

105:                                              ; preds = %91
  %106 = load i32, i32* @sparc32_plt_entry_build, align 4
  %107 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %108 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @PLT32_HEADER_SIZE, align 4
  %110 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %111 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @PLT32_ENTRY_SIZE, align 4
  %113 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %114 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %105, %95
  br label %116

116:                                              ; preds = %115, %90
  %117 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %118 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %117, i32 0, i32 5
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %141

121:                                              ; preds = %116
  %122 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %123 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %122, i32 0, i32 4
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %141

126:                                              ; preds = %121
  %127 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %128 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %127, i32 0, i32 3
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %133 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %131
  %137 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %138 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %136, %126, %121, %116
  %142 = call i32 (...) @abort() #3
  unreachable

143:                                              ; preds = %136, %131
  %144 = load i32, i32* @TRUE, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %61, %25, %18
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @create_got_section(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_elf_create_dynamic_sections(i32*, %struct.bfd_link_info*) #1

declare dso_local i8* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @elf_vxworks_create_dynamic_sections(i32*, %struct.bfd_link_info*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @ABI_64_P(i32*) #1

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
