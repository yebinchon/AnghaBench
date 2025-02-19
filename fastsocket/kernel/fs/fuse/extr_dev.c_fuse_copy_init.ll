; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_copy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_copy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_copy_state = type { i32, i64, %struct.iovec*, %struct.fuse_req*, %struct.fuse_conn* }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { i32 }
%struct.iovec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_copy_state*, %struct.fuse_conn*, i32, %struct.fuse_req*, %struct.iovec*, i64)* @fuse_copy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_copy_init(%struct.fuse_copy_state* %0, %struct.fuse_conn* %1, i32 %2, %struct.fuse_req* %3, %struct.iovec* %4, i64 %5) #0 {
  %7 = alloca %struct.fuse_copy_state*, align 8
  %8 = alloca %struct.fuse_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fuse_req*, align 8
  %11 = alloca %struct.iovec*, align 8
  %12 = alloca i64, align 8
  store %struct.fuse_copy_state* %0, %struct.fuse_copy_state** %7, align 8
  store %struct.fuse_conn* %1, %struct.fuse_conn** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.fuse_req* %3, %struct.fuse_req** %10, align 8
  store %struct.iovec* %4, %struct.iovec** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %14 = call i32 @memset(%struct.fuse_copy_state* %13, i32 0, i32 40)
  %15 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %16 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %17 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %16, i32 0, i32 4
  store %struct.fuse_conn* %15, %struct.fuse_conn** %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %20 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %22 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %23 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %22, i32 0, i32 3
  store %struct.fuse_req* %21, %struct.fuse_req** %23, align 8
  %24 = load %struct.iovec*, %struct.iovec** %11, align 8
  %25 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %26 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %25, i32 0, i32 2
  store %struct.iovec* %24, %struct.iovec** %26, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %29 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  ret void
}

declare dso_local i32 @memset(%struct.fuse_copy_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
