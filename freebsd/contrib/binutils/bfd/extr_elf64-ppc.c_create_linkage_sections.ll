; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_create_linkage_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_create_linkage_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.ppc_link_hash_table = type { i32*, i32*, i32*, i32* }

@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".sfpr\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c".glink\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c".branch_lt\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c".rela.branch_lt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @create_linkage_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_linkage_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.ppc_link_hash_table*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %8 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %9 = call %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info* %8)
  store %struct.ppc_link_hash_table* %9, %struct.ppc_link_hash_table** %6, align 8
  %10 = load i32, i32* @SEC_ALLOC, align 4
  %11 = load i32, i32* @SEC_LOAD, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SEC_CODE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SEC_READONLY, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SEC_IN_MEMORY, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i8* @bfd_make_section_anyway_with_flags(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %28 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  %29 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %30 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %2
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %36 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @bfd_set_section_alignment(i32* %34, i32* %37, i32 2)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33, %2
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %3, align 4
  br label %131

42:                                               ; preds = %33
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @bfd_make_section_anyway_with_flags(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %48 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %50 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %42
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %56 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @bfd_set_section_alignment(i32* %54, i32* %57, i32 3)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %53, %42
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %3, align 4
  br label %131

62:                                               ; preds = %53
  %63 = load i32, i32* @SEC_ALLOC, align 4
  %64 = load i32, i32* @SEC_LOAD, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SEC_IN_MEMORY, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %7, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i8* @bfd_make_section_anyway_with_flags(i32* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %77 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %79 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %62
  %83 = load i32*, i32** %4, align 8
  %84 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %85 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @bfd_set_section_alignment(i32* %83, i32* %86, i32 3)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %82, %62
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %3, align 4
  br label %131

91:                                               ; preds = %82
  %92 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %93 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %3, align 4
  br label %131

98:                                               ; preds = %91
  %99 = load i32, i32* @SEC_ALLOC, align 4
  %100 = load i32, i32* @SEC_LOAD, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @SEC_READONLY, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @SEC_IN_MEMORY, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %109 = or i32 %107, %108
  store i32 %109, i32* %7, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i8* @bfd_make_section_anyway_with_flags(i32* %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = bitcast i8* %112 to i32*
  %114 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %115 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %114, i32 0, i32 0
  store i32* %113, i32** %115, align 8
  %116 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %117 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %98
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %123 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @bfd_set_section_alignment(i32* %121, i32* %124, i32 3)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %120, %98
  %128 = load i32, i32* @FALSE, align 4
  store i32 %128, i32* %3, align 4
  br label %131

129:                                              ; preds = %120
  %130 = load i32, i32* @TRUE, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %127, %96, %89, %60, %40
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info*) #1

declare dso_local i8* @bfd_make_section_anyway_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
