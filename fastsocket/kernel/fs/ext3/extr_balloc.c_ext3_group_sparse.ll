; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_ext3_group_sparse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_ext3_group_sparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ext3_group_sparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_group_sparse(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %27

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 1
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %27

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @test_root(i32 %13, i32 7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @test_root(i32 %17, i32 5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @test_root(i32 %21, i32 3)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %20, %16, %12
  %25 = phi i1 [ true, %16 ], [ true, %12 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %11, %6
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @test_root(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
