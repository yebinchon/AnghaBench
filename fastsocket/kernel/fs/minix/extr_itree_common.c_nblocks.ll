; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_itree_common.c_nblocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_itree_common.c_nblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }

@DIRECT = common dso_local global i32 0, align 4
@DEPTH = common dso_local global i32 0, align 4
@BLOCK_SIZE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.super_block*)* @nblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nblocks(i32 %0, %struct.super_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.super_block* %1, %struct.super_block** %4, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, 10
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @DIRECT, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @DEPTH, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @BLOCK_SIZE_BITS, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %22, %23
  %25 = ashr i32 %21, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %37, %2
  %28 = load i32, i32* %9, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ugt i32 %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  br i1 %36, label %37, label %63

37:                                               ; preds = %35
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load %struct.super_block*, %struct.super_block** %4, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %44, 4
  %46 = sub i64 %45, 1
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = add i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = load %struct.super_block*, %struct.super_block** %4, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %54, 4
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = udiv i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %27

63:                                               ; preds = %35
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
