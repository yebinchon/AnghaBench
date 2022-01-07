; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_create_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_create_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.elf32_arm_link_hash_table = type { i32, i32, i8*, i8*, i8*, i8*, i32, i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".dynbss\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@elf32_arm_vxworks_shared_plt_entry = common dso_local global i32 0, align 4
@elf32_arm_vxworks_exec_plt0_entry = common dso_local global i32 0, align 4
@elf32_arm_vxworks_exec_plt_entry = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @elf32_arm_create_dynamic_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_arm_create_dynamic_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
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
  %10 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %9, i32 0, i32 8
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
  br label %121

20:                                               ; preds = %13, %2
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %23 = call i32 @_bfd_elf_create_dynamic_sections(i32* %21, %struct.bfd_link_info* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %121

27:                                               ; preds = %20
  %28 = load i32*, i32** %4, align 8
  %29 = call i8* @bfd_get_section_by_name(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %31 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %34 = call i8* @RELOC_SECTION(%struct.elf32_arm_link_hash_table* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = call i8* @bfd_get_section_by_name(i32* %32, i8* %34)
  %36 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %37 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i8* @bfd_get_section_by_name(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %41 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %43 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %27
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %49 = call i8* @RELOC_SECTION(%struct.elf32_arm_link_hash_table* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i8* @bfd_get_section_by_name(i32* %47, i8* %49)
  %51 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %52 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %46, %27
  %54 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %55 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %53
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %61 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %62 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %61, i32 0, i32 6
  %63 = call i32 @elf_vxworks_create_dynamic_sections(i32* %59, %struct.bfd_link_info* %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %3, align 4
  br label %121

67:                                               ; preds = %58
  %68 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %69 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %74 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load i32, i32* @elf32_arm_vxworks_shared_plt_entry, align 4
  %76 = call i32 @ARRAY_SIZE(i32 %75)
  %77 = mul nsw i32 4, %76
  %78 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %79 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %91

80:                                               ; preds = %67
  %81 = load i32, i32* @elf32_arm_vxworks_exec_plt0_entry, align 4
  %82 = call i32 @ARRAY_SIZE(i32 %81)
  %83 = mul nsw i32 4, %82
  %84 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %85 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @elf32_arm_vxworks_exec_plt_entry, align 4
  %87 = call i32 @ARRAY_SIZE(i32 %86)
  %88 = mul nsw i32 4, %87
  %89 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %90 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %80, %72
  br label %92

92:                                               ; preds = %91, %53
  %93 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %94 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %93, i32 0, i32 5
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %117

97:                                               ; preds = %92
  %98 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %99 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %98, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %97
  %103 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %104 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %109 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %107
  %113 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %114 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %112, %102, %97, %92
  %118 = call i32 (...) @abort() #3
  unreachable

119:                                              ; preds = %112, %107
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %65, %25, %18
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @create_got_section(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_elf_create_dynamic_sections(i32*, %struct.bfd_link_info*) #1

declare dso_local i8* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i8* @RELOC_SECTION(%struct.elf32_arm_link_hash_table*, i8*) #1

declare dso_local i32 @elf_vxworks_create_dynamic_sections(i32*, %struct.bfd_link_info*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

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
