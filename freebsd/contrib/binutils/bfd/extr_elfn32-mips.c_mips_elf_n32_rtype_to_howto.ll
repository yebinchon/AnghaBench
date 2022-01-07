; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfn32-mips.c_mips_elf_n32_rtype_to_howto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfn32-mips.c_mips_elf_n32_rtype_to_howto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@elf_mips_gnu_vtinherit_howto = common dso_local global i32 0, align 4
@elf_mips_gnu_vtentry_howto = common dso_local global i32 0, align 4
@elf_mips_gnu_rela16_s2 = common dso_local global i32 0, align 4
@elf_mips_gnu_rel16_s2 = common dso_local global i32 0, align 4
@R_MIPS16_min = common dso_local global i32 0, align 4
@R_MIPS16_max = common dso_local global i32 0, align 4
@elf_mips16_howto_table_rela = common dso_local global i32* null, align 8
@elf_mips16_howto_table_rel = common dso_local global i32* null, align 8
@R_MIPS_max = common dso_local global i64 0, align 8
@elf_mips_howto_table_rela = common dso_local global i32* null, align 8
@elf_mips_howto_table_rel = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @mips_elf_n32_rtype_to_howto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mips_elf_n32_rtype_to_howto(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %14 [
    i32 128, label %7
    i32 129, label %8
    i32 130, label %9
  ]

7:                                                ; preds = %2
  store i32* @elf_mips_gnu_vtinherit_howto, i32** %3, align 8
  br label %58

8:                                                ; preds = %2
  store i32* @elf_mips_gnu_vtentry_howto, i32** %3, align 8
  br label %58

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32* @elf_mips_gnu_rela16_s2, i32** %3, align 8
  br label %58

13:                                               ; preds = %9
  store i32* @elf_mips_gnu_rel16_s2, i32** %3, align 8
  br label %58

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @R_MIPS16_min, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @R_MIPS16_max, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32*, i32** @elf_mips16_howto_table_rela, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @R_MIPS16_min, align 4
  %29 = sub i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  store i32* %31, i32** %3, align 8
  br label %58

32:                                               ; preds = %22
  %33 = load i32*, i32** @elf_mips16_howto_table_rel, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @R_MIPS16_min, align 4
  %36 = sub i32 %34, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32* %38, i32** %3, align 8
  br label %58

39:                                               ; preds = %18, %14
  %40 = load i32, i32* %4, align 4
  %41 = load i64, i64* @R_MIPS_max, align 8
  %42 = trunc i64 %41 to i32
  %43 = icmp ult i32 %40, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @BFD_ASSERT(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i32*, i32** @elf_mips_howto_table_rela, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %3, align 8
  br label %58

53:                                               ; preds = %39
  %54 = load i32*, i32** @elf_mips_howto_table_rel, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32* %57, i32** %3, align 8
  br label %58

58:                                               ; preds = %53, %48, %32, %25, %13, %12, %8, %7
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
