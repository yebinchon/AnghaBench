; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_bitmap.c_qnx4_count_free_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_bitmap.c_qnx4_count_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"qnx4: I/O error in counting free blocks\0A\00", align 1
@QNX4_BLOCK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @qnx4_count_free_blocks(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = call %struct.TYPE_6__* @qnx4_sb(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = call %struct.TYPE_6__* @qnx4_sb(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %38, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = load %struct.super_block*, %struct.super_block** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  %34 = call %struct.buffer_head* @sb_bread(%struct.super_block* %30, i32 %33)
  store %struct.buffer_head* %34, %struct.buffer_head** %8, align 8
  %35 = icmp eq %struct.buffer_head* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %55

38:                                               ; preds = %29
  %39 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %42, %43
  %45 = call i32 @count_bits(i32 %41, i32 %44, i32* %5)
  %46 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %47 = call i32 @brelse(%struct.buffer_head* %46)
  %48 = load i64, i64* @QNX4_BLOCK_SIZE, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %25

55:                                               ; preds = %36, %25
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  ret i64 %57
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_6__* @qnx4_sb(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @count_bits(i32, i32, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
