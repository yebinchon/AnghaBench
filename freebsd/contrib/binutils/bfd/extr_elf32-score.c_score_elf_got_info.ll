; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_got_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_got_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.score_got_info = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.score_got_info* }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.score_got_info* (i32*, i32**)* @score_elf_got_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.score_got_info* @score_elf_got_info(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.score_got_info*, align 8
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @TRUE, align 4
  %9 = call i32* @score_elf_got_section(i32* %7, i32 %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @BFD_ASSERT(i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @elf_section_data(i32* %14)
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @BFD_ASSERT(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call %struct.TYPE_4__* @score_elf_section_data(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.score_got_info*, %struct.score_got_info** %22, align 8
  store %struct.score_got_info* %23, %struct.score_got_info** %6, align 8
  %24 = load %struct.score_got_info*, %struct.score_got_info** %6, align 8
  %25 = icmp ne %struct.score_got_info* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @BFD_ASSERT(i32 %26)
  %28 = load i32**, i32*** %4, align 8
  %29 = icmp ne i32** %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32*, i32** %5, align 8
  %32 = load i32**, i32*** %4, align 8
  store i32* %31, i32** %32, align 8
  br label %33

33:                                               ; preds = %30, %2
  %34 = load %struct.score_got_info*, %struct.score_got_info** %6, align 8
  ret %struct.score_got_info* %34
}

declare dso_local i32* @score_elf_got_section(i32*, i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32* @elf_section_data(i32*) #1

declare dso_local %struct.TYPE_4__* @score_elf_section_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
