; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_get_reserved_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_get_reserved_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_req = type { %struct.file* }
%struct.fuse_conn = type { i32, i32 }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { %struct.fuse_req* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fuse_req* (%struct.fuse_conn*, %struct.file*)* @get_reserved_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fuse_req* @get_reserved_req(%struct.fuse_conn* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.fuse_req*, align 8
  %6 = alloca %struct.fuse_file*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store %struct.fuse_req* null, %struct.fuse_req** %5, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.fuse_file*, %struct.fuse_file** %8, align 8
  store %struct.fuse_file* %9, %struct.fuse_file** %6, align 8
  br label %10

10:                                               ; preds = %40, %2
  %11 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %12 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %15 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %14, i32 0, i32 0
  %16 = load %struct.fuse_req*, %struct.fuse_req** %15, align 8
  %17 = call i32 @wait_event(i32 %13, %struct.fuse_req* %16)
  %18 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %19 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %22 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %21, i32 0, i32 0
  %23 = load %struct.fuse_req*, %struct.fuse_req** %22, align 8
  %24 = icmp ne %struct.fuse_req* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %10
  %26 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %27 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %26, i32 0, i32 0
  %28 = load %struct.fuse_req*, %struct.fuse_req** %27, align 8
  store %struct.fuse_req* %28, %struct.fuse_req** %5, align 8
  %29 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %30 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %29, i32 0, i32 0
  store %struct.fuse_req* null, %struct.fuse_req** %30, align 8
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = call i32 @get_file(%struct.file* %31)
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %35 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %34, i32 0, i32 0
  store %struct.file* %33, %struct.file** %35, align 8
  br label %36

36:                                               ; preds = %25, %10
  %37 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %38 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  br label %40

40:                                               ; preds = %36
  %41 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %42 = icmp ne %struct.fuse_req* %41, null
  %43 = xor i1 %42, true
  br i1 %43, label %10, label %44

44:                                               ; preds = %40
  %45 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  ret %struct.fuse_req* %45
}

declare dso_local i32 @wait_event(i32, %struct.fuse_req*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_file(%struct.file*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
