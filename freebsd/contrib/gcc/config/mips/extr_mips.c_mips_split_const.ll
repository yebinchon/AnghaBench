; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_split_const.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_split_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64*)* @mips_split_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_split_const(i32 %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load i64*, i64** %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @CONST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @XEXP(i32 %13, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @GET_CODE(i32 %15)
  %17 = load i64, i64* @PLUS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @XEXP(i32 %20, i32 1)
  %22 = call i64 @GET_CODE(i32 %21)
  %23 = load i64, i64* @CONST_INT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @XEXP(i32 %26, i32 1)
  %28 = call i64 @INTVAL(i32 %27)
  %29 = load i64*, i64** %6, align 8
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %28
  store i64 %31, i64* %29, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @XEXP(i32 %32, i32 0)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %25, %19, %12
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* %4, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  ret void
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @INTVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
