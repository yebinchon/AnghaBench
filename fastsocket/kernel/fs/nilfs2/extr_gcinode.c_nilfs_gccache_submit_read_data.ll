; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_gcinode.c_nilfs_gccache_submit_read_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_gcinode.c_nilfs_gccache_submit_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.inode* }

@ENOMEM = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_gccache_submit_read_data(%struct.inode* %0, i64 %1, i64 %2, i64 %3, %struct.buffer_head** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call %struct.buffer_head* @nilfs_grab_buffer(%struct.inode* %15, i32 %18, i64 %19, i32 0)
  store %struct.buffer_head* %20, %struct.buffer_head** %12, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %22 = icmp ne %struct.buffer_head* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %107

30:                                               ; preds = %5
  %31 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %32 = call i64 @buffer_uptodate(%struct.buffer_head* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %94

35:                                               ; preds = %30
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call %struct.TYPE_2__* @NILFS_I_NILFS(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.inode*, %struct.inode** %41, align 8
  store %struct.inode* %42, %struct.inode** %14, align 8
  %43 = load %struct.inode*, %struct.inode** %14, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @nilfs_dat_translate(%struct.inode* %43, i64 %44, i64* %9)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %51 = call i32 @brelse(%struct.buffer_head* %50)
  br label %97

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %35
  %54 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %55 = call i32 @lock_buffer(%struct.buffer_head* %54)
  %56 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %57 = call i64 @buffer_uptodate(%struct.buffer_head* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %61 = call i32 @unlock_buffer(%struct.buffer_head* %60)
  br label %94

62:                                               ; preds = %53
  %63 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %64 = call i32 @buffer_mapped(%struct.buffer_head* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %62
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = call %struct.TYPE_2__* @NILFS_I_NILFS(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %74 = call i32 @set_buffer_mapped(%struct.buffer_head* %73)
  br label %75

75:                                               ; preds = %66, %62
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* @end_buffer_read_sync, align 4
  %80 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %83 = call i32 @get_bh(%struct.buffer_head* %82)
  %84 = load i32, i32* @READ, align 4
  %85 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %86 = call i32 @submit_bh(i32 %84, %struct.buffer_head* %85)
  %87 = load i64, i64* %10, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %75
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %92 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %75
  br label %94

94:                                               ; preds = %93, %59, %34
  store i32 0, i32* %13, align 4
  %95 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %96 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  store %struct.buffer_head* %95, %struct.buffer_head** %96, align 8
  br label %97

97:                                               ; preds = %94, %49
  %98 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %99 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @unlock_page(i32 %100)
  %102 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %103 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @page_cache_release(i32 %104)
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %97, %27
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local %struct.buffer_head* @nilfs_grab_buffer(%struct.inode*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_2__* @NILFS_I_NILFS(%struct.inode*) #1

declare dso_local i32 @nilfs_dat_translate(%struct.inode*, i64, i64*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @page_cache_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
