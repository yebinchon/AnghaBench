; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_sort_hash_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_sort_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.score_elf_hash_sort_data = type { i64, i64, i64, i32* }
%struct.score_got_info = type { i64, i32*, i64 }
%struct.TYPE_2__ = type { i64, i32* }
%struct.score_elf_link_hash_table = type { i32 }

@score_elf_sort_hash_table_f = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, i64)* @score_elf_sort_hash_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @score_elf_sort_hash_table(%struct.bfd_link_info* %0, i64 %1) #0 {
  %3 = alloca %struct.bfd_link_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.score_elf_hash_sort_data, align 8
  %6 = alloca %struct.score_got_info*, align 8
  %7 = alloca i32*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %9 = call %struct.TYPE_2__* @elf_hash_table(%struct.bfd_link_info* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call %struct.score_got_info* @score_elf_got_info(i32* %12, i32* null)
  store %struct.score_got_info* %13, %struct.score_got_info** %6, align 8
  %14 = getelementptr inbounds %struct.score_elf_hash_sort_data, %struct.score_elf_hash_sort_data* %5, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %16 = call %struct.TYPE_2__* @elf_hash_table(%struct.bfd_link_info* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.score_got_info*, %struct.score_got_info** %6, align 8
  %20 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.score_got_info*, %struct.score_got_info** %6, align 8
  %25 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i64 [ %26, %23 ], [ 0, %27 ]
  %30 = sub i64 %18, %29
  %31 = getelementptr inbounds %struct.score_elf_hash_sort_data, %struct.score_elf_hash_sort_data* %5, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.score_elf_hash_sort_data, %struct.score_elf_hash_sort_data* %5, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.score_elf_hash_sort_data, %struct.score_elf_hash_sort_data* %5, i32 0, i32 2
  store i64 %33, i64* %34, align 8
  %35 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %36 = call %struct.TYPE_2__* @elf_hash_table(%struct.bfd_link_info* %35)
  %37 = bitcast %struct.TYPE_2__* %36 to %struct.score_elf_link_hash_table*
  %38 = load i32, i32* @score_elf_sort_hash_table_f, align 4
  %39 = call i32 @score_elf_link_hash_traverse(%struct.score_elf_link_hash_table* %37, i32 %38, %struct.score_elf_hash_sort_data* %5)
  %40 = getelementptr inbounds %struct.score_elf_hash_sort_data, %struct.score_elf_hash_sort_data* %5, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.score_elf_hash_sort_data, %struct.score_elf_hash_sort_data* %5, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ule i64 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @BFD_ASSERT(i32 %45)
  %47 = getelementptr inbounds %struct.score_elf_hash_sort_data, %struct.score_elf_hash_sort_data* %5, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %50 = call %struct.TYPE_2__* @elf_hash_table(%struct.bfd_link_info* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ule i64 %48, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @BFD_ASSERT(i32 %54)
  %56 = getelementptr inbounds %struct.score_elf_hash_sort_data, %struct.score_elf_hash_sort_data* %5, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.score_got_info*, %struct.score_got_info** %6, align 8
  %59 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load i32, i32* @TRUE, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_2__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.score_got_info* @score_elf_got_info(i32*, i32*) #1

declare dso_local i32 @score_elf_link_hash_traverse(%struct.score_elf_link_hash_table*, i32, %struct.score_elf_hash_sort_data*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
