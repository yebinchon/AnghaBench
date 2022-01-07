; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_mb_find_order_for_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_mb_find_order_for_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_buddy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_buddy*, i32)* @mb_find_order_for_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb_find_order_for_block(%struct.ext4_buddy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext4_buddy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.ext4_buddy* %0, %struct.ext4_buddy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %8 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %9 = call i8* @EXT4_MB_BITMAP(%struct.ext4_buddy* %8)
  %10 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %11 = call i8* @EXT4_MB_BUDDY(%struct.ext4_buddy* %10)
  %12 = icmp eq i8* %9, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %17 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 3
  %20 = shl i32 1, %19
  %21 = icmp sge i32 %15, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %25 = call i8* @EXT4_MB_BUDDY(%struct.ext4_buddy* %24)
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %42, %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %29 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  %32 = icmp sle i32 %27, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @mb_test_bit(i32 %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %55

42:                                               ; preds = %33
  %43 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %44 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %45, %46
  %48 = shl i32 1, %47
  %49 = load i8*, i8** %7, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr i8, i8* %49, i64 %50
  store i8* %51, i8** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %26

54:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @EXT4_MB_BITMAP(%struct.ext4_buddy*) #1

declare dso_local i8* @EXT4_MB_BUDDY(%struct.ext4_buddy*) #1

declare dso_local i32 @mb_test_bit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
