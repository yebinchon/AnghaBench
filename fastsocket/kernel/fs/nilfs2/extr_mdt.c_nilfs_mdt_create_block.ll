; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_create_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_create_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32, i32 }
%struct.the_nilfs = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.super_block* }
%struct.nilfs_transaction_info = type { i32 }
%struct.TYPE_4__ = type { %struct.the_nilfs* }

@EROFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head**, void (%struct.inode*, %struct.buffer_head*, i8*)*)* @nilfs_mdt_create_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_mdt_create_block(%struct.inode* %0, i64 %1, %struct.buffer_head** %2, void (%struct.inode*, %struct.buffer_head*, i8*)* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca void (%struct.inode*, %struct.buffer_head*, i8*)*, align 8
  %9 = alloca %struct.the_nilfs*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.nilfs_transaction_info, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  store void (%struct.inode*, %struct.buffer_head*, i8*)* %3, void (%struct.inode*, %struct.buffer_head*, i8*)** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.TYPE_4__* @NILFS_MDT(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %16, align 8
  store %struct.the_nilfs* %17, %struct.the_nilfs** %9, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %10, align 8
  %21 = load %struct.super_block*, %struct.super_block** %10, align 8
  %22 = icmp ne %struct.super_block* %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %4
  %24 = load %struct.the_nilfs*, %struct.the_nilfs** %9, align 8
  %25 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = call i32 @WARN_ON(i32 1)
  %30 = load i32, i32* @EROFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %13, align 4
  br label %118

32:                                               ; preds = %23
  %33 = load %struct.the_nilfs*, %struct.the_nilfs** %9, align 8
  %34 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.super_block*, %struct.super_block** %36, align 8
  store %struct.super_block* %37, %struct.super_block** %10, align 8
  br label %38

38:                                               ; preds = %32, %4
  %39 = load %struct.super_block*, %struct.super_block** %10, align 8
  %40 = call i32 @nilfs_transaction_begin(%struct.super_block* %39, %struct.nilfs_transaction_info* %11, i32 0)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %13, align 4
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call %struct.buffer_head* @nilfs_grab_buffer(%struct.inode* %43, i32 %46, i64 %47, i32 0)
  store %struct.buffer_head* %48, %struct.buffer_head** %12, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %50 = icmp ne %struct.buffer_head* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  br label %104

56:                                               ; preds = %38
  %57 = load i32, i32* @EEXIST, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %13, align 4
  %59 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %60 = call i64 @buffer_uptodate(%struct.buffer_head* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %93

63:                                               ; preds = %56
  %64 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %65 = call i32 @wait_on_buffer(%struct.buffer_head* %64)
  %66 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %67 = call i64 @buffer_uptodate(%struct.buffer_head* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %93

70:                                               ; preds = %63
  %71 = load %struct.the_nilfs*, %struct.the_nilfs** %9, align 8
  %72 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %79 = load void (%struct.inode*, %struct.buffer_head*, i8*)*, void (%struct.inode*, %struct.buffer_head*, i8*)** %8, align 8
  %80 = call i32 @nilfs_mdt_insert_new_block(%struct.inode* %76, i64 %77, %struct.buffer_head* %78, void (%struct.inode*, %struct.buffer_head*, i8*)* %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @likely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %70
  %88 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %89 = call i32 @get_bh(%struct.buffer_head* %88)
  %90 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %91 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %90, %struct.buffer_head** %91, align 8
  br label %92

92:                                               ; preds = %87, %70
  br label %93

93:                                               ; preds = %92, %69, %62
  %94 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %95 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @unlock_page(i32 %96)
  %98 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %99 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @page_cache_release(i32 %100)
  %102 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %103 = call i32 @brelse(%struct.buffer_head* %102)
  br label %104

104:                                              ; preds = %93, %55
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i64 @likely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load %struct.super_block*, %struct.super_block** %10, align 8
  %113 = call i32 @nilfs_transaction_commit(%struct.super_block* %112)
  store i32 %113, i32* %13, align 4
  br label %117

114:                                              ; preds = %104
  %115 = load %struct.super_block*, %struct.super_block** %10, align 8
  %116 = call i32 @nilfs_transaction_abort(%struct.super_block* %115)
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %117, %28
  %119 = load i32, i32* %13, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_4__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nilfs_transaction_begin(%struct.super_block*, %struct.nilfs_transaction_info*, i32) #1

declare dso_local %struct.buffer_head* @nilfs_grab_buffer(%struct.inode*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_insert_new_block(%struct.inode*, i64, %struct.buffer_head*, void (%struct.inode*, %struct.buffer_head*, i8*)*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @page_cache_release(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_transaction_commit(%struct.super_block*) #1

declare dso_local i32 @nilfs_transaction_abort(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
