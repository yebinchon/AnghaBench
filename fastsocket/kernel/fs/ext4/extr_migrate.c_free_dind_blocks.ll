; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_free_dind_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_free_dind_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64 }

@EIO = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i64)* @free_dind_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_dind_blocks(i32* %0, %struct.inode* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 2
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %11, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @le32_to_cpu(i64 %22)
  %24 = call %struct.buffer_head* @sb_bread(%struct.TYPE_2__* %21, i32 %23)
  store %struct.buffer_head* %24, %struct.buffer_head** %10, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %26 = icmp ne %struct.buffer_head* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %77

30:                                               ; preds = %3
  %31 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %32 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64* %34, i64** %9, align 8
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %62, %30
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %11, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %35
  %41 = load i64*, i64** %9, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call i32 @extend_credit_for_blkdel(i32* %48, %struct.inode* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @le32_to_cpu(i64 %57)
  %59 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %60 = call i32 @ext4_free_blocks(i32* %51, %struct.inode* %52, i32 %58, i32 1, i32 %59)
  br label %61

61:                                               ; preds = %47, %40
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %35

65:                                               ; preds = %35
  %66 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %67 = call i32 @put_bh(%struct.buffer_head* %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = call i32 @extend_credit_for_blkdel(i32* %68, %struct.inode* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @le32_to_cpu(i64 %73)
  %75 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %76 = call i32 @ext4_free_blocks(i32* %71, %struct.inode* %72, i32 %74, i32 1, i32 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %65, %27
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @extend_credit_for_blkdel(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
