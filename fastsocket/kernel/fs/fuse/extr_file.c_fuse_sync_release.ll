; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_sync_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_sync_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_file = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@FUSE_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_sync_release(%struct.fuse_file* %0, i32 %1) #0 {
  %3 = alloca %struct.fuse_file*, align 8
  %4 = alloca i32, align 4
  store %struct.fuse_file* %0, %struct.fuse_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.fuse_file*, %struct.fuse_file** %3, align 8
  %6 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %5, i32 0, i32 2
  %7 = call i32 @atomic_read(i32* %6)
  %8 = icmp sgt i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.fuse_file*, %struct.fuse_file** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @FUSE_RELEASE, align 4
  %14 = call i32 @fuse_prepare_release(%struct.fuse_file* %11, i32 %12, i32 %13)
  %15 = load %struct.fuse_file*, %struct.fuse_file** %3, align 8
  %16 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.fuse_file*, %struct.fuse_file** %3, align 8
  %20 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.fuse_file*, %struct.fuse_file** %3, align 8
  %23 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i32 @fuse_request_send(i32 %21, %struct.TYPE_3__* %24)
  %26 = load %struct.fuse_file*, %struct.fuse_file** %3, align 8
  %27 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.fuse_file*, %struct.fuse_file** %3, align 8
  %30 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i32 @fuse_put_request(i32 %28, %struct.TYPE_3__* %31)
  %33 = load %struct.fuse_file*, %struct.fuse_file** %3, align 8
  %34 = call i32 @kfree(%struct.fuse_file* %33)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @fuse_prepare_release(%struct.fuse_file*, i32, i32) #1

declare dso_local i32 @fuse_request_send(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @fuse_put_request(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.fuse_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
