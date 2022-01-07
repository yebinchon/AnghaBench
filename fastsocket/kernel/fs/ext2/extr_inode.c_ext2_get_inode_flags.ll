; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_get_inode_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_get_inode_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_inode_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EXT2_SYNC_FL = common dso_local global i32 0, align 4
@EXT2_APPEND_FL = common dso_local global i32 0, align 4
@EXT2_IMMUTABLE_FL = common dso_local global i32 0, align 4
@EXT2_NOATIME_FL = common dso_local global i32 0, align 4
@EXT2_DIRSYNC_FL = common dso_local global i32 0, align 4
@S_SYNC = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@S_DIRSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_get_inode_flags(%struct.ext2_inode_info* %0) #0 {
  %2 = alloca %struct.ext2_inode_info*, align 8
  %3 = alloca i32, align 4
  store %struct.ext2_inode_info* %0, %struct.ext2_inode_info** %2, align 8
  %4 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %2, align 8
  %5 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @EXT2_SYNC_FL, align 4
  %9 = load i32, i32* @EXT2_APPEND_FL, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @EXT2_IMMUTABLE_FL, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @EXT2_NOATIME_FL, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @EXT2_DIRSYNC_FL, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %2, align 8
  %19 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @S_SYNC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load i32, i32* @EXT2_SYNC_FL, align 4
  %28 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %2, align 8
  %29 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %1
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @S_APPEND, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @EXT2_APPEND_FL, align 4
  %39 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %2, align 8
  %40 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @S_IMMUTABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @EXT2_IMMUTABLE_FL, align 4
  %50 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %2, align 8
  %51 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @S_NOATIME, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @EXT2_NOATIME_FL, align 4
  %61 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %2, align 8
  %62 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @S_DIRSYNC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* @EXT2_DIRSYNC_FL, align 4
  %72 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %2, align 8
  %73 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %65
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
