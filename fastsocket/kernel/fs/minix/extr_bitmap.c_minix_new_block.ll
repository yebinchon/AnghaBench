; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_bitmap.c_minix_new_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_bitmap.c_minix_new_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.minix_sb_info = type { i32, i32, i32, %struct.buffer_head** }
%struct.buffer_head = type { i32 }

@bitmap_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minix_new_block(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.minix_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call %struct.minix_sb_info* @minix_sb(%struct.TYPE_2__* %11)
  store %struct.minix_sb_info* %12, %struct.minix_sb_info** %4, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 8, %17
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %77, %1
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.minix_sb_info*, %struct.minix_sb_info** %4, align 8
  %22 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %80

25:                                               ; preds = %19
  %26 = load %struct.minix_sb_info*, %struct.minix_sb_info** %4, align 8
  %27 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %26, i32 0, i32 3
  %28 = load %struct.buffer_head**, %struct.buffer_head*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %28, i64 %30
  %32 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  store %struct.buffer_head* %32, %struct.buffer_head** %7, align 8
  %33 = call i32 @spin_lock(i32* @bitmap_lock)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @minix_find_first_zero_bit(i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %25
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @minix_set_bit(i32 %43, i32 %46)
  %48 = call i32 @spin_unlock(i32* @bitmap_lock)
  %49 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %50 = call i32 @mark_buffer_dirty(%struct.buffer_head* %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load %struct.minix_sb_info*, %struct.minix_sb_info** %4, align 8
  %55 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.minix_sb_info*, %struct.minix_sb_info** %4, align 8
  %63 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %42
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.minix_sb_info*, %struct.minix_sb_info** %4, align 8
  %69 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %42
  br label %80

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %81

75:                                               ; preds = %25
  %76 = call i32 @spin_unlock(i32* @bitmap_lock)
  br label %77

77:                                               ; preds = %75
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %19

80:                                               ; preds = %72, %19
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %73
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.minix_sb_info* @minix_sb(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @minix_find_first_zero_bit(i32, i32) #1

declare dso_local i32 @minix_set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
