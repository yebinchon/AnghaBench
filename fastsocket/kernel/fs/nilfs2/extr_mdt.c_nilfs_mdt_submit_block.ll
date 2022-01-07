; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_submit_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_submit_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@READA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i32, %struct.buffer_head**)* @nilfs_mdt_submit_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_mdt_submit_block(%struct.inode* %0, i64 %1, i32 %2, %struct.buffer_head** %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %8, align 8
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call %struct.buffer_head* @nilfs_grab_buffer(%struct.inode* %14, i32 %17, i64 %18, i32 0)
  store %struct.buffer_head* %19, %struct.buffer_head** %9, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %21 = icmp ne %struct.buffer_head* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %107

27:                                               ; preds = %4
  %28 = load i32, i32* @EEXIST, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %31 = call i64 @buffer_uptodate(%struct.buffer_head* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %91

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @READA, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %40 = call i32 @trylock_buffer(%struct.buffer_head* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  br label %96

45:                                               ; preds = %38
  br label %49

46:                                               ; preds = %34
  %47 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %48 = call i32 @lock_buffer(%struct.buffer_head* %47)
  br label %49

49:                                               ; preds = %46, %45
  %50 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %51 = call i64 @buffer_uptodate(%struct.buffer_head* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %55 = call i32 @unlock_buffer(%struct.buffer_head* %54)
  br label %91

56:                                               ; preds = %49
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = call %struct.TYPE_6__* @NILFS_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @nilfs_bmap_lookup(i32 %60, i64 %61, i64* %10)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %68 = call i32 @unlock_buffer(%struct.buffer_head* %67)
  br label %96

69:                                               ; preds = %56
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = call %struct.TYPE_5__* @NILFS_MDT(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %82 = call i32 @set_buffer_mapped(%struct.buffer_head* %81)
  %83 = load i32, i32* @end_buffer_read_sync, align 4
  %84 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %87 = call i32 @get_bh(%struct.buffer_head* %86)
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %90 = call i32 @submit_bh(i32 %88, %struct.buffer_head* %89)
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %69, %53, %33
  %92 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %93 = call i32 @get_bh(%struct.buffer_head* %92)
  %94 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %95 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %94, %struct.buffer_head** %95, align 8
  br label %96

96:                                               ; preds = %91, %66, %42
  %97 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %98 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @unlock_page(i32 %99)
  %101 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %102 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @page_cache_release(i32 %103)
  %105 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %106 = call i32 @brelse(%struct.buffer_head* %105)
  br label %107

107:                                              ; preds = %96, %26
  %108 = load i32, i32* %11, align 4
  ret i32 %108
}

declare dso_local %struct.buffer_head* @nilfs_grab_buffer(%struct.inode*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @trylock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_bmap_lookup(i32, i64, i64*) #1

declare dso_local %struct.TYPE_6__* @NILFS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_5__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @page_cache_release(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
