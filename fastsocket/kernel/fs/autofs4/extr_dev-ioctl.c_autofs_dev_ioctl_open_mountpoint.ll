; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_autofs_dev_ioctl_open_mountpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_autofs_dev_ioctl_open_mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.path = type { i32, i32 }

@test_by_dev = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @autofs_dev_ioctl_open_mountpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_dev_ioctl_open_mountpoint(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.path, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i32 (...) @get_unused_fd()
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @test_by_dev, align 4
  %19 = call i32 @find_autofs_mount(i8* %17, %struct.path* %9, i32 %18, i32* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %43

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @O_RDONLY, align 4
  %29 = call i32 (...) @current_cred()
  %30 = call %struct.file* @dentry_open(i32 %25, i32 %27, i32 %28, i32 %29)
  store %struct.file* %30, %struct.file** %8, align 8
  %31 = load %struct.file*, %struct.file** %8, align 8
  %32 = call i64 @IS_ERR(%struct.file* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load %struct.file*, %struct.file** %8, align 8
  %36 = call i32 @PTR_ERR(%struct.file* %35)
  store i32 %36, i32* %6, align 4
  br label %43

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.file*, %struct.file** %8, align 8
  %40 = call i32 @autofs_dev_ioctl_fd_install(i32 %38, %struct.file* %39)
  br label %41

41:                                               ; preds = %37, %2
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %34, %22
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @put_unused_fd(i32 %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %41
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @get_unused_fd(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @find_autofs_mount(i8*, %struct.path*, i32, i32*) #1

declare dso_local %struct.file* @dentry_open(i32, i32, i32, i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @autofs_dev_ioctl_fd_install(i32, %struct.file*) #1

declare dso_local i32 @put_unused_fd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
