; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_got16_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_got16_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.score_got_info = type { i32 }
%struct.score_got_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@R_SCORE_GOT15 = common dso_local global i32 0, align 4
@MINUS_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.bfd_link_info*, i32, i32)* @score_elf_got16_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @score_elf_got16_entry(i32* %0, i32* %1, %struct.bfd_link_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bfd_link_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.score_got_info*, align 8
  %14 = alloca %struct.score_got_entry*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.bfd_link_info* %2, %struct.bfd_link_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @score_elf_high(i32 %18)
  %20 = shl i32 %19, 16
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %17, %5
  %22 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %23 = call %struct.TYPE_2__* @elf_hash_table(%struct.bfd_link_info* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.score_got_info* @score_elf_got_info(i32 %25, i32** %12)
  store %struct.score_got_info* %26, %struct.score_got_info** %13, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.score_got_info*, %struct.score_got_info** %13, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @R_SCORE_GOT15, align 4
  %33 = call %struct.score_got_entry* @score_elf_create_local_got_entry(i32* %27, i32* %28, %struct.score_got_info* %29, i32* %30, i32 %31, i32 0, i32* null, i32 %32)
  store %struct.score_got_entry* %33, %struct.score_got_entry** %14, align 8
  %34 = load %struct.score_got_entry*, %struct.score_got_entry** %14, align 8
  %35 = icmp ne %struct.score_got_entry* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  %37 = load %struct.score_got_entry*, %struct.score_got_entry** %14, align 8
  %38 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  br label %42

40:                                               ; preds = %21
  %41 = load i32, i32* @MINUS_ONE, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @score_elf_high(i32) #1

declare dso_local %struct.score_got_info* @score_elf_got_info(i32, i32**) #1

declare dso_local %struct.TYPE_2__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.score_got_entry* @score_elf_create_local_got_entry(i32*, i32*, %struct.score_got_info*, i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
