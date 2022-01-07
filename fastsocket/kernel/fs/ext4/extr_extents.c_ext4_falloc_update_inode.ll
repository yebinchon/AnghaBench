; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_falloc_update_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_falloc_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.timespec, i32 }
%struct.timespec = type { i32 }
%struct.TYPE_2__ = type { i64 }

@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@EXT4_INODE_EOFBLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i64, i32)* @ext4_falloc_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_falloc_update_inode(%struct.inode* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec, align 4
  %10 = alloca %struct.timespec, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @current_fs_time(i32 %16)
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = bitcast %struct.timespec* %9 to i8*
  %20 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = call i32 @timespec_equal(%struct.timespec* %22, %struct.timespec* %9)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %13
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = bitcast %struct.timespec* %27 to i8*
  %29 = bitcast %struct.timespec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  br label %30

30:                                               ; preds = %25, %13
  br label %31

31:                                               ; preds = %30, %4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = call i64 @i_size_read(%struct.inode* %38)
  %40 = icmp sgt i64 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @i_size_write(%struct.inode* %42, i64 %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %46, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @ext4_update_i_disksize(%struct.inode* %53, i64 %54)
  br label %56

56:                                               ; preds = %52, %45
  br label %67

57:                                               ; preds = %31
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call i64 @i_size_read(%struct.inode* %59)
  %61 = icmp sgt i64 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = load i32, i32* @EXT4_INODE_EOFBLOCKS, align 4
  %65 = call i32 @ext4_set_inode_flag(%struct.inode* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %57
  br label %67

67:                                               ; preds = %66, %56
  ret void
}

declare dso_local i32 @current_fs_time(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timespec_equal(%struct.timespec*, %struct.timespec*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_update_i_disksize(%struct.inode*, i64) #1

declare dso_local i32 @ext4_set_inode_flag(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
