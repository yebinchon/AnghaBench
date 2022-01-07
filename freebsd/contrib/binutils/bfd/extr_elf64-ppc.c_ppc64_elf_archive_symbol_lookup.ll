; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_archive_symbol_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_archive_symbol_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.bfd_link_info = type { i32 }
%struct.ppc_link_hash_entry = type { i64 }

@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.elf_link_hash_entry* (i32*, %struct.bfd_link_info*, i8*)* @ppc64_elf_archive_symbol_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.elf_link_hash_entry* @ppc64_elf_archive_symbol_lookup(i32* %0, %struct.bfd_link_info* %1, i8* %2) #0 {
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.elf_link_hash_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct.elf_link_hash_entry* @_bfd_elf_archive_symbol_lookup(i32* %11, %struct.bfd_link_info* %12, i8* %13)
  store %struct.elf_link_hash_entry* %14, %struct.elf_link_hash_entry** %8, align 8
  %15 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %16 = icmp ne %struct.elf_link_hash_entry* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %19 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %26 = bitcast %struct.elf_link_hash_entry* %25 to %struct.ppc_link_hash_entry*
  %27 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24, %17
  %31 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  store %struct.elf_link_hash_entry* %31, %struct.elf_link_hash_entry** %4, align 8
  br label %67

32:                                               ; preds = %24, %3
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 46
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  store %struct.elf_link_hash_entry* %39, %struct.elf_link_hash_entry** %4, align 8
  br label %67

40:                                               ; preds = %32
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strlen(i8* %41)
  store i64 %42, i64* %10, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, 2
  %46 = call i8* @bfd_alloc(i32* %43, i64 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store %struct.elf_link_hash_entry* getelementptr inbounds (%struct.elf_link_hash_entry, %struct.elf_link_hash_entry* null, i64 -1), %struct.elf_link_hash_entry** %4, align 8
  br label %67

50:                                               ; preds = %40
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 46, i8* %52, align 1
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, 1
  %58 = call i32 @memcpy(i8* %54, i8* %55, i64 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call %struct.elf_link_hash_entry* @_bfd_elf_archive_symbol_lookup(i32* %59, %struct.bfd_link_info* %60, i8* %61)
  store %struct.elf_link_hash_entry* %62, %struct.elf_link_hash_entry** %8, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @bfd_release(i32* %63, i8* %64)
  %66 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  store %struct.elf_link_hash_entry* %66, %struct.elf_link_hash_entry** %4, align 8
  br label %67

67:                                               ; preds = %50, %49, %38, %30
  %68 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  ret %struct.elf_link_hash_entry* %68
}

declare dso_local %struct.elf_link_hash_entry* @_bfd_elf_archive_symbol_lookup(i32*, %struct.bfd_link_info*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @bfd_alloc(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @bfd_release(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
