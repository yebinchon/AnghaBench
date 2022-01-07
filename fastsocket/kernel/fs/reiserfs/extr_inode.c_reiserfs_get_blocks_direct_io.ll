; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_get_blocks_direct_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_get_blocks_direct_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32, i64, i32* }
%struct.TYPE_2__ = type { i32 }

@GET_BLOCK_NO_DANGLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@i_pack_on_close_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @reiserfs_get_blocks_direct_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_get_blocks_direct_io(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 2
  store i32* null, i32** %12, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 1, %15
  %17 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @GET_BLOCK_NO_DANGLE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @reiserfs_get_block(%struct.inode* %19, i32 %20, %struct.buffer_head* %21, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %69

29:                                               ; preds = %4
  %30 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %31 = call i64 @buffer_mapped(%struct.buffer_head* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %40 = call i32 @clear_buffer_mapped(%struct.buffer_head* %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %38, %33, %29
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @i_pack_on_close_mask, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %43
  %52 = call i32 (...) @lock_kernel()
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call i32 @reiserfs_commit_for_inode(%struct.inode* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* @i_pack_on_close_mask, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %56
  store i32 %61, i32* %59, align 4
  %62 = call i32 (...) @unlock_kernel()
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %65, %51
  br label %68

68:                                               ; preds = %67, %43
  br label %69

69:                                               ; preds = %68, %28
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i32 @reiserfs_get_block(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_mapped(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_2__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @reiserfs_commit_for_inode(%struct.inode*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
