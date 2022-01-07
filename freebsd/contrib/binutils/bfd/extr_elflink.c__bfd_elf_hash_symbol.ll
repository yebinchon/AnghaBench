; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_hash_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_hash_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_hash_symbol(%struct.elf_link_hash_entry* %0) #0 {
  %2 = alloca %struct.elf_link_hash_entry*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %2, align 8
  %3 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %2, align 8
  %4 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %1
  %8 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %2, align 8
  %9 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @bfd_link_hash_undefined, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %47, label %14

14:                                               ; preds = %7
  %15 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %2, align 8
  %16 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %47, label %21

21:                                               ; preds = %14
  %22 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %2, align 8
  %23 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @bfd_link_hash_defined, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %2, align 8
  %30 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @bfd_link_hash_defweak, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %28, %21
  %36 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %2, align 8
  %37 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br label %45

45:                                               ; preds = %35, %28
  %46 = phi i1 [ false, %28 ], [ %44, %35 ]
  br label %47

47:                                               ; preds = %45, %14, %7, %1
  %48 = phi i1 [ true, %14 ], [ true, %7 ], [ true, %1 ], [ %46, %45 ]
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
