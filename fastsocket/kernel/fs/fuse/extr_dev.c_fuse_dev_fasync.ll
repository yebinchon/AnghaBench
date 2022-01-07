; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_dev_fasync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_dev_fasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fuse_conn = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, i32)* @fuse_dev_fasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_dev_fasync(i32 %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_conn*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.file*, %struct.file** %6, align 8
  %10 = call %struct.fuse_conn* @fuse_get_conn(%struct.file* %9)
  store %struct.fuse_conn* %10, %struct.fuse_conn** %8, align 8
  %11 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %12 = icmp ne %struct.fuse_conn* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %21 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %20, i32 0, i32 0
  %22 = call i32 @fasync_helper(i32 %17, %struct.file* %18, i32 %19, i32* %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %16, %13
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.fuse_conn* @fuse_get_conn(%struct.file*) #1

declare dso_local i32 @fasync_helper(i32, %struct.file*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
