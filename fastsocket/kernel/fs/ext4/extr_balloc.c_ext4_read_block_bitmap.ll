; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_balloc.c_ext4_read_block_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_balloc.c_ext4_read_block_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"Cannot read block bitmap - block_group = %u, block_bitmap = %llu\00", align 1
@EXT4_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @ext4_read_block_bitmap(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_group_desc*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %9, i32 %10, i32* null)
  store %struct.ext4_group_desc* %11, %struct.ext4_group_desc** %6, align 8
  %12 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %13 = icmp ne %struct.ext4_group_desc* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  br label %109

15:                                               ; preds = %2
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %18 = call i32 @ext4_block_bitmap(%struct.super_block* %16, %struct.ext4_group_desc* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %19, i32 %20)
  store %struct.buffer_head* %21, %struct.buffer_head** %7, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %23 = icmp ne %struct.buffer_head* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ext4_error(%struct.super_block* %29, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  br label %109

33:                                               ; preds = %15
  %34 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %35 = call i64 @bitmap_uptodate(%struct.buffer_head* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %38, %struct.buffer_head** %3, align 8
  br label %109

39:                                               ; preds = %33
  %40 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %41 = call i32 @lock_buffer(%struct.buffer_head* %40)
  %42 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %43 = call i64 @bitmap_uptodate(%struct.buffer_head* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %47 = call i32 @unlock_buffer(%struct.buffer_head* %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %48, %struct.buffer_head** %3, align 8
  br label %109

49:                                               ; preds = %39
  %50 = load %struct.super_block*, %struct.super_block** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ext4_lock_group(%struct.super_block* %50, i32 %51)
  %53 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %54 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @EXT4_BG_BLOCK_UNINIT, align 4
  %57 = call i32 @cpu_to_le16(i32 %56)
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %49
  %61 = load %struct.super_block*, %struct.super_block** %4, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %65 = call i32 @ext4_init_block_bitmap(%struct.super_block* %61, %struct.buffer_head* %62, i32 %63, %struct.ext4_group_desc* %64)
  %66 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %67 = call i32 @set_bitmap_uptodate(%struct.buffer_head* %66)
  %68 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %69 = call i32 @set_buffer_uptodate(%struct.buffer_head* %68)
  %70 = load %struct.super_block*, %struct.super_block** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @ext4_unlock_group(%struct.super_block* %70, i32 %71)
  %73 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %74 = call i32 @unlock_buffer(%struct.buffer_head* %73)
  %75 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %75, %struct.buffer_head** %3, align 8
  br label %109

76:                                               ; preds = %49
  %77 = load %struct.super_block*, %struct.super_block** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @ext4_unlock_group(%struct.super_block* %77, i32 %78)
  %80 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %81 = call i64 @buffer_uptodate(%struct.buffer_head* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %85 = call i32 @set_bitmap_uptodate(%struct.buffer_head* %84)
  %86 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %87 = call i32 @unlock_buffer(%struct.buffer_head* %86)
  %88 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %88, %struct.buffer_head** %3, align 8
  br label %109

89:                                               ; preds = %76
  %90 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %91 = call i32 @set_bitmap_uptodate(%struct.buffer_head* %90)
  %92 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %93 = call i64 @bh_submit_read(%struct.buffer_head* %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %97 = call i32 @put_bh(%struct.buffer_head* %96)
  %98 = load %struct.super_block*, %struct.super_block** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @ext4_error(%struct.super_block* %98, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %100)
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  br label %109

102:                                              ; preds = %89
  %103 = load %struct.super_block*, %struct.super_block** %4, align 8
  %104 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %107 = call i32 @ext4_valid_block_bitmap(%struct.super_block* %103, %struct.ext4_group_desc* %104, i32 %105, %struct.buffer_head* %106)
  %108 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %108, %struct.buffer_head** %3, align 8
  br label %109

109:                                              ; preds = %102, %95, %83, %60, %45, %37, %28, %14
  %110 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  ret %struct.buffer_head* %110
}

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @ext4_block_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32, i32) #1

declare dso_local i64 @bitmap_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ext4_lock_group(%struct.super_block*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_init_block_bitmap(%struct.super_block*, %struct.buffer_head*, i32, %struct.ext4_group_desc*) #1

declare dso_local i32 @set_bitmap_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext4_unlock_group(%struct.super_block*, i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i64 @bh_submit_read(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @ext4_valid_block_bitmap(%struct.super_block*, %struct.ext4_group_desc*, i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
