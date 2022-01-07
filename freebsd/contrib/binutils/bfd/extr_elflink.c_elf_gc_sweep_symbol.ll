; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_gc_sweep_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_gc_sweep_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.elf_gc_sweep_symbol_info = type { i32, i32 (i32, %struct.elf_link_hash_entry*, i32)* }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@DYNAMIC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @elf_gc_sweep_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_gc_sweep_symbol(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.elf_link_hash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.elf_gc_sweep_symbol_info*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %7 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @bfd_link_hash_warning, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %14 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %19, %struct.elf_link_hash_entry** %3, align 8
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %22 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @bfd_link_hash_defined, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %29 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @bfd_link_hash_defweak, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %27, %20
  %35 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %36 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %34
  %45 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %46 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DYNAMIC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %44
  %59 = load i8*, i8** %4, align 8
  %60 = bitcast i8* %59 to %struct.elf_gc_sweep_symbol_info*
  store %struct.elf_gc_sweep_symbol_info* %60, %struct.elf_gc_sweep_symbol_info** %5, align 8
  %61 = load %struct.elf_gc_sweep_symbol_info*, %struct.elf_gc_sweep_symbol_info** %5, align 8
  %62 = getelementptr inbounds %struct.elf_gc_sweep_symbol_info, %struct.elf_gc_sweep_symbol_info* %61, i32 0, i32 1
  %63 = load i32 (i32, %struct.elf_link_hash_entry*, i32)*, i32 (i32, %struct.elf_link_hash_entry*, i32)** %62, align 8
  %64 = load %struct.elf_gc_sweep_symbol_info*, %struct.elf_gc_sweep_symbol_info** %5, align 8
  %65 = getelementptr inbounds %struct.elf_gc_sweep_symbol_info, %struct.elf_gc_sweep_symbol_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 %63(i32 %66, %struct.elf_link_hash_entry* %67, i32 %68)
  br label %70

70:                                               ; preds = %58, %44, %34, %27
  %71 = load i32, i32* @TRUE, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
