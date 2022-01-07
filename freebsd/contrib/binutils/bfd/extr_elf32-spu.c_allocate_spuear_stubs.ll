; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_allocate_spuear_stubs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_allocate_spuear_stubs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.stubarr = type { i32, i32, i32 }
%struct.spu_stub_hash_entry = type { i32, i32* }

@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"_SPUEAR_\00", align 1
@allocate_spuear_stubs.zero_rel = internal global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @allocate_spuear_stubs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_spuear_stubs(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stubarr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.spu_stub_hash_entry*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %10 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @bfd_link_hash_defined, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %17 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @bfd_link_hash_defweak, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %97

22:                                               ; preds = %15, %2
  %23 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %24 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %97

27:                                               ; preds = %22
  %28 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %29 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @strncmp(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %97

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to %struct.stubarr*
  store %struct.stubarr* %37, %struct.stubarr** %6, align 8
  %38 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %39 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %45 = call i8* @spu_stub_name(i32* %43, %struct.elf_link_hash_entry* %44, i32* @allocate_spuear_stubs.zero_rel)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load %struct.stubarr*, %struct.stubarr** %6, align 8
  %50 = getelementptr inbounds %struct.stubarr, %struct.stubarr* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %3, align 4
  br label %99

52:                                               ; preds = %35
  %53 = load %struct.stubarr*, %struct.stubarr** %6, align 8
  %54 = getelementptr inbounds %struct.stubarr, %struct.stubarr* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* @TRUE, align 4
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i64 @bfd_hash_lookup(i32 %55, i8* %56, i32 %57, i32 %58)
  %60 = inttoptr i64 %59 to %struct.spu_stub_hash_entry*
  store %struct.spu_stub_hash_entry* %60, %struct.spu_stub_hash_entry** %8, align 8
  %61 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %8, align 8
  %62 = icmp eq %struct.spu_stub_hash_entry* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %3, align 4
  br label %99

67:                                               ; preds = %52
  %68 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %8, align 8
  %69 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %3, align 4
  br label %99

76:                                               ; preds = %67
  %77 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %78 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %8, align 8
  %84 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %83, i32 0, i32 1
  store i32* %82, i32** %84, align 8
  %85 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %86 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %8, align 8
  %92 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.stubarr*, %struct.stubarr** %6, align 8
  %94 = getelementptr inbounds %struct.stubarr, %struct.stubarr* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %76, %27, %22, %15
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %72, %63, %48
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i8* @spu_stub_name(i32*, %struct.elf_link_hash_entry*, i32*) #1

declare dso_local i64 @bfd_hash_lookup(i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
