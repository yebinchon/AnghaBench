; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_ialloc.c_ext3_count_free_inodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_ialloc.c_ext3_count_free_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext3_group_desc = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.ext3_super_block* }
%struct.ext3_super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext3_count_free_inodes(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ext3_group_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %6
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block* %14, i32 %15, i32* null)
  store %struct.ext3_group_desc* %16, %struct.ext3_group_desc** %4, align 8
  %17 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %4, align 8
  %18 = icmp ne %struct.ext3_group_desc* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %28

20:                                               ; preds = %13
  %21 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %4, align 8
  %22 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le16_to_cpu(i32 %23)
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %3, align 8
  %27 = call i32 (...) @cond_resched()
  br label %28

28:                                               ; preds = %20, %19
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %6

31:                                               ; preds = %6
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

declare dso_local %struct.TYPE_2__* @EXT3_SB(%struct.super_block*) #1

declare dso_local %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
