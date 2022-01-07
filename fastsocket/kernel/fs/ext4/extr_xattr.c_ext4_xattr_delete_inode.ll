; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"inode %lu: block %llu read error\00", align 1
@EXT4_XATTR_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"inode %lu: bad block %llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext4_xattr_delete_inode(i32* %0, %struct.inode* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  %6 = load %struct.inode*, %struct.inode** %4, align 8
  %7 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %6)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %70

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.buffer_head* @sb_bread(i32 %15, i64 %19)
  store %struct.buffer_head* %20, %struct.buffer_head** %5, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %22 = icmp ne %struct.buffer_head* %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %12
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ext4_error(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %33)
  br label %70

35:                                               ; preds = %12
  %36 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %37 = call %struct.TYPE_4__* @BHDR(%struct.buffer_head* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @EXT4_XATTR_MAGIC, align 4
  %41 = call i64 @cpu_to_le32(i32 %40)
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %45 = call %struct.TYPE_4__* @BHDR(%struct.buffer_head* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @cpu_to_le32(i32 1)
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %43, %35
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ext4_error(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %56, i64 %60)
  br label %70

62:                                               ; preds = %43
  %63 = load i32*, i32** %3, align 8
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %66 = call i32 @ext4_xattr_release_block(i32* %63, %struct.inode* %64, %struct.buffer_head* %65)
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %62, %50, %23, %11
  %71 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %72 = call i32 @brelse(%struct.buffer_head* %71)
  ret void
}

declare dso_local %struct.TYPE_3__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i64) #1

declare dso_local i32 @ext4_error(i32, i8*, i32, i64) #1

declare dso_local %struct.TYPE_4__* @BHDR(%struct.buffer_head*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_xattr_release_block(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
