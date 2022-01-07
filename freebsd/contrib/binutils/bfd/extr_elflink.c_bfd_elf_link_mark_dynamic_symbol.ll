; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_link_mark_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_link_mark_dynamic_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64, i64, %struct.bfd_elf_dynamic_list* }
%struct.bfd_elf_dynamic_list = type { i32, i64 (i32*, i32*, i32)* }
%struct.elf_link_hash_entry = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@STT_OBJECT = common dso_local global i64 0, align 8
@bfd_link_hash_new = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfd_elf_link_mark_dynamic_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.bfd_elf_dynamic_list*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %8 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %9 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %8, i32 0, i32 2
  %10 = load %struct.bfd_elf_dynamic_list*, %struct.bfd_elf_dynamic_list** %9, align 8
  store %struct.bfd_elf_dynamic_list* %10, %struct.bfd_elf_dynamic_list** %7, align 8
  %11 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %12 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %17 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %3
  br label %68

21:                                               ; preds = %15
  %22 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %23 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %28 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @STT_OBJECT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %65, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ELF_ST_TYPE(i32 %38)
  %40 = load i64, i64* @STT_OBJECT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %65, label %42

42:                                               ; preds = %35, %32, %21
  %43 = load %struct.bfd_elf_dynamic_list*, %struct.bfd_elf_dynamic_list** %7, align 8
  %44 = icmp ne %struct.bfd_elf_dynamic_list* %43, null
  br i1 %44, label %45, label %68

45:                                               ; preds = %42
  %46 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %47 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @bfd_link_hash_new, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %45
  %53 = load %struct.bfd_elf_dynamic_list*, %struct.bfd_elf_dynamic_list** %7, align 8
  %54 = getelementptr inbounds %struct.bfd_elf_dynamic_list, %struct.bfd_elf_dynamic_list* %53, i32 0, i32 1
  %55 = load i64 (i32*, i32*, i32)*, i64 (i32*, i32*, i32)** %54, align 8
  %56 = load %struct.bfd_elf_dynamic_list*, %struct.bfd_elf_dynamic_list** %7, align 8
  %57 = getelementptr inbounds %struct.bfd_elf_dynamic_list, %struct.bfd_elf_dynamic_list* %56, i32 0, i32 0
  %58 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %59 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 %55(i32* %57, i32* null, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52, %35, %26
  %66 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %67 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %20, %65, %52, %45, %42
  ret void
}

declare dso_local i64 @ELF_ST_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
