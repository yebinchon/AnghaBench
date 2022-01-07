; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_ialloc.c_sysv_free_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_ialloc.c_sysv_free_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i32, i32, i32, i8** }
%struct.buffer_head = type { i32 }
%struct.sysv_inode = type { i32 }

@SYSV_ROOT_INO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"sysv_free_inode: inode 0,1,2 or nonexistent inode\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"sysv_free_inode: unable to read inode block on device %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysv_free_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.sysv_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.sysv_inode*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %3, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %12)
  store %struct.sysv_sb_info* %13, %struct.sysv_sb_info** %4, align 8
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %3, align 8
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SYSV_ROOT_INO, align 4
  %22 = icmp ule i32 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %26 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ugt i32 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %1
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %90

31:                                               ; preds = %23
  %32 = load %struct.super_block*, %struct.super_block** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.sysv_inode* @sysv_raw_inode(%struct.super_block* %32, i32 %33, %struct.buffer_head** %6)
  store %struct.sysv_inode* %34, %struct.sysv_inode** %7, align 8
  %35 = load %struct.inode*, %struct.inode** %2, align 8
  %36 = call i32 @clear_inode(%struct.inode* %35)
  %37 = load %struct.sysv_inode*, %struct.sysv_inode** %7, align 8
  %38 = icmp ne %struct.sysv_inode* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %31
  %40 = load %struct.inode*, %struct.inode** %2, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load %struct.super_block*, %struct.super_block** %41, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %90

46:                                               ; preds = %31
  %47 = load %struct.super_block*, %struct.super_block** %3, align 8
  %48 = call i32 @lock_super(%struct.super_block* %47)
  %49 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %50 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %51 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %50, i32 0, i32 3
  %52 = load i8**, i8*** %51, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %49, i8* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %57 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %46
  %61 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i8* @cpu_to_fs16(%struct.sysv_sb_info* %61, i32 %62)
  %64 = load %struct.super_block*, %struct.super_block** %3, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %8, align 4
  %67 = call i8** @sv_sb_fic_inode(%struct.super_block* %64, i32 %65)
  store i8* %63, i8** %67, align 8
  %68 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i8* @cpu_to_fs16(%struct.sysv_sb_info* %68, i32 %69)
  %71 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %72 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %71, i32 0, i32 3
  %73 = load i8**, i8*** %72, align 8
  store i8* %70, i8** %73, align 8
  br label %74

74:                                               ; preds = %60, %46
  %75 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %76 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %77 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @fs16_add(%struct.sysv_sb_info* %75, i32 %78, i32 1)
  %80 = load %struct.super_block*, %struct.super_block** %3, align 8
  %81 = call i32 @dirty_sb(%struct.super_block* %80)
  %82 = load %struct.sysv_inode*, %struct.sysv_inode** %7, align 8
  %83 = call i32 @memset(%struct.sysv_inode* %82, i32 0, i32 4)
  %84 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %85 = call i32 @mark_buffer_dirty(%struct.buffer_head* %84)
  %86 = load %struct.super_block*, %struct.super_block** %3, align 8
  %87 = call i32 @unlock_super(%struct.super_block* %86)
  %88 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %89 = call i32 @brelse(%struct.buffer_head* %88)
  br label %90

90:                                               ; preds = %74, %39, %29
  ret void
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local %struct.sysv_inode* @sysv_raw_inode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i8*) #1

declare dso_local i8* @cpu_to_fs16(%struct.sysv_sb_info*, i32) #1

declare dso_local i8** @sv_sb_fic_inode(%struct.super_block*, i32) #1

declare dso_local i32 @fs16_add(%struct.sysv_sb_info*, i32, i32) #1

declare dso_local i32 @dirty_sb(%struct.super_block*) #1

declare dso_local i32 @memset(%struct.sysv_inode*, i32, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
