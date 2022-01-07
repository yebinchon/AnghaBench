; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_grab_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_grab_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.address_space = type { i32* }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @nilfs_grab_buffer(%struct.inode* %0, %struct.address_space* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.address_space* %1, %struct.address_space** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sub nsw i32 %20, %21
  %23 = zext i32 %22 to i64
  %24 = lshr i64 %19, %23
  store i64 %24, i64* %11, align 8
  %25 = load %struct.address_space*, %struct.address_space** %7, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call %struct.page* @grab_cache_page(%struct.address_space* %25, i64 %26)
  store %struct.page* %27, %struct.page** %12, align 8
  %28 = load %struct.page*, %struct.page** %12, align 8
  %29 = icmp ne %struct.page* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %113

35:                                               ; preds = %4
  %36 = load %struct.page*, %struct.page** %12, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i64, i64* %9, align 8
  %41 = call %struct.buffer_head* @__nilfs_get_page_block(%struct.page* %36, i64 %37, i64 %38, i32 %39, i64 %40)
  store %struct.buffer_head* %41, %struct.buffer_head** %14, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %43 = icmp ne %struct.buffer_head* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %35
  %49 = load %struct.page*, %struct.page** %12, align 8
  %50 = call i32 @unlock_page(%struct.page* %49)
  %51 = load %struct.page*, %struct.page** %12, align 8
  %52 = call i32 @page_cache_release(%struct.page* %51)
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %113

53:                                               ; preds = %35
  %54 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %55 = call i64 @buffer_uptodate(%struct.buffer_head* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %111, label %57

57:                                               ; preds = %53
  %58 = load %struct.address_space*, %struct.address_space** %7, align 8
  %59 = getelementptr inbounds %struct.address_space, %struct.address_space* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %111

62:                                               ; preds = %57
  %63 = load %struct.address_space*, %struct.address_space** %7, align 8
  %64 = getelementptr inbounds %struct.address_space, %struct.address_space* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call %struct.page* @find_lock_page(i32* %65, i64 %66)
  store %struct.page* %67, %struct.page** %13, align 8
  %68 = load %struct.page*, %struct.page** %13, align 8
  %69 = icmp ne %struct.page* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %71, %struct.buffer_head** %5, align 8
  br label %113

72:                                               ; preds = %62
  %73 = load %struct.page*, %struct.page** %13, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i64, i64* %9, align 8
  %78 = call %struct.buffer_head* @__nilfs_get_page_block(%struct.page* %73, i64 %74, i64 %75, i32 %76, i64 %77)
  store %struct.buffer_head* %78, %struct.buffer_head** %15, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %80 = call i64 @buffer_uptodate(%struct.buffer_head* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %72
  %83 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %85 = call i32 @nilfs_copy_buffer(%struct.buffer_head* %83, %struct.buffer_head* %84)
  %86 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %87 = call i64 @buffer_dirty(%struct.buffer_head* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %82
  %90 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %91 = call i32 @nilfs_mark_buffer_dirty(%struct.buffer_head* %90)
  %92 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %93 = call i32 @buffer_nilfs_node(%struct.buffer_head* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %89
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = call i64 @NILFS_MDT(%struct.inode* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %100)
  br label %102

102:                                              ; preds = %99, %95, %89
  br label %103

103:                                              ; preds = %102, %82
  br label %104

104:                                              ; preds = %103, %72
  %105 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %106 = call i32 @brelse(%struct.buffer_head* %105)
  %107 = load %struct.page*, %struct.page** %13, align 8
  %108 = call i32 @unlock_page(%struct.page* %107)
  %109 = load %struct.page*, %struct.page** %13, align 8
  %110 = call i32 @page_cache_release(%struct.page* %109)
  br label %111

111:                                              ; preds = %104, %57, %53
  %112 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %112, %struct.buffer_head** %5, align 8
  br label %113

113:                                              ; preds = %111, %70, %48, %34
  %114 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %114
}

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.buffer_head* @__nilfs_get_page_block(%struct.page*, i64, i64, i32, i64) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local %struct.page* @find_lock_page(i32*, i64) #1

declare dso_local i32 @nilfs_copy_buffer(%struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @buffer_nilfs_node(%struct.buffer_head*) #1

declare dso_local i64 @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
