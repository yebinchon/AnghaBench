; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_autofs_dev_ioctl_setpipefd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_autofs_dev_ioctl_setpipefd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.autofs_sb_info = type { i32, i32, i64, %struct.file*, i32 }
%struct.autofs_dev_ioctl = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.autofs_sb_info*, %struct.autofs_dev_ioctl*)* @autofs_dev_ioctl_setpipefd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_dev_ioctl_setpipefd(%struct.file* %0, %struct.autofs_sb_info* %1, %struct.autofs_dev_ioctl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.autofs_sb_info*, align 8
  %7 = alloca %struct.autofs_dev_ioctl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.autofs_sb_info* %1, %struct.autofs_sb_info** %6, align 8
  store %struct.autofs_dev_ioctl* %2, %struct.autofs_dev_ioctl** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %7, align 8
  %12 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %75

19:                                               ; preds = %3
  %20 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %7, align 8
  %21 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %25 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %28 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %19
  %32 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %33 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %75

37:                                               ; preds = %19
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.file* @fget(i32 %38)
  store %struct.file* %39, %struct.file** %10, align 8
  %40 = load %struct.file*, %struct.file** %10, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.file*, %struct.file** %10, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %44, %37
  %52 = load i32, i32* @EPIPE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  %54 = load %struct.file*, %struct.file** %10, align 8
  %55 = call i32 @fput(%struct.file* %54)
  br label %70

56:                                               ; preds = %44
  %57 = load i32, i32* @current, align 4
  %58 = call i32 @task_pgrp_nr(i32 %57)
  %59 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %60 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %63 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.file*, %struct.file** %10, align 8
  %65 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %66 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %65, i32 0, i32 3
  store %struct.file* %64, %struct.file** %66, align 8
  %67 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %68 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %51
  %71 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %72 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %70, %31, %16
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @task_pgrp_nr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
