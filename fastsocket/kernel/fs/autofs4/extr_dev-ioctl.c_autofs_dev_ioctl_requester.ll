; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_autofs_dev_ioctl_requester.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_autofs_dev_ioctl_requester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.autofs_sb_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.autofs_dev_ioctl = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.autofs_info = type { i32, i32 }
%struct.path = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@test_by_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.autofs_sb_info*, %struct.autofs_dev_ioctl*)* @autofs_dev_ioctl_requester to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_dev_ioctl_requester(%struct.file* %0, %struct.autofs_sb_info* %1, %struct.autofs_dev_ioctl* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.autofs_sb_info*, align 8
  %6 = alloca %struct.autofs_dev_ioctl*, align 8
  %7 = alloca %struct.autofs_info*, align 8
  %8 = alloca %struct.path, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.autofs_sb_info* %1, %struct.autofs_sb_info** %5, align 8
  store %struct.autofs_dev_ioctl* %2, %struct.autofs_dev_ioctl** %6, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %14 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ule i64 %16, 16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %23 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %28 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 -1, i32* %29, align 4
  %30 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %31 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 4
  %33 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %34 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @test_by_dev, align 4
  %37 = call i32 @find_autofs_mount(i32 %35, %struct.path* %8, i32 %36, i32* %9)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  br label %71

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.autofs_info* @autofs4_dentry_ino(i32 %43)
  store %struct.autofs_info* %44, %struct.autofs_info** %7, align 8
  %45 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %46 = icmp ne %struct.autofs_info* %45, null
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  %48 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @autofs4_expire_wait(i32 %49)
  %51 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %52 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %51, i32 0, i32 0
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %55 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %58 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %61 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %64 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %67 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  br label %69

69:                                               ; preds = %47, %41
  %70 = call i32 @path_put(%struct.path* %8)
  br label %71

71:                                               ; preds = %69, %40, %18
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local i32 @find_autofs_mount(i32, %struct.path*, i32, i32*) #1

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(i32) #1

declare dso_local i32 @autofs4_expire_wait(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
