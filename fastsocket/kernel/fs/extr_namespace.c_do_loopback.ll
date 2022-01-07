; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32, i32 }
%struct.vfsmount = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@LOOKUP_AUTOMOUNT = common dso_local global i32 0, align 4
@namespace_sem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@umount_list = common dso_local global i32 0, align 4
@vfsmount_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i8*, i32)* @do_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_loopback(%struct.path* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.path*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.path, align 4
  %9 = alloca %struct.vfsmount*, align 8
  %10 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.vfsmount* null, %struct.vfsmount** %9, align 8
  %11 = load %struct.path*, %struct.path** %5, align 8
  %12 = call i32 @mount_is_safe(%struct.path* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %104

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %104

27:                                               ; preds = %20
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %30 = load i32, i32* @LOOKUP_AUTOMOUNT, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @kern_path(i8* %28, i32 %31, %struct.path* %8)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %104

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  %40 = call i64 @mnt_ns_loop(%struct.path* %8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %100

43:                                               ; preds = %37
  %44 = call i32 @down_write(i32* @namespace_sem)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  %47 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @IS_MNT_UNBINDABLE(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %100

52:                                               ; preds = %43
  %53 = load %struct.path*, %struct.path** %5, align 8
  %54 = getelementptr inbounds %struct.path, %struct.path* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @check_mnt(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @check_mnt(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58, %52
  br label %100

64:                                               ; preds = %58
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.vfsmount* @copy_tree(i32 %71, i32 %73, i32 0)
  store %struct.vfsmount* %74, %struct.vfsmount** %9, align 8
  br label %81

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.vfsmount* @clone_mnt(i32 %77, i32 %79, i32 0)
  store %struct.vfsmount* %80, %struct.vfsmount** %9, align 8
  br label %81

81:                                               ; preds = %75, %69
  %82 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %83 = icmp ne %struct.vfsmount* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  br label %100

85:                                               ; preds = %81
  %86 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %87 = load %struct.path*, %struct.path** %5, align 8
  %88 = call i32 @graft_tree(%struct.vfsmount* %86, %struct.path* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load i32, i32* @umount_list, align 4
  %93 = call i32 @LIST_HEAD(i32 %92)
  %94 = call i32 @spin_lock(i32* @vfsmount_lock)
  %95 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %96 = call i32 @umount_tree(%struct.vfsmount* %95, i32 0, i32* @umount_list)
  %97 = call i32 @spin_unlock(i32* @vfsmount_lock)
  %98 = call i32 @release_mounts(i32* @umount_list)
  br label %99

99:                                               ; preds = %91, %85
  br label %100

100:                                              ; preds = %99, %84, %63, %51, %42
  %101 = call i32 @up_write(i32* @namespace_sem)
  %102 = call i32 @path_put(%struct.path* %8)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %35, %24, %15
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @mount_is_safe(%struct.path*) #1

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i64 @mnt_ns_loop(%struct.path*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @IS_MNT_UNBINDABLE(i32) #1

declare dso_local i32 @check_mnt(i32) #1

declare dso_local %struct.vfsmount* @copy_tree(i32, i32, i32) #1

declare dso_local %struct.vfsmount* @clone_mnt(i32, i32, i32) #1

declare dso_local i32 @graft_tree(%struct.vfsmount*, %struct.path*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @umount_tree(%struct.vfsmount*, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @release_mounts(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
