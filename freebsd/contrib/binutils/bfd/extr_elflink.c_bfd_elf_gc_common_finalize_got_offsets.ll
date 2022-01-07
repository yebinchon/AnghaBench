; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_gc_common_finalize_got_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_gc_common_finalize_got_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__* }
%struct.bfd_link_info = type { %struct.TYPE_12__*, i32 }
%struct.elf_backend_data = type { i64, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.alloc_got_off_arg = type { i32, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }

@FALSE = common dso_local global i32 0, align 4
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@elf_gc_allocate_got_offsets = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_elf_gc_common_finalize_got_offsets(%struct.TYPE_12__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.elf_backend_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.alloc_got_off_arg, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = call %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_12__* %15)
  store %struct.elf_backend_data* %16, %struct.elf_backend_data** %7, align 8
  %17 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %18 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %24 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @is_elf_hash_table(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %123

30:                                               ; preds = %2
  %31 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %32 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i64 0, i64* %8, align 8
  br label %40

36:                                               ; preds = %30
  %37 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %38 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %36, %35
  %41 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %42 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %6, align 8
  br label %44

44:                                               ; preds = %109, %40
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = icmp ne %struct.TYPE_12__* %45, null
  br i1 %46, label %47, label %113

47:                                               ; preds = %44
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = call i64 @bfd_get_flavour(%struct.TYPE_12__* %48)
  %50 = load i64, i64* @bfd_target_elf_flavour, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %109

53:                                               ; preds = %47
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = call i64* @elf_local_got_refcounts(%struct.TYPE_12__* %54)
  store i64* %55, i64** %11, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %109

59:                                               ; preds = %53
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = call %struct.TYPE_14__* @elf_tdata(%struct.TYPE_12__* %60)
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %14, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = call i64 @elf_bad_symtab(%struct.TYPE_12__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %71 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = udiv i64 %69, %74
  store i64 %75, i64* %13, align 8
  br label %80

76:                                               ; preds = %59
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %13, align 8
  br label %80

80:                                               ; preds = %76, %66
  store i64 0, i64* %12, align 8
  br label %81

81:                                               ; preds = %105, %80
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %13, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %81
  %86 = load i64*, i64** %11, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load i64, i64* %8, align 8
  %93 = load i64*, i64** %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 %92, i64* %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = load i64, i64* %8, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %8, align 8
  br label %104

100:                                              ; preds = %85
  %101 = load i64*, i64** %11, align 8
  %102 = load i64, i64* %12, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  store i64 -1, i64* %103, align 8
  br label %104

104:                                              ; preds = %100, %91
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %12, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %12, align 8
  br label %81

108:                                              ; preds = %81
  br label %109

109:                                              ; preds = %108, %58, %52
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %6, align 8
  br label %44

113:                                              ; preds = %44
  %114 = load i64, i64* %8, align 8
  %115 = getelementptr inbounds %struct.alloc_got_off_arg, %struct.alloc_got_off_arg* %10, i32 0, i32 1
  store i64 %114, i64* %115, align 8
  %116 = load i32, i32* %9, align 4
  %117 = getelementptr inbounds %struct.alloc_got_off_arg, %struct.alloc_got_off_arg* %10, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  %118 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %119 = call i32 @elf_hash_table(%struct.bfd_link_info* %118)
  %120 = load i32, i32* @elf_gc_allocate_got_offsets, align 4
  %121 = call i32 @elf_link_hash_traverse(i32 %119, i32 %120, %struct.alloc_got_off_arg* %10)
  %122 = load i32, i32* @TRUE, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %113, %28
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_12__*) #1

declare dso_local i32 @is_elf_hash_table(i32) #1

declare dso_local i64 @bfd_get_flavour(%struct.TYPE_12__*) #1

declare dso_local i64* @elf_local_got_refcounts(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_14__* @elf_tdata(%struct.TYPE_12__*) #1

declare dso_local i64 @elf_bad_symtab(%struct.TYPE_12__*) #1

declare dso_local i32 @elf_link_hash_traverse(i32, i32, %struct.alloc_got_off_arg*) #1

declare dso_local i32 @elf_hash_table(%struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
