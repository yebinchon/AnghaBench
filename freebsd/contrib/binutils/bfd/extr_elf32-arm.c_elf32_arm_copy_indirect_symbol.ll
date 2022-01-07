; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_copy_indirect_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_copy_indirect_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.elf32_arm_link_hash_entry = type { i32, i64, %struct.elf32_arm_relocs_copied* }
%struct.elf32_arm_relocs_copied = type { i64, %struct.elf32_arm_relocs_copied*, i64, i64 }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@GOT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfd_link_info*, %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry*)* @elf32_arm_copy_indirect_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf32_arm_copy_indirect_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry* %2) #0 {
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca %struct.elf_link_hash_entry*, align 8
  %7 = alloca %struct.elf32_arm_link_hash_entry*, align 8
  %8 = alloca %struct.elf32_arm_link_hash_entry*, align 8
  %9 = alloca %struct.elf32_arm_relocs_copied**, align 8
  %10 = alloca %struct.elf32_arm_relocs_copied*, align 8
  %11 = alloca %struct.elf32_arm_relocs_copied*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  store %struct.elf_link_hash_entry* %2, %struct.elf_link_hash_entry** %6, align 8
  %12 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %13 = bitcast %struct.elf_link_hash_entry* %12 to %struct.elf32_arm_link_hash_entry*
  store %struct.elf32_arm_link_hash_entry* %13, %struct.elf32_arm_link_hash_entry** %7, align 8
  %14 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %15 = bitcast %struct.elf_link_hash_entry* %14 to %struct.elf32_arm_link_hash_entry*
  store %struct.elf32_arm_link_hash_entry* %15, %struct.elf32_arm_link_hash_entry** %8, align 8
  %16 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %17 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %16, i32 0, i32 2
  %18 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %17, align 8
  %19 = icmp ne %struct.elf32_arm_relocs_copied* %18, null
  br i1 %19, label %20, label %91

20:                                               ; preds = %3
  %21 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %7, align 8
  %22 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %21, i32 0, i32 2
  %23 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %22, align 8
  %24 = icmp ne %struct.elf32_arm_relocs_copied* %23, null
  br i1 %24, label %25, label %83

25:                                               ; preds = %20
  %26 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %27 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %26, i32 0, i32 2
  store %struct.elf32_arm_relocs_copied** %27, %struct.elf32_arm_relocs_copied*** %9, align 8
  br label %28

28:                                               ; preds = %77, %25
  %29 = load %struct.elf32_arm_relocs_copied**, %struct.elf32_arm_relocs_copied*** %9, align 8
  %30 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %29, align 8
  store %struct.elf32_arm_relocs_copied* %30, %struct.elf32_arm_relocs_copied** %10, align 8
  %31 = icmp ne %struct.elf32_arm_relocs_copied* %30, null
  br i1 %31, label %32, label %78

32:                                               ; preds = %28
  %33 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %7, align 8
  %34 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %33, i32 0, i32 2
  %35 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %34, align 8
  store %struct.elf32_arm_relocs_copied* %35, %struct.elf32_arm_relocs_copied** %11, align 8
  br label %36

36:                                               ; preds = %67, %32
  %37 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %11, align 8
  %38 = icmp ne %struct.elf32_arm_relocs_copied* %37, null
  br i1 %38, label %39, label %71

39:                                               ; preds = %36
  %40 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %11, align 8
  %41 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %10, align 8
  %44 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %39
  %48 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %10, align 8
  %49 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %11, align 8
  %52 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %10, align 8
  %56 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %11, align 8
  %59 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %10, align 8
  %63 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %62, i32 0, i32 1
  %64 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %63, align 8
  %65 = load %struct.elf32_arm_relocs_copied**, %struct.elf32_arm_relocs_copied*** %9, align 8
  store %struct.elf32_arm_relocs_copied* %64, %struct.elf32_arm_relocs_copied** %65, align 8
  br label %71

66:                                               ; preds = %39
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %11, align 8
  %69 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %68, i32 0, i32 1
  %70 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %69, align 8
  store %struct.elf32_arm_relocs_copied* %70, %struct.elf32_arm_relocs_copied** %11, align 8
  br label %36

71:                                               ; preds = %47, %36
  %72 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %11, align 8
  %73 = icmp eq %struct.elf32_arm_relocs_copied* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %10, align 8
  %76 = getelementptr inbounds %struct.elf32_arm_relocs_copied, %struct.elf32_arm_relocs_copied* %75, i32 0, i32 1
  store %struct.elf32_arm_relocs_copied** %76, %struct.elf32_arm_relocs_copied*** %9, align 8
  br label %77

77:                                               ; preds = %74, %71
  br label %28

78:                                               ; preds = %28
  %79 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %7, align 8
  %80 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %79, i32 0, i32 2
  %81 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %80, align 8
  %82 = load %struct.elf32_arm_relocs_copied**, %struct.elf32_arm_relocs_copied*** %9, align 8
  store %struct.elf32_arm_relocs_copied* %81, %struct.elf32_arm_relocs_copied** %82, align 8
  br label %83

83:                                               ; preds = %78, %20
  %84 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %85 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %84, i32 0, i32 2
  %86 = load %struct.elf32_arm_relocs_copied*, %struct.elf32_arm_relocs_copied** %85, align 8
  %87 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %7, align 8
  %88 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %87, i32 0, i32 2
  store %struct.elf32_arm_relocs_copied* %86, %struct.elf32_arm_relocs_copied** %88, align 8
  %89 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %90 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %89, i32 0, i32 2
  store %struct.elf32_arm_relocs_copied* null, %struct.elf32_arm_relocs_copied** %90, align 8
  br label %91

91:                                               ; preds = %83, %3
  %92 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %93 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @bfd_link_hash_indirect, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %123

98:                                               ; preds = %91
  %99 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %100 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %7, align 8
  %103 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %101
  store i64 %105, i64* %103, align 8
  %106 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %107 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %109 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp sle i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %98
  %114 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %115 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %7, align 8
  %118 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @GOT_UNKNOWN, align 4
  %120 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %121 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %113, %98
  br label %123

123:                                              ; preds = %122, %91
  %124 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %125 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %126 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %127 = call i32 @_bfd_elf_link_hash_copy_indirect(%struct.bfd_link_info* %124, %struct.elf_link_hash_entry* %125, %struct.elf_link_hash_entry* %126)
  ret void
}

declare dso_local i32 @_bfd_elf_link_hash_copy_indirect(%struct.bfd_link_info*, %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
