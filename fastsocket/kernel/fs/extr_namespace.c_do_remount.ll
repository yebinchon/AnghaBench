; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_remount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MS_BIND = common dso_local global i32 0, align 4
@vfsmount_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i32, i32, i8*)* @do_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_remount(%struct.path* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.super_block*, align 8
  store %struct.path* %0, %struct.path** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.path*, %struct.path** %6, align 8
  %13 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %11, align 8
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = call i32 @capable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %104

23:                                               ; preds = %4
  %24 = load %struct.path*, %struct.path** %6, align 8
  %25 = getelementptr inbounds %struct.path, %struct.path* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @check_mnt(%struct.TYPE_4__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %104

32:                                               ; preds = %23
  %33 = load %struct.path*, %struct.path** %6, align 8
  %34 = getelementptr inbounds %struct.path, %struct.path* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.path*, %struct.path** %6, align 8
  %37 = getelementptr inbounds %struct.path, %struct.path* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %35, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %104

45:                                               ; preds = %32
  %46 = load %struct.super_block*, %struct.super_block** %11, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @security_sb_remount(%struct.super_block* %46, i8* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %104

53:                                               ; preds = %45
  %54 = load %struct.super_block*, %struct.super_block** %11, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 0
  %56 = call i32 @down_write(i32* %55)
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @MS_BIND, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load %struct.path*, %struct.path** %6, align 8
  %63 = getelementptr inbounds %struct.path, %struct.path* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @change_mount_flags(%struct.TYPE_4__* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  br label %72

67:                                               ; preds = %53
  %68 = load %struct.super_block*, %struct.super_block** %11, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @do_remount_sb(%struct.super_block* %68, i32 %69, i8* %70, i32 0)
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %67, %61
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.path*, %struct.path** %6, align 8
  %78 = getelementptr inbounds %struct.path, %struct.path* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %72
  %82 = load %struct.super_block*, %struct.super_block** %11, align 8
  %83 = getelementptr inbounds %struct.super_block, %struct.super_block* %82, i32 0, i32 0
  %84 = call i32 @up_write(i32* %83)
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %81
  %88 = load %struct.path*, %struct.path** %6, align 8
  %89 = getelementptr inbounds %struct.path, %struct.path* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @security_sb_post_remount(%struct.TYPE_4__* %90, i32 %91, i8* %92)
  %94 = call i32 @spin_lock(i32* @vfsmount_lock)
  %95 = load %struct.path*, %struct.path** %6, align 8
  %96 = getelementptr inbounds %struct.path, %struct.path* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @touch_mnt_namespace(i32 %99)
  %101 = call i32 @spin_unlock(i32* @vfsmount_lock)
  br label %102

102:                                              ; preds = %87, %81
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %51, %42, %29, %20
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @check_mnt(%struct.TYPE_4__*) #1

declare dso_local i32 @security_sb_remount(%struct.super_block*, i8*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @change_mount_flags(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @do_remount_sb(%struct.super_block*, i32, i8*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @security_sb_post_remount(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @touch_mnt_namespace(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
