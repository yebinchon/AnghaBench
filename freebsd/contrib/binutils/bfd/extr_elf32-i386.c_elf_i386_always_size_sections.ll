; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-i386.c_elf_i386_always_size_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-i386.c_elf_i386_always_size_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_entry = type { i64, i32, i32 }
%struct.bfd_link_hash_entry = type { i32 }
%struct.elf_backend_data = type { i32 (%struct.bfd_link_info.0*, %struct.elf_link_hash_entry*, i32)*, i32 }
%struct.bfd_link_info.0 = type opaque
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c"_TLS_MODULE_BASE_\00", align 1
@FALSE = common dso_local global i32 0, align 4
@STT_TLS = common dso_local global i64 0, align 8
@BSF_LOCAL = common dso_local global i32 0, align 4
@STV_HIDDEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @elf_i386_always_size_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_i386_always_size_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.elf_link_hash_entry*, align 8
  %8 = alloca %struct.bfd_link_hash_entry*, align 8
  %9 = alloca %struct.elf_backend_data*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %10 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %11 = call %struct.TYPE_3__* @elf_hash_table(%struct.bfd_link_info* %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %63

16:                                               ; preds = %2
  %17 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %18 = call %struct.TYPE_3__* @elf_hash_table(%struct.bfd_link_info* %17)
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = call %struct.elf_link_hash_entry* @elf_link_hash_lookup(%struct.TYPE_3__* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  store %struct.elf_link_hash_entry* %22, %struct.elf_link_hash_entry** %7, align 8
  %23 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %24 = icmp ne %struct.elf_link_hash_entry* %23, null
  br i1 %24, label %25, label %62

25:                                               ; preds = %16
  %26 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %27 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @STT_TLS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %25
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %8, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %32)
  store %struct.elf_backend_data* %33, %struct.elf_backend_data** %9, align 8
  %34 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @BSF_LOCAL, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = load %struct.elf_backend_data*, %struct.elf_backend_data** %9, align 8
  %40 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info* %34, i32* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %36, i32* %37, i32 0, i32* null, i32 %38, i32 %41, %struct.bfd_link_hash_entry** %8)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %65

46:                                               ; preds = %31
  %47 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %8, align 8
  %48 = bitcast %struct.bfd_link_hash_entry* %47 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %48, %struct.elf_link_hash_entry** %7, align 8
  %49 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %50 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %49, i32 0, i32 1
  store i32 1, i32* %50, align 8
  %51 = load i32, i32* @STV_HIDDEN, align 4
  %52 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %53 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.elf_backend_data*, %struct.elf_backend_data** %9, align 8
  %55 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %54, i32 0, i32 0
  %56 = load i32 (%struct.bfd_link_info.0*, %struct.elf_link_hash_entry*, i32)*, i32 (%struct.bfd_link_info.0*, %struct.elf_link_hash_entry*, i32)** %55, align 8
  %57 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %58 = bitcast %struct.bfd_link_info* %57 to %struct.bfd_link_info.0*
  %59 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i32 %56(%struct.bfd_link_info.0* %58, %struct.elf_link_hash_entry* %59, i32 %60)
  br label %62

62:                                               ; preds = %46, %25, %16
  br label %63

63:                                               ; preds = %62, %2
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %44
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_3__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.elf_link_hash_entry* @elf_link_hash_lookup(%struct.TYPE_3__*, i8*, i32, i32, i32) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info*, i32*, i8*, i32, i32*, i32, i32*, i32, i32, %struct.bfd_link_hash_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
