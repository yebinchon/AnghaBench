; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_all_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_all_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*)* @all_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @all_blocks(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  store i64 0, i64* %6, align 8
  %11 = load i64*, i64** %4, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i64, i64* %6, align 8
  %15 = load i64*, i64** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64 %14, i64* %18, align 8
  br label %19

19:                                               ; preds = %13, %10
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @BLOCK_SUBBLOCKS(i64 %22)
  %24 = load i64*, i64** %4, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i64*, i64** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i64* [ %30, %26 ], [ null, %31 ]
  %34 = call i32 @all_blocks(i64 %23, i64* %33)
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @BLOCK_CHAIN(i64 %37)
  store i64 %38, i64* %6, align 8
  br label %7

39:                                               ; preds = %7
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @BLOCK_SUBBLOCKS(i64) #1

declare dso_local i64 @BLOCK_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
