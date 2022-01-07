; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_match_group_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_match_group_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.bfd_link_info*)* @match_group_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @match_group_member(i32* %0, i32* %1, %struct.bfd_link_info* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.bfd_link_info* %2, %struct.bfd_link_info** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32* @elf_next_in_group(i32* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  store i32* %12, i32** %9, align 8
  br label %13

13:                                               ; preds = %31, %3
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %20 = call i64 @bfd_elf_match_symbols_in_sections(i32* %17, i32* %18, %struct.bfd_link_info* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32*, i32** %9, align 8
  store i32* %23, i32** %4, align 8
  br label %33

24:                                               ; preds = %16
  %25 = load i32*, i32** %9, align 8
  %26 = call i32* @elf_next_in_group(i32* %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp eq i32* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %32

31:                                               ; preds = %24
  br label %13

32:                                               ; preds = %30, %13
  store i32* null, i32** %4, align 8
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32*, i32** %4, align 8
  ret i32* %34
}

declare dso_local i32* @elf_next_in_group(i32*) #1

declare dso_local i64 @bfd_elf_match_symbols_in_sections(i32*, i32*, %struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
