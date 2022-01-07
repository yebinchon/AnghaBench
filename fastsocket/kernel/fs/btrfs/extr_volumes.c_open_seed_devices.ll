; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_open_seed_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_open_seed_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.btrfs_fs_devices* }
%struct.btrfs_fs_devices = type { %struct.btrfs_fs_devices*, i32, i32 }

@uuid_mutex = common dso_local global i32 0, align 4
@BTRFS_UUID_SIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i32*)* @open_seed_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_seed_devices(%struct.btrfs_root* %0, i32* %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.btrfs_fs_devices*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 @mutex_is_locked(i32* @uuid_mutex)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %13 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %17, align 8
  store %struct.btrfs_fs_devices* %18, %struct.btrfs_fs_devices** %5, align 8
  br label %19

19:                                               ; preds = %31, %2
  %20 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %21 = icmp ne %struct.btrfs_fs_devices* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @BTRFS_UUID_SIZE, align 4
  %28 = call i32 @memcmp(i32 %25, i32* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %95

31:                                               ; preds = %22
  %32 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %33 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %32, i32 0, i32 0
  %34 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %33, align 8
  store %struct.btrfs_fs_devices* %34, %struct.btrfs_fs_devices** %5, align 8
  br label %19

35:                                               ; preds = %19
  %36 = load i32*, i32** %4, align 8
  %37 = call %struct.btrfs_fs_devices* @find_fsid(i32* %36)
  store %struct.btrfs_fs_devices* %37, %struct.btrfs_fs_devices** %5, align 8
  %38 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %39 = icmp ne %struct.btrfs_fs_devices* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %95

43:                                               ; preds = %35
  %44 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %45 = call %struct.btrfs_fs_devices* @clone_fs_devices(%struct.btrfs_fs_devices* %44)
  store %struct.btrfs_fs_devices* %45, %struct.btrfs_fs_devices** %5, align 8
  %46 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %47 = call i64 @IS_ERR(%struct.btrfs_fs_devices* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %51 = call i32 @PTR_ERR(%struct.btrfs_fs_devices* %50)
  store i32 %51, i32* %6, align 4
  br label %95

52:                                               ; preds = %43
  %53 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %54 = load i32, i32* @FMODE_READ, align 4
  %55 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %56 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @__btrfs_open_devices(%struct.btrfs_fs_devices* %53, i32 %54, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %65 = call i32 @free_fs_devices(%struct.btrfs_fs_devices* %64)
  br label %95

66:                                               ; preds = %52
  %67 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %68 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %66
  %72 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %73 = call i32 @__btrfs_close_devices(%struct.btrfs_fs_devices* %72)
  %74 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %75 = call i32 @free_fs_devices(%struct.btrfs_fs_devices* %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %95

78:                                               ; preds = %66
  %79 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %80 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %84, align 8
  %86 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %87 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %86, i32 0, i32 0
  store %struct.btrfs_fs_devices* %85, %struct.btrfs_fs_devices** %87, align 8
  %88 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %89 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %90 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store %struct.btrfs_fs_devices* %88, %struct.btrfs_fs_devices** %94, align 8
  br label %95

95:                                               ; preds = %78, %71, %63, %49, %40, %30
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @memcmp(i32, i32*, i32) #1

declare dso_local %struct.btrfs_fs_devices* @find_fsid(i32*) #1

declare dso_local %struct.btrfs_fs_devices* @clone_fs_devices(%struct.btrfs_fs_devices*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_fs_devices*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_fs_devices*) #1

declare dso_local i32 @__btrfs_open_devices(%struct.btrfs_fs_devices*, i32, i32) #1

declare dso_local i32 @free_fs_devices(%struct.btrfs_fs_devices*) #1

declare dso_local i32 @__btrfs_close_devices(%struct.btrfs_fs_devices*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
