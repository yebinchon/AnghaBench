; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffcode.h_coff_apply_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffcode.h_coff_apply_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@peheader = common dso_local global i32 0, align 4
@pelength = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @coff_apply_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coff_apply_checksum(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @SEEK_SET, align 4
  %8 = call i64 @bfd_seek(i32* %6, i32 60, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @coff_read_word(i32* %13, i32* @peheader)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %2, align 4
  br label %55

18:                                               ; preds = %12
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @peheader, align 4
  %21 = add nsw i32 %20, 88
  %22 = load i32, i32* @SEEK_SET, align 4
  %23 = call i64 @bfd_seek(i32* %19, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %55

27:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @bfd_bwrite(i32* %5, i32 4, i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @peheader, align 4
  %32 = load i32, i32* @SEEK_SET, align 4
  %33 = call i64 @bfd_seek(i32* %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %2, align 4
  br label %55

37:                                               ; preds = %27
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @coff_compute_checksum(i32* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @pelength, align 4
  %42 = add i32 %40, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @peheader, align 4
  %45 = add nsw i32 %44, 88
  %46 = load i32, i32* @SEEK_SET, align 4
  %47 = call i64 @bfd_seek(i32* %43, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %37
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @bfd_bwrite(i32* %5, i32 4, i32* %52)
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %49, %35, %25, %16, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @coff_read_word(i32*, i32*) #1

declare dso_local i32 @bfd_bwrite(i32*, i32, i32*) #1

declare dso_local i32 @coff_compute_checksum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
