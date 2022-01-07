; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_symbol_refs_local_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_symbol_refs_local_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, i32, i32, i64, i32 }
%struct.bfd_link_info = type { i64 }
%struct.elf_backend_data = type { i32 (i32)* }
%struct.elf_link_hash_table = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STV_DEFAULT = common dso_local global i64 0, align 8
@STV_PROTECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_symbol_refs_local_p(%struct.elf_link_hash_entry* %0, %struct.bfd_link_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.elf_backend_data*, align 8
  %9 = alloca %struct.elf_link_hash_table*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %11 = icmp eq %struct.elf_link_hash_entry* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %4, align 4
  br label %96

14:                                               ; preds = %3
  %15 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %16 = call i64 @ELF_COMMON_DEF_P(%struct.elf_link_hash_entry* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %27

19:                                               ; preds = %14
  %20 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %21 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %4, align 4
  br label %96

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %18
  %28 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %29 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %4, align 4
  br label %96

34:                                               ; preds = %27
  %35 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %36 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %4, align 4
  br label %96

41:                                               ; preds = %34
  %42 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %43 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %48 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %49 = call i64 @SYMBOLIC_BIND(%struct.bfd_link_info* %47, %struct.elf_link_hash_entry* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %41
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %4, align 4
  br label %96

53:                                               ; preds = %46
  %54 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %55 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @ELF_ST_VISIBILITY(i32 %56)
  %58 = load i64, i64* @STV_DEFAULT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %4, align 4
  br label %96

62:                                               ; preds = %53
  %63 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %64 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ELF_ST_VISIBILITY(i32 %65)
  %67 = load i64, i64* @STV_PROTECTED, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %4, align 4
  br label %96

71:                                               ; preds = %62
  %72 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %73 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %72)
  store %struct.elf_link_hash_table* %73, %struct.elf_link_hash_table** %9, align 8
  %74 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %9, align 8
  %75 = call i32 @is_elf_hash_table(%struct.elf_link_hash_table* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %4, align 4
  br label %96

79:                                               ; preds = %71
  %80 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %9, align 8
  %81 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.elf_backend_data* @get_elf_backend_data(i32 %82)
  store %struct.elf_backend_data* %83, %struct.elf_backend_data** %8, align 8
  %84 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %85 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %84, i32 0, i32 0
  %86 = load i32 (i32)*, i32 (i32)** %85, align 8
  %87 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %88 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 %86(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %79
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %4, align 4
  br label %96

94:                                               ; preds = %79
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %92, %77, %69, %60, %51, %39, %32, %24, %12
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @ELF_COMMON_DEF_P(%struct.elf_link_hash_entry*) #1

declare dso_local i64 @SYMBOLIC_BIND(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @is_elf_hash_table(%struct.elf_link_hash_table*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
