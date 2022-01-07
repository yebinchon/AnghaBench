; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_go7007_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_go7007_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.go7007_file* }
%struct.go7007_file = type { i64, i32, %struct.go7007* }
%struct.go7007 = type { i64, i32 }

@STATUS_ONLINE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @go7007_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca %struct.go7007_file*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call i32 @video_devdata(%struct.file* %6)
  %8 = call %struct.go7007* @video_get_drvdata(i32 %7)
  store %struct.go7007* %8, %struct.go7007** %4, align 8
  %9 = load %struct.go7007*, %struct.go7007** %4, align 8
  %10 = getelementptr inbounds %struct.go7007, %struct.go7007* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @STATUS_ONLINE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %41

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.go7007_file* @kmalloc(i32 24, i32 %18)
  store %struct.go7007_file* %19, %struct.go7007_file** %5, align 8
  %20 = load %struct.go7007_file*, %struct.go7007_file** %5, align 8
  %21 = icmp eq %struct.go7007_file* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %41

25:                                               ; preds = %17
  %26 = load %struct.go7007*, %struct.go7007** %4, align 8
  %27 = getelementptr inbounds %struct.go7007, %struct.go7007* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.go7007*, %struct.go7007** %4, align 8
  %31 = load %struct.go7007_file*, %struct.go7007_file** %5, align 8
  %32 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %31, i32 0, i32 2
  store %struct.go7007* %30, %struct.go7007** %32, align 8
  %33 = load %struct.go7007_file*, %struct.go7007_file** %5, align 8
  %34 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %33, i32 0, i32 1
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.go7007_file*, %struct.go7007_file** %5, align 8
  %37 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.go7007_file*, %struct.go7007_file** %5, align 8
  %39 = load %struct.file*, %struct.file** %3, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  store %struct.go7007_file* %38, %struct.go7007_file** %40, align 8
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %25, %22, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.go7007* @video_get_drvdata(i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local %struct.go7007_file* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
