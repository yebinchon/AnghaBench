; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_renumber_dynsyms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_renumber_dynsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_12__* }
%struct.bfd_link_info = type { i64 }
%struct.elf_backend_data = type { i32 (%struct.TYPE_11__*, %struct.bfd_link_info.0*, %struct.TYPE_12__*)* }
%struct.bfd_link_info.0 = type opaque
%struct.elf_link_local_dynamic_entry = type { i64, %struct.elf_link_local_dynamic_entry* }
%struct.TYPE_14__ = type { i64, %struct.elf_link_local_dynamic_entry*, i64 }
%struct.TYPE_13__ = type { i64 }

@SEC_EXCLUDE = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@elf_link_renumber_local_hash_table_dynsyms = common dso_local global i32 0, align 4
@elf_link_renumber_hash_table_dynsyms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, %struct.bfd_link_info*, i64*)* @_bfd_elf_link_renumber_dynsyms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_bfd_elf_link_renumber_dynsyms(%struct.TYPE_11__* %0, %struct.bfd_link_info* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.elf_backend_data*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.elf_link_local_dynamic_entry*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %12 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %17 = call %struct.TYPE_14__* @elf_hash_table(%struct.bfd_link_info* %16)
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %15, %3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = call %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_11__* %22)
  store %struct.elf_backend_data* %23, %struct.elf_backend_data** %8, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %9, align 8
  br label %27

27:                                               ; preds = %65, %21
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %29 = icmp ne %struct.TYPE_12__* %28, null
  br i1 %29, label %30, label %69

30:                                               ; preds = %27
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SEC_EXCLUDE, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %30
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SEC_ALLOC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %37
  %45 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %46 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_11__*, %struct.bfd_link_info.0*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.bfd_link_info.0*, %struct.TYPE_12__*)** %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %50 = bitcast %struct.bfd_link_info* %49 to %struct.bfd_link_info.0*
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = call i32 %47(%struct.TYPE_11__* %48, %struct.bfd_link_info.0* %50, %struct.TYPE_12__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %44
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %7, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = call %struct.TYPE_13__* @elf_section_data(%struct.TYPE_12__* %57)
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  br label %64

60:                                               ; preds = %44, %37, %30
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = call %struct.TYPE_13__* @elf_section_data(%struct.TYPE_12__* %61)
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %54
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %9, align 8
  br label %27

69:                                               ; preds = %27
  br label %70

70:                                               ; preds = %69, %15
  %71 = load i64, i64* %7, align 8
  %72 = load i64*, i64** %6, align 8
  store i64 %71, i64* %72, align 8
  %73 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %74 = call %struct.TYPE_14__* @elf_hash_table(%struct.bfd_link_info* %73)
  %75 = load i32, i32* @elf_link_renumber_local_hash_table_dynsyms, align 4
  %76 = call i32 @elf_link_hash_traverse(%struct.TYPE_14__* %74, i32 %75, i64* %7)
  %77 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %78 = call %struct.TYPE_14__* @elf_hash_table(%struct.bfd_link_info* %77)
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %79, align 8
  %81 = icmp ne %struct.elf_link_local_dynamic_entry* %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %70
  %83 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %84 = call %struct.TYPE_14__* @elf_hash_table(%struct.bfd_link_info* %83)
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %85, align 8
  store %struct.elf_link_local_dynamic_entry* %86, %struct.elf_link_local_dynamic_entry** %10, align 8
  br label %87

87:                                               ; preds = %95, %82
  %88 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %10, align 8
  %89 = icmp ne %struct.elf_link_local_dynamic_entry* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i64, i64* %7, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %7, align 8
  %93 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %10, align 8
  %94 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %90
  %96 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %10, align 8
  %97 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %96, i32 0, i32 1
  %98 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %97, align 8
  store %struct.elf_link_local_dynamic_entry* %98, %struct.elf_link_local_dynamic_entry** %10, align 8
  br label %87

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %70
  %101 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %102 = call %struct.TYPE_14__* @elf_hash_table(%struct.bfd_link_info* %101)
  %103 = load i32, i32* @elf_link_renumber_hash_table_dynsyms, align 4
  %104 = call i32 @elf_link_hash_traverse(%struct.TYPE_14__* %102, i32 %103, i64* %7)
  %105 = load i64, i64* %7, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i64, i64* %7, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %7, align 8
  br label %110

110:                                              ; preds = %107, %100
  %111 = load i64, i64* %7, align 8
  %112 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %113 = call %struct.TYPE_14__* @elf_hash_table(%struct.bfd_link_info* %112)
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  store i64 %111, i64* %114, align 8
  %115 = load i64, i64* %7, align 8
  ret i64 %115
}

declare dso_local %struct.TYPE_14__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_13__* @elf_section_data(%struct.TYPE_12__*) #1

declare dso_local i32 @elf_link_hash_traverse(%struct.TYPE_14__*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
