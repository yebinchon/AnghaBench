; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_gen_crc32table.c_crc32init_be.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_gen_crc32table.c_crc32init_be.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32table_be = common dso_local global i32* null, align 8
@BE_TABLE_SIZE = common dso_local global i32 0, align 4
@CRCPOLY_BE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @crc32init_be to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32init_be() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 -2147483648, i32* %3, align 4
  %4 = load i32*, i32** @crc32table_be, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  store i32 0, i32* %5, align 4
  store i32 1, i32* %1, align 4
  br label %6

6:                                                ; preds = %44, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @BE_TABLE_SIZE, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %47

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 %11, 1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, -2147483648
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @CRCPOLY_BE, align 4
  br label %19

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = xor i32 %12, %20
  store i32 %21, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %40, %19
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load i32*, i32** @crc32table_be, align 8
  %29 = load i32, i32* %2, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %27, %32
  %34 = load i32*, i32** @crc32table_be, align 8
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* %2, align 4
  %37 = add i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  store i32 %33, i32* %39, align 4
  br label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %2, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %22

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %1, align 4
  %46 = shl i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %6

47:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
