; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c___find_get_block_slow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c___find_get_block_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32, i32, %struct.buffer_head* }
%struct.block_device = type { %struct.inode* }
%struct.inode = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"__find_get_block_slow() failed. block=%llu, b_blocknr=%llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"b_state=0x%08lx, b_size=%zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"device blocksize: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.block_device*, i32)* @__find_get_block_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @__find_get_block_slow(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.block_device*, %struct.block_device** %3, align 8
  %14 = getelementptr inbounds %struct.block_device, %struct.block_device* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %5, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  store i32 1, i32* %12, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %20, %23
  %25 = ashr i32 %19, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.address_space*, %struct.address_space** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.page* @find_get_page(%struct.address_space* %26, i32 %27)
  store %struct.page* %28, %struct.page** %11, align 8
  %29 = load %struct.page*, %struct.page** %11, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  br label %99

32:                                               ; preds = %2
  %33 = load %struct.address_space*, %struct.address_space** %6, align 8
  %34 = getelementptr inbounds %struct.address_space, %struct.address_space* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.page*, %struct.page** %11, align 8
  %37 = call i32 @page_has_buffers(%struct.page* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %93

40:                                               ; preds = %32
  %41 = load %struct.page*, %struct.page** %11, align 8
  %42 = call %struct.buffer_head* @page_buffers(%struct.page* %41)
  store %struct.buffer_head* %42, %struct.buffer_head** %10, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %43, %struct.buffer_head** %9, align 8
  br label %44

44:                                               ; preds = %64, %40
  %45 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %46 = call i32 @buffer_mapped(%struct.buffer_head* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %60

49:                                               ; preds = %44
  %50 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %56, %struct.buffer_head** %7, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %58 = call i32 @get_bh(%struct.buffer_head* %57)
  br label %93

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %48
  %61 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 3
  %63 = load %struct.buffer_head*, %struct.buffer_head** %62, align 8
  store %struct.buffer_head* %63, %struct.buffer_head** %9, align 8
  br label %64

64:                                               ; preds = %60
  %65 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %66 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %67 = icmp ne %struct.buffer_head* %65, %66
  br i1 %67, label %44, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = trunc i64 %73 to i32
  %75 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %74, i64 %78)
  %80 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %85)
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = shl i32 1, %89
  %91 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %71, %68
  br label %93

93:                                               ; preds = %92, %55, %39
  %94 = load %struct.address_space*, %struct.address_space** %6, align 8
  %95 = getelementptr inbounds %struct.address_space, %struct.address_space* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load %struct.page*, %struct.page** %11, align 8
  %98 = call i32 @page_cache_release(%struct.page* %97)
  br label %99

99:                                               ; preds = %93, %31
  %100 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  ret %struct.buffer_head* %100
}

declare dso_local %struct.page* @find_get_page(%struct.address_space*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
