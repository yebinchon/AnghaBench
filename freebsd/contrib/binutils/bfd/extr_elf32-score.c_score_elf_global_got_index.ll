; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_global_got_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_global_got_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.score_got_info = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.elf_link_hash_entry*)* @score_elf_global_got_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @score_elf_global_got_index(i32* %0, %struct.elf_link_hash_entry* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.score_got_info*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %4, align 8
  store i64 0, i64* %8, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.score_got_info* @score_elf_got_info(i32* %9, %struct.TYPE_5__** %6)
  store %struct.score_got_info* %10, %struct.score_got_info** %7, align 8
  %11 = load %struct.score_got_info*, %struct.score_got_info** %7, align 8
  %12 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.score_got_info*, %struct.score_got_info** %7, align 8
  %17 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %23 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp sge i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BFD_ASSERT(i32 %27)
  %29 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %30 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load %struct.score_got_info*, %struct.score_got_info** %7, align 8
  %35 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load i32*, i32** %3, align 8
  %39 = call i64 @SCORE_ELF_GOT_SIZE(i32* %38)
  %40 = mul nsw i64 %37, %39
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @BFD_ASSERT(i32 %46)
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

declare dso_local %struct.score_got_info* @score_elf_got_info(i32*, %struct.TYPE_5__**) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @SCORE_ELF_GOT_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
