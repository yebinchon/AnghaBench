; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_link_record_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_link_record_dynamic_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_entry = type { i32, i32, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.elf_strtab_hash = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.elf_strtab_hash*, i32 }

@bfd_link_hash_undefined = common dso_local global i32 0, align 4
@bfd_link_hash_undefweak = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ELF_VER_CHR = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca %struct.elf_strtab_hash*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  %10 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %11 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %108

14:                                               ; preds = %2
  %15 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %16 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ELF_ST_VISIBILITY(i32 %17)
  switch i32 %18, label %45 [
    i32 128, label %19
    i32 129, label %19
  ]

19:                                               ; preds = %14, %14
  %20 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %21 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @bfd_link_hash_undefined, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %28 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @bfd_link_hash_undefweak, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %35 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %37 = call %struct.TYPE_6__* @elf_hash_table(%struct.bfd_link_info* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %3, align 4
  br label %110

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %26, %19
  br label %45

45:                                               ; preds = %14, %44
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %48 = call %struct.TYPE_6__* @elf_hash_table(%struct.bfd_link_info* %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %52 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %54 = call %struct.TYPE_6__* @elf_hash_table(%struct.bfd_link_info* %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %59 = call %struct.TYPE_6__* @elf_hash_table(%struct.bfd_link_info* %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %60, align 8
  store %struct.elf_strtab_hash* %61, %struct.elf_strtab_hash** %6, align 8
  %62 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %6, align 8
  %63 = icmp eq %struct.elf_strtab_hash* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %46
  %65 = call %struct.elf_strtab_hash* (...) @_bfd_elf_strtab_init()
  store %struct.elf_strtab_hash* %65, %struct.elf_strtab_hash** %6, align 8
  %66 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %67 = call %struct.TYPE_6__* @elf_hash_table(%struct.bfd_link_info* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store %struct.elf_strtab_hash* %65, %struct.elf_strtab_hash** %68, align 8
  %69 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %6, align 8
  %70 = icmp eq %struct.elf_strtab_hash* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %3, align 4
  br label %110

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %46
  %75 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %76 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i8, i8* @ELF_VER_CHR, align 1
  %82 = call i8* @strchr(i8* %80, i8 signext %81)
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load i8*, i8** %7, align 8
  store i8 0, i8* %86, align 1
  br label %87

87:                                               ; preds = %85, %74
  %88 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %6, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = icmp ne i8* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i64 @_bfd_elf_strtab_add(%struct.elf_strtab_hash* %88, i8* %89, i32 %92)
  store i64 %93, i64* %9, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i8, i8* @ELF_VER_CHR, align 1
  %98 = load i8*, i8** %7, align 8
  store i8 %97, i8* %98, align 1
  br label %99

99:                                               ; preds = %96, %87
  %100 = load i64, i64* %9, align 8
  %101 = icmp eq i64 %100, -1
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %3, align 4
  br label %110

104:                                              ; preds = %99
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %107 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %104, %2
  %109 = load i32, i32* @TRUE, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %102, %71, %41
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @ELF_ST_VISIBILITY(i32) #1

declare dso_local %struct.TYPE_6__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.elf_strtab_hash* @_bfd_elf_strtab_init(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @_bfd_elf_strtab_add(%struct.elf_strtab_hash*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
