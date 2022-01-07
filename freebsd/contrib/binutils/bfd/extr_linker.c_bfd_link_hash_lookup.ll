; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_bfd_link_hash_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_bfd_link_hash_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.bfd_link_hash_entry* }
%struct.bfd_link_hash_table = type { i32 }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(%struct.bfd_link_hash_table* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.bfd_link_hash_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bfd_link_hash_entry*, align 8
  store %struct.bfd_link_hash_table* %0, %struct.bfd_link_hash_table** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %6, align 8
  %13 = getelementptr inbounds %struct.bfd_link_hash_table, %struct.bfd_link_hash_table* %12, i32 0, i32 0
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i64 @bfd_hash_lookup(i32* %13, i8* %14, i64 %15, i64 %16)
  %18 = inttoptr i64 %17 to %struct.bfd_link_hash_entry*
  store %struct.bfd_link_hash_entry* %18, %struct.bfd_link_hash_entry** %11, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %5
  %22 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %11, align 8
  %23 = icmp ne %struct.bfd_link_hash_entry* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %39, %24
  %26 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %11, align 8
  %27 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @bfd_link_hash_indirect, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %11, align 8
  %33 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @bfd_link_hash_warning, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi i1 [ true, %25 ], [ %36, %31 ]
  br i1 %38, label %39, label %45

39:                                               ; preds = %37
  %40 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %11, align 8
  %41 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %43, align 8
  store %struct.bfd_link_hash_entry* %44, %struct.bfd_link_hash_entry** %11, align 8
  br label %25

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %21, %5
  %47 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %11, align 8
  ret %struct.bfd_link_hash_entry* %47
}

declare dso_local i64 @bfd_hash_lookup(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
