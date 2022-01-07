; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_bitmap.c_minix_new_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_bitmap.c_minix_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i64, i32, i32, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.minix_sb_info = type { i32, i64, %struct.buffer_head** }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@bitmap_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"minix_new_inode: bit already set\0A\00", align 1
@S_ISGID = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @minix_new_inode(%struct.inode* %0, i32* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.minix_sb_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 8
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %6, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call %struct.minix_sb_info* @minix_sb(%struct.super_block* %16)
  store %struct.minix_sb_info* %17, %struct.minix_sb_info** %7, align 8
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = call %struct.inode* @new_inode(%struct.super_block* %18)
  store %struct.inode* %19, %struct.inode** %8, align 8
  %20 = load %struct.super_block*, %struct.super_block** %6, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 8, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %152

30:                                               ; preds = %2
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %33 = load i32, i32* @ENOSPC, align 4
  %34 = sub nsw i32 0, %33
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = call i32 @spin_lock(i32* @bitmap_lock)
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %62, %30
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.minix_sb_info*, %struct.minix_sb_info** %7, align 8
  %40 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load %struct.minix_sb_info*, %struct.minix_sb_info** %7, align 8
  %45 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %44, i32 0, i32 2
  %46 = load %struct.buffer_head**, %struct.buffer_head*** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %46, i64 %48
  %50 = load %struct.buffer_head*, %struct.buffer_head** %49, align 8
  store %struct.buffer_head* %50, %struct.buffer_head** %9, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @minix_find_first_zero_bit(i32 %53, i32 %54)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %43
  br label %65

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %37

65:                                               ; preds = %60, %37
  %66 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %67 = icmp ne %struct.buffer_head* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp uge i64 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68, %65
  %74 = call i32 @spin_unlock(i32* @bitmap_lock)
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = call i32 @iput(%struct.inode* %75)
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %152

77:                                               ; preds = %68
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @minix_test_and_set_bit(i64 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = call i32 @spin_unlock(i32* @bitmap_lock)
  %86 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = call i32 @iput(%struct.inode* %87)
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %152

89:                                               ; preds = %77
  %90 = call i32 @spin_unlock(i32* @bitmap_lock)
  %91 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %92 = call i32 @mark_buffer_dirty(%struct.buffer_head* %91)
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %10, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %11, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %89
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.minix_sb_info*, %struct.minix_sb_info** %7, align 8
  %104 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ugt i64 %102, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101, %89
  %108 = load %struct.inode*, %struct.inode** %8, align 8
  %109 = call i32 @iput(%struct.inode* %108)
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %152

110:                                              ; preds = %101
  %111 = call i32 (...) @current_fsuid()
  %112 = load %struct.inode*, %struct.inode** %8, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 8
  %114 = load %struct.inode*, %struct.inode** %4, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @S_ISGID, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  br label %126

124:                                              ; preds = %110
  %125 = call i32 (...) @current_fsgid()
  br label %126

126:                                              ; preds = %124, %120
  %127 = phi i32 [ %123, %120 ], [ %125, %124 ]
  %128 = load %struct.inode*, %struct.inode** %8, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load i64, i64* %11, align 8
  %131 = load %struct.inode*, %struct.inode** %8, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  %133 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %134 = load %struct.inode*, %struct.inode** %8, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load %struct.inode*, %struct.inode** %8, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 4
  store i32 %133, i32* %137, align 4
  %138 = load %struct.inode*, %struct.inode** %8, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 5
  store i32 %133, i32* %139, align 8
  %140 = load %struct.inode*, %struct.inode** %8, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 2
  store i64 0, i64* %141, align 8
  %142 = load %struct.inode*, %struct.inode** %8, align 8
  %143 = call %struct.TYPE_2__* @minix_i(%struct.inode* %142)
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = call i32 @memset(i32* %144, i32 0, i32 4)
  %146 = load %struct.inode*, %struct.inode** %8, align 8
  %147 = call i32 @insert_inode_hash(%struct.inode* %146)
  %148 = load %struct.inode*, %struct.inode** %8, align 8
  %149 = call i32 @mark_inode_dirty(%struct.inode* %148)
  %150 = load i32*, i32** %5, align 8
  store i32 0, i32* %150, align 4
  %151 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %151, %struct.inode** %3, align 8
  br label %152

152:                                              ; preds = %126, %107, %84, %73, %26
  %153 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %153
}

declare dso_local %struct.minix_sb_info* @minix_sb(%struct.super_block*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @minix_find_first_zero_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i64 @minix_test_and_set_bit(i64, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @minix_i(%struct.inode*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
