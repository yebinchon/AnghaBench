; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_link_hash_newfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_link_hash_newfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_hash_entry = type { i32 }
%struct.bfd_hash_table = type { i32 }
%struct.score_elf_link_hash_entry = type { i8*, i8*, i8*, i64 }

@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* @score_elf_link_hash_newfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfd_hash_entry* @score_elf_link_hash_newfunc(%struct.bfd_hash_entry* %0, %struct.bfd_hash_table* %1, i8* %2) #0 {
  %4 = alloca %struct.bfd_hash_entry*, align 8
  %5 = alloca %struct.bfd_hash_entry*, align 8
  %6 = alloca %struct.bfd_hash_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.score_elf_link_hash_entry*, align 8
  store %struct.bfd_hash_entry* %0, %struct.bfd_hash_entry** %5, align 8
  store %struct.bfd_hash_table* %1, %struct.bfd_hash_table** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %10 = bitcast %struct.bfd_hash_entry* %9 to %struct.score_elf_link_hash_entry*
  store %struct.score_elf_link_hash_entry* %10, %struct.score_elf_link_hash_entry** %8, align 8
  %11 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %12 = icmp eq %struct.score_elf_link_hash_entry* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %15 = call %struct.score_elf_link_hash_entry* @bfd_hash_allocate(%struct.bfd_hash_table* %14, i32 32)
  store %struct.score_elf_link_hash_entry* %15, %struct.score_elf_link_hash_entry** %8, align 8
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %18 = icmp eq %struct.score_elf_link_hash_entry* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %21 = bitcast %struct.score_elf_link_hash_entry* %20 to %struct.bfd_hash_entry*
  store %struct.bfd_hash_entry* %21, %struct.bfd_hash_entry** %4, align 8
  br label %46

22:                                               ; preds = %16
  %23 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %24 = bitcast %struct.score_elf_link_hash_entry* %23 to %struct.bfd_hash_entry*
  %25 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @_bfd_elf_link_hash_newfunc(%struct.bfd_hash_entry* %24, %struct.bfd_hash_table* %25, i8* %26)
  %28 = inttoptr i64 %27 to %struct.score_elf_link_hash_entry*
  store %struct.score_elf_link_hash_entry* %28, %struct.score_elf_link_hash_entry** %8, align 8
  %29 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %30 = icmp ne %struct.score_elf_link_hash_entry* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %22
  %32 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %33 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load i8*, i8** @FALSE, align 8
  %35 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %36 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @FALSE, align 8
  %38 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %39 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @FALSE, align 8
  %41 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %42 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %31, %22
  %44 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %45 = bitcast %struct.score_elf_link_hash_entry* %44 to %struct.bfd_hash_entry*
  store %struct.bfd_hash_entry* %45, %struct.bfd_hash_entry** %4, align 8
  br label %46

46:                                               ; preds = %43, %19
  %47 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %4, align 8
  ret %struct.bfd_hash_entry* %47
}

declare dso_local %struct.score_elf_link_hash_entry* @bfd_hash_allocate(%struct.bfd_hash_table*, i32) #1

declare dso_local i64 @_bfd_elf_link_hash_newfunc(%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
