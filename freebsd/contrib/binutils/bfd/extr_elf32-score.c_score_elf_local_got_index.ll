; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_local_got_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_local_got_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.score_elf_link_hash_entry = type { i32 }
%struct.score_got_info = type { i32 }
%struct.score_got_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MINUS_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.bfd_link_info*, i32, i64, %struct.score_elf_link_hash_entry*, i32)* @score_elf_local_got_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @score_elf_local_got_index(i32* %0, i32* %1, %struct.bfd_link_info* %2, i32 %3, i64 %4, %struct.score_elf_link_hash_entry* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.bfd_link_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.score_elf_link_hash_entry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.score_got_info*, align 8
  %18 = alloca %struct.score_got_entry*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.bfd_link_info* %2, %struct.bfd_link_info** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store %struct.score_elf_link_hash_entry* %5, %struct.score_elf_link_hash_entry** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %20 = call %struct.TYPE_2__* @elf_hash_table(%struct.bfd_link_info* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.score_got_info* @score_elf_got_info(i32 %22, i32** %16)
  store %struct.score_got_info* %23, %struct.score_got_info** %17, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load %struct.score_got_info*, %struct.score_got_info** %17, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i64, i64* %13, align 8
  %30 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = call %struct.score_got_entry* @score_elf_create_local_got_entry(i32* %24, i32* %25, %struct.score_got_info* %26, i32* %27, i32 %28, i64 %29, %struct.score_elf_link_hash_entry* %30, i32 %31)
  store %struct.score_got_entry* %32, %struct.score_got_entry** %18, align 8
  %33 = load %struct.score_got_entry*, %struct.score_got_entry** %18, align 8
  %34 = icmp ne %struct.score_got_entry* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %7
  %36 = load i32, i32* @MINUS_ONE, align 4
  store i32 %36, i32* %8, align 4
  br label %41

37:                                               ; preds = %7
  %38 = load %struct.score_got_entry*, %struct.score_got_entry** %18, align 8
  %39 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %35
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local %struct.score_got_info* @score_elf_got_info(i32, i32**) #1

declare dso_local %struct.TYPE_2__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.score_got_entry* @score_elf_create_local_got_entry(i32*, i32*, %struct.score_got_info*, i32*, i32, i64, %struct.score_elf_link_hash_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
