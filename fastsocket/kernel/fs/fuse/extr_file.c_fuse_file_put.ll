; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_file = type { i32, %struct.fuse_req*, i32 }
%struct.fuse_req = type { i32 }

@fuse_release_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_file*)* @fuse_file_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_file_put(%struct.fuse_file* %0) #0 {
  %2 = alloca %struct.fuse_file*, align 8
  %3 = alloca %struct.fuse_req*, align 8
  store %struct.fuse_file* %0, %struct.fuse_file** %2, align 8
  %4 = load %struct.fuse_file*, %struct.fuse_file** %2, align 8
  %5 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %4, i32 0, i32 2
  %6 = call i64 @atomic_dec_and_test(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.fuse_file*, %struct.fuse_file** %2, align 8
  %10 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %9, i32 0, i32 1
  %11 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  store %struct.fuse_req* %11, %struct.fuse_req** %3, align 8
  %12 = load i32, i32* @fuse_release_end, align 4
  %13 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %14 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.fuse_file*, %struct.fuse_file** %2, align 8
  %16 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %19 = call i32 @fuse_request_send_background(i32 %17, %struct.fuse_req* %18)
  %20 = load %struct.fuse_file*, %struct.fuse_file** %2, align 8
  %21 = call i32 @kfree(%struct.fuse_file* %20)
  br label %22

22:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @fuse_request_send_background(i32, %struct.fuse_req*) #1

declare dso_local i32 @kfree(%struct.fuse_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
