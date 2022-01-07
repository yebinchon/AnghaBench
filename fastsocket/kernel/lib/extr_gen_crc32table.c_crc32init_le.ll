; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_gen_crc32table.c_crc32init_le.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_gen_crc32table.c_crc32init_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32table_le = common dso_local global i32* null, align 8
@CRC_LE_BITS = common dso_local global i32 0, align 4
@CRCPOLY_LE = common dso_local global i32 0, align 4
@LE_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @crc32init_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32init_le() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %3, align 4
  %4 = load i32*, i32** @crc32table_le, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @CRC_LE_BITS, align 4
  %7 = sub nsw i32 %6, 1
  %8 = shl i32 1, %7
  store i32 %8, i32* %1, align 4
  br label %9

9:                                                ; preds = %48, %0
  %10 = load i32, i32* %1, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @CRCPOLY_LE, align 4
  br label %21

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  %23 = xor i32 %14, %22
  store i32 %23, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %42, %21
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @LE_TABLE_SIZE, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32*, i32** @crc32table_le, align 8
  %31 = load i32, i32* %2, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %29, %34
  %36 = load i32*, i32** @crc32table_le, align 8
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* %2, align 4
  %39 = add i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32 %35, i32* %41, align 4
  br label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %1, align 4
  %44 = mul i32 2, %43
  %45 = load i32, i32* %2, align 4
  %46 = add i32 %45, %44
  store i32 %46, i32* %2, align 4
  br label %24

47:                                               ; preds = %24
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = lshr i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %9

51:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
