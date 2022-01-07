; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c_is_block_in_journal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c_is_block_in_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.super_block = type { i32 }

@scan_bitmap = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32, i32*)* @is_block_in_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_block_in_journal(%struct.super_block* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.super_block*, %struct.super_block** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @reiserfs_in_journal(%struct.super_block* %11, i32 %12, i32 %13, i32 1, i32* %10)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.super_block*, %struct.super_block** %6, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scan_bitmap, i32 0, i32 2), align 4
  %24 = call i32 @PROC_INFO_INC(%struct.super_block* %22, i32 %23)
  br label %32

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scan_bitmap, i32 0, i32 1), align 4
  %31 = call i32 @PROC_INFO_INC(%struct.super_block* %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %19
  %33 = load %struct.super_block*, %struct.super_block** %6, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scan_bitmap, i32 0, i32 0), align 4
  %35 = call i32 @PROC_INFO_INC(%struct.super_block* %33, i32 %34)
  store i32 1, i32* %5, align 4
  br label %37

36:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @reiserfs_in_journal(%struct.super_block*, i32, i32, i32, i32*) #1

declare dso_local i32 @PROC_INFO_INC(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
