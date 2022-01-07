; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_freebsd.h_freebsd_swap_magic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_freebsd.h_freebsd_swap_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAGIC = common dso_local global i32 0, align 4
@NMAGIC = common dso_local global i32 0, align 4
@ZMAGIC = common dso_local global i32 0, align 4
@QMAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @freebsd_swap_magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @freebsd_swap_magic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @bfd_getl32(i8* %9)
  store i64 %10, i64* %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @bfd_getb32(i8* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, 65535
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, 65535
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @OMAGIC, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NMAGIC, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ZMAGIC, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @QMAGIC, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %30, %26, %22, %1
  %35 = phi i1 [ true, %26 ], [ true, %22 ], [ true, %1 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @OMAGIC, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @NMAGIC, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ZMAGIC, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @QMAGIC, align 4
  %51 = icmp eq i32 %49, %50
  br label %52

52:                                               ; preds = %48, %44, %40, %34
  %53 = phi i1 [ true, %44 ], [ true, %40 ], [ true, %34 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %4, align 8
  br label %64

62:                                               ; preds = %57, %52
  %63 = load i64, i64* %3, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  ret i64 %65
}

declare dso_local i64 @bfd_getl32(i8*) #1

declare dso_local i64 @bfd_getb32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
