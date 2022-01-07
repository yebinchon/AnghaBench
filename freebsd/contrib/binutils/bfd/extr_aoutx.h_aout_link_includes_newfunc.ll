; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutx.h_aout_link_includes_newfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutx.h_aout_link_includes_newfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_hash_entry = type { i32 }
%struct.bfd_hash_table = type { i32 }
%struct.aout_link_includes_entry = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* @aout_link_includes_newfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfd_hash_entry* @aout_link_includes_newfunc(%struct.bfd_hash_entry* %0, %struct.bfd_hash_table* %1, i8* %2) #0 {
  %4 = alloca %struct.bfd_hash_entry*, align 8
  %5 = alloca %struct.bfd_hash_entry*, align 8
  %6 = alloca %struct.bfd_hash_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.aout_link_includes_entry*, align 8
  store %struct.bfd_hash_entry* %0, %struct.bfd_hash_entry** %5, align 8
  store %struct.bfd_hash_table* %1, %struct.bfd_hash_table** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %10 = bitcast %struct.bfd_hash_entry* %9 to %struct.aout_link_includes_entry*
  store %struct.aout_link_includes_entry* %10, %struct.aout_link_includes_entry** %8, align 8
  %11 = load %struct.aout_link_includes_entry*, %struct.aout_link_includes_entry** %8, align 8
  %12 = icmp eq %struct.aout_link_includes_entry* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %15 = call %struct.aout_link_includes_entry* @bfd_hash_allocate(%struct.bfd_hash_table* %14, i32 8)
  store %struct.aout_link_includes_entry* %15, %struct.aout_link_includes_entry** %8, align 8
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.aout_link_includes_entry*, %struct.aout_link_includes_entry** %8, align 8
  %18 = icmp eq %struct.aout_link_includes_entry* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store %struct.bfd_hash_entry* null, %struct.bfd_hash_entry** %4, align 8
  br label %35

20:                                               ; preds = %16
  %21 = load %struct.aout_link_includes_entry*, %struct.aout_link_includes_entry** %8, align 8
  %22 = bitcast %struct.aout_link_includes_entry* %21 to %struct.bfd_hash_entry*
  %23 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @bfd_hash_newfunc(%struct.bfd_hash_entry* %22, %struct.bfd_hash_table* %23, i8* %24)
  %26 = inttoptr i64 %25 to %struct.aout_link_includes_entry*
  store %struct.aout_link_includes_entry* %26, %struct.aout_link_includes_entry** %8, align 8
  %27 = load %struct.aout_link_includes_entry*, %struct.aout_link_includes_entry** %8, align 8
  %28 = icmp ne %struct.aout_link_includes_entry* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.aout_link_includes_entry*, %struct.aout_link_includes_entry** %8, align 8
  %31 = getelementptr inbounds %struct.aout_link_includes_entry, %struct.aout_link_includes_entry* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %20
  %33 = load %struct.aout_link_includes_entry*, %struct.aout_link_includes_entry** %8, align 8
  %34 = bitcast %struct.aout_link_includes_entry* %33 to %struct.bfd_hash_entry*
  store %struct.bfd_hash_entry* %34, %struct.bfd_hash_entry** %4, align 8
  br label %35

35:                                               ; preds = %32, %19
  %36 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %4, align 8
  ret %struct.bfd_hash_entry* %36
}

declare dso_local %struct.aout_link_includes_entry* @bfd_hash_allocate(%struct.bfd_hash_table*, i32) #1

declare dso_local i64 @bfd_hash_newfunc(%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
