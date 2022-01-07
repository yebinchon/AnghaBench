; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_ext2_release_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_ext2_release_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext2_group_desc = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ext2_release_inode\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"can't get descriptor for group %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32, i32)* @ext2_release_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_release_inode(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_group_desc*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %9, i32 %10, %struct.buffer_head** %8)
  store %struct.ext2_group_desc* %11, %struct.ext2_group_desc** %7, align 8
  %12 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %7, align 8
  %13 = icmp ne %struct.ext2_group_desc* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ext2_error(%struct.super_block* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %51

18:                                               ; preds = %3
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = call %struct.TYPE_3__* @EXT2_SB(%struct.super_block* %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @sb_bgl_lock(%struct.TYPE_3__* %20, i32 %21)
  %23 = call i32 @spin_lock(i32 %22)
  %24 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %7, align 8
  %25 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %24, i32 0, i32 1
  %26 = call i32 @le16_add_cpu(i32* %25, i32 1)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %7, align 8
  %31 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %30, i32 0, i32 0
  %32 = call i32 @le16_add_cpu(i32* %31, i32 -1)
  br label %33

33:                                               ; preds = %29, %18
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = call %struct.TYPE_3__* @EXT2_SB(%struct.super_block* %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @sb_bgl_lock(%struct.TYPE_3__* %35, i32 %36)
  %38 = call i32 @spin_unlock(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = call %struct.TYPE_3__* @EXT2_SB(%struct.super_block* %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @percpu_counter_dec(i32* %44)
  br label %46

46:                                               ; preds = %41, %33
  %47 = load %struct.super_block*, %struct.super_block** %4, align 8
  %48 = getelementptr inbounds %struct.super_block, %struct.super_block* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %50 = call i32 @mark_buffer_dirty(%struct.buffer_head* %49)
  br label %51

51:                                               ; preds = %46, %14
  ret void
}

declare dso_local %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @ext2_error(%struct.super_block*, i8*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @sb_bgl_lock(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.TYPE_3__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @percpu_counter_dec(i32*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
