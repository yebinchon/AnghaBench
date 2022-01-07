; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_put_reserved_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_put_reserved_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32, i32 }
%struct.fuse_req = type { i32, i32, i32, %struct.file* }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { %struct.fuse_req* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_req*)* @put_reserved_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_reserved_req(%struct.fuse_conn* %0, %struct.fuse_req* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_req*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.fuse_file*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %4, align 8
  %7 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %8 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %7, i32 0, i32 3
  %9 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %9, %struct.file** %5, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.fuse_file*, %struct.fuse_file** %11, align 8
  store %struct.fuse_file* %12, %struct.fuse_file** %6, align 8
  %13 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %14 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %17 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %18 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %21 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %24 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @fuse_request_init(%struct.fuse_req* %16, i32 %19, i32 %22, i32 %25)
  %27 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %28 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %27, i32 0, i32 0
  %29 = load %struct.fuse_req*, %struct.fuse_req** %28, align 8
  %30 = call i32 @BUG_ON(%struct.fuse_req* %29)
  %31 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %32 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %33 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %32, i32 0, i32 0
  store %struct.fuse_req* %31, %struct.fuse_req** %33, align 8
  %34 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %35 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %34, i32 0, i32 1
  %36 = call i32 @wake_up_all(i32* %35)
  %37 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %38 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = call i32 @fput(%struct.file* %40)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fuse_request_init(%struct.fuse_req*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(%struct.fuse_req*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
