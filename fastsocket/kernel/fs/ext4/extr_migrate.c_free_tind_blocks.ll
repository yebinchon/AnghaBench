; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_free_tind_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_free_tind_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64 }

@EIO = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i64)* @free_tind_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_tind_blocks(i32* %0, %struct.inode* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 2
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @le32_to_cpu(i64 %23)
  %25 = call %struct.buffer_head* @sb_bread(%struct.TYPE_2__* %22, i32 %24)
  store %struct.buffer_head* %25, %struct.buffer_head** %11, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %27 = icmp ne %struct.buffer_head* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %80

31:                                               ; preds = %3
  %32 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i64*
  store i64* %35, i64** %10, align 8
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %65, %31
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %12, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = load i64*, i64** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = load i64*, i64** %10, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @free_dind_blocks(i32* %49, %struct.inode* %50, i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %61 = call i32 @put_bh(%struct.buffer_head* %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %80

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %36

68:                                               ; preds = %36
  %69 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %70 = call i32 @put_bh(%struct.buffer_head* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = call i32 @extend_credit_for_blkdel(i32* %71, %struct.inode* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @le32_to_cpu(i64 %76)
  %78 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %79 = call i32 @ext4_free_blocks(i32* %74, %struct.inode* %75, i32 %77, i32 1, i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %68, %59, %28
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @free_dind_blocks(i32*, %struct.inode*, i64) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @extend_credit_for_blkdel(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
