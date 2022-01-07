; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_record_local_got_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_record_local_got_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.score_got_info = type { i32, i32 }
%struct.score_got_entry = type { i64, i64, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@INSERT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, %struct.score_got_info*)* @score_elf_record_local_got_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @score_elf_record_local_got_symbol(i32* %0, i64 %1, i32 %2, %struct.score_got_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.score_got_info*, align 8
  %10 = alloca %struct.score_got_entry, align 8
  %11 = alloca %struct.score_got_entry**, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.score_got_info* %3, %struct.score_got_info** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %10, i32 0, i32 3
  store i32* %12, i32** %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %10, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %10, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %20 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @INSERT, align 4
  %23 = call i64 @htab_find_slot(i32 %21, %struct.score_got_entry* %10, i32 %22)
  %24 = inttoptr i64 %23 to %struct.score_got_entry**
  store %struct.score_got_entry** %24, %struct.score_got_entry*** %11, align 8
  %25 = load %struct.score_got_entry**, %struct.score_got_entry*** %11, align 8
  %26 = load %struct.score_got_entry*, %struct.score_got_entry** %25, align 8
  %27 = icmp ne %struct.score_got_entry* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %5, align 4
  br label %50

30:                                               ; preds = %4
  %31 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %32 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %10, i32 0, i32 1
  store i64 %35, i64* %36, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call %struct.score_got_entry* @bfd_alloc(i32* %37, i32 32)
  %39 = load %struct.score_got_entry**, %struct.score_got_entry*** %11, align 8
  store %struct.score_got_entry* %38, %struct.score_got_entry** %39, align 8
  %40 = load %struct.score_got_entry**, %struct.score_got_entry*** %11, align 8
  %41 = load %struct.score_got_entry*, %struct.score_got_entry** %40, align 8
  %42 = icmp ne %struct.score_got_entry* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %5, align 4
  br label %50

45:                                               ; preds = %30
  %46 = load %struct.score_got_entry**, %struct.score_got_entry*** %11, align 8
  %47 = load %struct.score_got_entry*, %struct.score_got_entry** %46, align 8
  %48 = call i32 @memcpy(%struct.score_got_entry* %47, %struct.score_got_entry* %10, i32 32)
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %43, %28
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @htab_find_slot(i32, %struct.score_got_entry*, i32) #1

declare dso_local %struct.score_got_entry* @bfd_alloc(i32*, i32) #1

declare dso_local i32 @memcpy(%struct.score_got_entry*, %struct.score_got_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
