; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_read_leb128.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_read_leb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*, i32)* @read_leb128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_leb128(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %28, %3
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %4, align 8
  %14 = load i8, i8* %12, align 1
  store i8 %14, i8* %10, align 1
  %15 = load i32, i32* %8, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %8, align 4
  %17 = load i8, i8* %10, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 127
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = shl i64 %20, %22
  %24 = load i64, i64* %7, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = add i32 %26, 7
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %11
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %11, label %33

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %44, 64
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i8, i8* %10, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 64
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = shl i64 -1, %53
  %55 = load i64, i64* %7, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %51, %46, %42, %39
  %58 = load i64, i64* %7, align 8
  ret i64 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
