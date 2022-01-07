; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_size_rela_got_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_size_rela_got_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpha_elf_link_hash_entry = type { %struct.alpha_elf_got_entry*, %struct.TYPE_13__ }
%struct.alpha_elf_got_entry = type { i64, i32, %struct.alpha_elf_got_entry* }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.bfd_link_info = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32* }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c".rela.got\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alpha_elf_link_hash_entry*, %struct.bfd_link_info*)* @elf64_alpha_size_rela_got_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf64_alpha_size_rela_got_1(%struct.alpha_elf_link_hash_entry* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alpha_elf_link_hash_entry*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alpha_elf_got_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.alpha_elf_link_hash_entry* %0, %struct.alpha_elf_link_hash_entry** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %11 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %12 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @bfd_link_hash_warning, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %20 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.alpha_elf_link_hash_entry*
  store %struct.alpha_elf_link_hash_entry* %26, %struct.alpha_elf_link_hash_entry** %4, align 8
  br label %27

27:                                               ; preds = %18, %2
  %28 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %29 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %3, align 4
  br label %104

35:                                               ; preds = %27
  %36 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %37 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %36, i32 0, i32 1
  %38 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %39 = call i32 @alpha_elf_dynamic_symbol_p(%struct.TYPE_13__* %37, %struct.bfd_link_info* %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %41 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %104

52:                                               ; preds = %47, %35
  store i64 0, i64* %8, align 8
  %53 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %54 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %53, i32 0, i32 0
  %55 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %54, align 8
  store %struct.alpha_elf_got_entry* %55, %struct.alpha_elf_got_entry** %7, align 8
  br label %56

56:                                               ; preds = %76, %52
  %57 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %7, align 8
  %58 = icmp ne %struct.alpha_elf_got_entry* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %56
  %60 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %7, align 8
  %61 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %7, align 8
  %66 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %70 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @alpha_dynamic_entries_for_reloc(i32 %67, i32 %68, i32 %71)
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %64, %59
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %7, align 8
  %78 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %77, i32 0, i32 2
  %79 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %78, align 8
  store %struct.alpha_elf_got_entry* %79, %struct.alpha_elf_got_entry** %7, align 8
  br label %56

80:                                               ; preds = %56
  %81 = load i64, i64* %8, align 8
  %82 = icmp ugt i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %85 = call %struct.TYPE_12__* @elf_hash_table(%struct.bfd_link_info* %84)
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %9, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = call %struct.TYPE_11__* @bfd_get_section_by_name(i32* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* %89, %struct.TYPE_11__** %10, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %91 = icmp ne %struct.TYPE_11__* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @BFD_ASSERT(i32 %92)
  %94 = load i64, i64* %8, align 8
  %95 = mul i64 4, %94
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  br label %102

102:                                              ; preds = %83, %80
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %50, %33
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @alpha_elf_dynamic_symbol_p(%struct.TYPE_13__*, %struct.bfd_link_info*) #1

declare dso_local i64 @alpha_dynamic_entries_for_reloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_11__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
