; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_mcast_init_crc32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_mcast_init_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slic_mcast_init_crc32.p = internal global [14 x i32] [i32 0, i32 1, i32 2, i32 4, i32 5, i32 7, i32 8, i32 10, i32 11, i32 12, i32 16, i32 22, i32 23, i32 26], align 16
@slic_crc_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @slic_mcast_init_crc32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_mcast_init_crc32() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %19, %0
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([14 x i32], [14 x i32]* @slic_mcast_init_crc32.p, i64 0, i64 0))
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [14 x i32], [14 x i32]* @slic_mcast_init_crc32.p, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 31, %13
  %15 = zext i32 %14 to i64
  %16 = shl i64 1, %15
  %17 = load i64, i64* %2, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %2, align 8
  br label %19

19:                                               ; preds = %9
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %5

22:                                               ; preds = %5
  store i32 1, i32* %3, align 4
  br label %23

23:                                               ; preds = %55, %22
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %1, align 8
  store i32 8, i32* %4, align 4
  br label %29

29:                                               ; preds = %46, %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i64, i64* %1, align 8
  %34 = and i64 %33, 1
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i64, i64* %1, align 8
  %38 = ashr i64 %37, 1
  %39 = load i64, i64* %2, align 8
  %40 = xor i64 %38, %39
  br label %44

41:                                               ; preds = %32
  %42 = load i64, i64* %1, align 8
  %43 = ashr i64 %42, 1
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi i64 [ %40, %36 ], [ %43, %41 ]
  store i64 %45, i64* %1, align 8
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %4, align 4
  br label %29

49:                                               ; preds = %29
  %50 = load i64, i64* %1, align 8
  %51 = load i64*, i64** @slic_crc_table, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %23

58:                                               ; preds = %23
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
