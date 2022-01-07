; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_store_killed_before.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_store_killed_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i32, i32*)* @store_killed_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_killed_before(i64 %0, i64 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* %10, align 4
  %14 = call i64 @BB_HEAD(i32 %13)
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i32 @store_ops_ok(i64 %15, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %38

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %34, %20
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call i64 @PREV_INSN(i64 %23)
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @store_killed_in_insn(i64 %27, i64 %28, i64 %29, i32 1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %38

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @PREV_INSN(i64 %35)
  store i64 %36, i64* %9, align 8
  br label %21

37:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %32, %19
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i64 @BB_HEAD(i32) #1

declare dso_local i32 @store_ops_ok(i64, i32*) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @store_killed_in_insn(i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
