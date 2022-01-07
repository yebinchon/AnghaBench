; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_size_rela_got_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_size_rela_got_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.alpha_elf_got_entry = type { i64, i32, %struct.alpha_elf_got_entry* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { %struct.alpha_elf_got_entry**, i32*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c".rela.got\00", align 1
@elf64_alpha_size_rela_got_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfd_link_info*)* @elf64_alpha_size_rela_got_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf64_alpha_size_rela_got_section(%struct.bfd_link_info* %0) #0 {
  %2 = alloca %struct.bfd_link_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.alpha_elf_got_entry**, align 8
  %9 = alloca %struct.alpha_elf_got_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %2, align 8
  store i64 0, i64* %3, align 8
  %12 = load %struct.bfd_link_info*, %struct.bfd_link_info** %2, align 8
  %13 = call %struct.TYPE_14__* @alpha_elf_hash_table(%struct.bfd_link_info* %12)
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %4, align 8
  br label %16

16:                                               ; preds = %82, %1
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %87

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  store i32* %20, i32** %7, align 8
  br label %21

21:                                               ; preds = %76, %19
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %81

24:                                               ; preds = %21
  %25 = load i32*, i32** %7, align 8
  %26 = call %struct.TYPE_13__* @alpha_elf_tdata(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %27, align 8
  store %struct.alpha_elf_got_entry** %28, %struct.alpha_elf_got_entry*** %8, align 8
  %29 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %8, align 8
  %30 = icmp ne %struct.alpha_elf_got_entry** %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %76

32:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call %struct.TYPE_11__* @elf_tdata(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %72, %32
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %43, i64 %45
  %47 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %46, align 8
  store %struct.alpha_elf_got_entry* %47, %struct.alpha_elf_got_entry** %9, align 8
  br label %48

48:                                               ; preds = %67, %42
  %49 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %9, align 8
  %50 = icmp ne %struct.alpha_elf_got_entry* %49, null
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %9, align 8
  %53 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %9, align 8
  %58 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.bfd_link_info*, %struct.bfd_link_info** %2, align 8
  %61 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @alpha_dynamic_entries_for_reloc(i32 %59, i32 0, i32 %62)
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %56, %51
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %9, align 8
  %69 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %68, i32 0, i32 2
  %70 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %69, align 8
  store %struct.alpha_elf_got_entry* %70, %struct.alpha_elf_got_entry** %9, align 8
  br label %48

71:                                               ; preds = %48
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %38

75:                                               ; preds = %38
  br label %76

76:                                               ; preds = %75, %31
  %77 = load i32*, i32** %7, align 8
  %78 = call %struct.TYPE_13__* @alpha_elf_tdata(i32* %77)
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %7, align 8
  br label %21

81:                                               ; preds = %21
  br label %82

82:                                               ; preds = %81
  %83 = load i32*, i32** %4, align 8
  %84 = call %struct.TYPE_13__* @alpha_elf_tdata(i32* %83)
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %4, align 8
  br label %16

87:                                               ; preds = %16
  %88 = load %struct.bfd_link_info*, %struct.bfd_link_info** %2, align 8
  %89 = call %struct.TYPE_12__* @elf_hash_table(%struct.bfd_link_info* %88)
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %5, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = call %struct.TYPE_10__* @bfd_get_section_by_name(i32* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* %93, %struct.TYPE_10__** %6, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = icmp ne %struct.TYPE_10__* %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %87
  %97 = load i64, i64* %3, align 8
  %98 = icmp eq i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @BFD_ASSERT(i32 %99)
  br label %112

101:                                              ; preds = %87
  %102 = load i64, i64* %3, align 8
  %103 = mul i64 4, %102
  %104 = trunc i64 %103 to i32
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.bfd_link_info*, %struct.bfd_link_info** %2, align 8
  %108 = call %struct.TYPE_14__* @alpha_elf_hash_table(%struct.bfd_link_info* %107)
  %109 = load i32, i32* @elf64_alpha_size_rela_got_1, align 4
  %110 = load %struct.bfd_link_info*, %struct.bfd_link_info** %2, align 8
  %111 = call i32 @alpha_elf_link_hash_traverse(%struct.TYPE_14__* %108, i32 %109, %struct.bfd_link_info* %110)
  br label %112

112:                                              ; preds = %101, %96
  ret void
}

declare dso_local %struct.TYPE_14__* @alpha_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_13__* @alpha_elf_tdata(i32*) #1

declare dso_local %struct.TYPE_11__* @elf_tdata(i32*) #1

declare dso_local i64 @alpha_dynamic_entries_for_reloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_10__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @alpha_elf_link_hash_traverse(%struct.TYPE_14__*, i32, %struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
