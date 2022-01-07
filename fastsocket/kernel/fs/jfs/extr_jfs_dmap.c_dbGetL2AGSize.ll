; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbGetL2AGSize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbGetL2AGSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPERDMAP = common dso_local global i32 0, align 4
@MAXAG = common dso_local global i32 0, align 4
@L2BPERDMAP = common dso_local global i32 0, align 4
@L2MAXAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dbGetL2AGSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbGetL2AGSize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @BPERDMAP, align 4
  %9 = load i32, i32* @MAXAG, align 4
  %10 = mul nsw i32 %8, %9
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @L2BPERDMAP, align 4
  store i32 %13, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  store i32 undef, i32* %5, align 4
  store i32 64, i32* %6, align 4
  br label %15

15:                                               ; preds = %25, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %30

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %15

30:                                               ; preds = %23, %15
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 1, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @L2MAXAG, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
