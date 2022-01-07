; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_dynamic_symbol_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_dynamic_symbol_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, i32, i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.bfd_link_info = type { i64 }
%struct.elf_backend_data = type { i32 (i32)* }
%struct.elf_link_hash_table = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_dynamic_symbol_p(%struct.elf_link_hash_entry* %0, %struct.bfd_link_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.elf_backend_data*, align 8
  %10 = alloca %struct.elf_link_hash_table*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %12 = icmp eq %struct.elf_link_hash_entry* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %113

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %32, %15
  %17 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %18 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @bfd_link_hash_indirect, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %25 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @bfd_link_hash_warning, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %23, %16
  %31 = phi i1 [ true, %16 ], [ %29, %23 ]
  br i1 %31, label %32, label %40

32:                                               ; preds = %30
  %33 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %34 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %39, %struct.elf_link_hash_entry** %5, align 8
  br label %16

40:                                               ; preds = %30
  %41 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %42 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %4, align 4
  br label %113

47:                                               ; preds = %40
  %48 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %49 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %4, align 4
  br label %113

54:                                               ; preds = %47
  %55 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %56 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %61 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %62 = call i64 @SYMBOLIC_BIND(%struct.bfd_link_info* %60, %struct.elf_link_hash_entry* %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ true, %54 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %68 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ELF_ST_VISIBILITY(i32 %69)
  switch i32 %70, label %100 [
    i32 129, label %71
    i32 130, label %71
    i32 128, label %73
  ]

71:                                               ; preds = %64, %64
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %4, align 4
  br label %113

73:                                               ; preds = %64
  %74 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %75 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %74)
  store %struct.elf_link_hash_table* %75, %struct.elf_link_hash_table** %10, align 8
  %76 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %10, align 8
  %77 = call i32 @is_elf_hash_table(%struct.elf_link_hash_table* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %4, align 4
  br label %113

81:                                               ; preds = %73
  %82 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %10, align 8
  %83 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.elf_backend_data* @get_elf_backend_data(i32 %84)
  store %struct.elf_backend_data* %85, %struct.elf_backend_data** %9, align 8
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load %struct.elf_backend_data*, %struct.elf_backend_data** %9, align 8
  %90 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %89, i32 0, i32 0
  %91 = load i32 (i32)*, i32 (i32)** %90, align 8
  %92 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %93 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %91(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %88, %81
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %97, %88
  br label %101

100:                                              ; preds = %64
  br label %101

101:                                              ; preds = %100, %99
  %102 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %103 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @TRUE, align 4
  store i32 %107, i32* %4, align 4
  br label %113

108:                                              ; preds = %101
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %108, %106, %79, %71, %52, %45, %13
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @SYMBOLIC_BIND(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i32 @ELF_ST_VISIBILITY(i32) #1

declare dso_local %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @is_elf_hash_table(%struct.elf_link_hash_table*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
