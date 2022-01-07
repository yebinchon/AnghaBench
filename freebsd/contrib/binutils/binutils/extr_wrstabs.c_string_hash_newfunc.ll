; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_string_hash_newfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_string_hash_newfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_hash_entry = type { i32 }
%struct.bfd_hash_table = type { i32 }
%struct.string_hash_entry = type { i32, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* @string_hash_newfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfd_hash_entry* @string_hash_newfunc(%struct.bfd_hash_entry* %0, %struct.bfd_hash_table* %1, i8* %2) #0 {
  %4 = alloca %struct.bfd_hash_entry*, align 8
  %5 = alloca %struct.bfd_hash_entry*, align 8
  %6 = alloca %struct.bfd_hash_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.string_hash_entry*, align 8
  store %struct.bfd_hash_entry* %0, %struct.bfd_hash_entry** %5, align 8
  store %struct.bfd_hash_table* %1, %struct.bfd_hash_table** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %10 = bitcast %struct.bfd_hash_entry* %9 to %struct.string_hash_entry*
  store %struct.string_hash_entry* %10, %struct.string_hash_entry** %8, align 8
  %11 = load %struct.string_hash_entry*, %struct.string_hash_entry** %8, align 8
  %12 = icmp eq %struct.string_hash_entry* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %15 = call i64 @bfd_hash_allocate(%struct.bfd_hash_table* %14, i32 24)
  %16 = inttoptr i64 %15 to %struct.string_hash_entry*
  store %struct.string_hash_entry* %16, %struct.string_hash_entry** %8, align 8
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.string_hash_entry*, %struct.string_hash_entry** %8, align 8
  %19 = icmp eq %struct.string_hash_entry* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store %struct.bfd_hash_entry* null, %struct.bfd_hash_entry** %4, align 8
  br label %40

21:                                               ; preds = %17
  %22 = load %struct.string_hash_entry*, %struct.string_hash_entry** %8, align 8
  %23 = bitcast %struct.string_hash_entry* %22 to %struct.bfd_hash_entry*
  %24 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @bfd_hash_newfunc(%struct.bfd_hash_entry* %23, %struct.bfd_hash_table* %24, i8* %25)
  %27 = inttoptr i64 %26 to %struct.string_hash_entry*
  store %struct.string_hash_entry* %27, %struct.string_hash_entry** %8, align 8
  %28 = load %struct.string_hash_entry*, %struct.string_hash_entry** %8, align 8
  %29 = icmp ne %struct.string_hash_entry* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.string_hash_entry*, %struct.string_hash_entry** %8, align 8
  %32 = getelementptr inbounds %struct.string_hash_entry, %struct.string_hash_entry* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.string_hash_entry*, %struct.string_hash_entry** %8, align 8
  %34 = getelementptr inbounds %struct.string_hash_entry, %struct.string_hash_entry* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load %struct.string_hash_entry*, %struct.string_hash_entry** %8, align 8
  %36 = getelementptr inbounds %struct.string_hash_entry, %struct.string_hash_entry* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %21
  %38 = load %struct.string_hash_entry*, %struct.string_hash_entry** %8, align 8
  %39 = bitcast %struct.string_hash_entry* %38 to %struct.bfd_hash_entry*
  store %struct.bfd_hash_entry* %39, %struct.bfd_hash_entry** %4, align 8
  br label %40

40:                                               ; preds = %37, %20
  %41 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %4, align 8
  ret %struct.bfd_hash_entry* %41
}

declare dso_local i64 @bfd_hash_allocate(%struct.bfd_hash_table*, i32) #1

declare dso_local i64 @bfd_hash_newfunc(%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
