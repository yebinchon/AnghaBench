; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_get_magic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_get_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIPS_MAGIC_BIG = common dso_local global i32 0, align 4
@MIPS_MAGIC_LITTLE = common dso_local global i32 0, align 4
@MIPS_MAGIC_BIG2 = common dso_local global i32 0, align 4
@MIPS_MAGIC_LITTLE2 = common dso_local global i32 0, align 4
@MIPS_MAGIC_BIG3 = common dso_local global i32 0, align 4
@MIPS_MAGIC_LITTLE3 = common dso_local global i32 0, align 4
@ALPHA_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ecoff_get_magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecoff_get_magic(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @bfd_get_arch(i32* %6)
  switch i32 %7, label %33 [
    i32 131, label %8
    i32 132, label %31
  ]

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @bfd_get_mach(i32* %9)
  switch i32 %10, label %11 [
    i32 0, label %12
    i32 130, label %12
    i32 128, label %15
    i32 129, label %18
  ]

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %8, %8, %11
  %13 = load i32, i32* @MIPS_MAGIC_BIG, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @MIPS_MAGIC_LITTLE, align 4
  store i32 %14, i32* %5, align 4
  br label %21

15:                                               ; preds = %8
  %16 = load i32, i32* @MIPS_MAGIC_BIG2, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @MIPS_MAGIC_LITTLE2, align 4
  store i32 %17, i32* %5, align 4
  br label %21

18:                                               ; preds = %8
  %19 = load i32, i32* @MIPS_MAGIC_BIG3, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @MIPS_MAGIC_LITTLE3, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %15, %12
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @bfd_big_endian(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @ALPHA_MAGIC, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %1
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %31, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @bfd_get_arch(i32*) #1

declare dso_local i32 @bfd_get_mach(i32*) #1

declare dso_local i32 @bfd_big_endian(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
