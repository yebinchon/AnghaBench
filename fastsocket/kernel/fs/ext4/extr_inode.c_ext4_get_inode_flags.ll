; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_get_inode_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_get_inode_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_inode_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EXT4_SYNC_FL = common dso_local global i64 0, align 8
@EXT4_APPEND_FL = common dso_local global i64 0, align 8
@EXT4_IMMUTABLE_FL = common dso_local global i64 0, align 8
@EXT4_NOATIME_FL = common dso_local global i64 0, align 8
@EXT4_DIRSYNC_FL = common dso_local global i64 0, align 8
@S_SYNC = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@S_DIRSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext4_get_inode_flags(%struct.ext4_inode_info* %0) #0 {
  %2 = alloca %struct.ext4_inode_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ext4_inode_info* %0, %struct.ext4_inode_info** %2, align 8
  br label %6

6:                                                ; preds = %71, %1
  %7 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %2, align 8
  %8 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %2, align 8
  %12 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @EXT4_SYNC_FL, align 8
  %16 = load i64, i64* @EXT4_APPEND_FL, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @EXT4_IMMUTABLE_FL, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* @EXT4_NOATIME_FL, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @EXT4_DIRSYNC_FL, align 8
  %23 = or i64 %21, %22
  %24 = xor i64 %23, -1
  %25 = and i64 %14, %24
  store i64 %25, i64* %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @S_SYNC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %6
  %31 = load i64, i64* @EXT4_SYNC_FL, align 8
  %32 = load i64, i64* %5, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %30, %6
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @S_APPEND, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i64, i64* @EXT4_APPEND_FL, align 8
  %41 = load i64, i64* %5, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @S_IMMUTABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i64, i64* @EXT4_IMMUTABLE_FL, align 8
  %50 = load i64, i64* %5, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @S_NOATIME, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i64, i64* @EXT4_NOATIME_FL, align 8
  %59 = load i64, i64* %5, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @S_DIRSYNC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i64, i64* @EXT4_DIRSYNC_FL, align 8
  %68 = load i64, i64* %5, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %2, align 8
  %73 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %72, i32 0, i32 0
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i64 @cmpxchg(i64* %73, i64 %74, i64 %75)
  %77 = load i64, i64* %4, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %6, label %79

79:                                               ; preds = %71
  ret void
}

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
