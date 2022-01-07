; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_map_user_iov.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_map_user_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.request_queue = type { i32 }
%struct.block_device = type { i32 }
%struct.sg_iovec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_map_user_iov(%struct.request_queue* %0, %struct.block_device* %1, %struct.sg_iovec* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca %struct.block_device*, align 8
  %10 = alloca %struct.sg_iovec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bio*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %8, align 8
  store %struct.block_device* %1, %struct.block_device** %9, align 8
  store %struct.sg_iovec* %2, %struct.sg_iovec** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %16 = load %struct.block_device*, %struct.block_device** %9, align 8
  %17 = load %struct.sg_iovec*, %struct.sg_iovec** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call %struct.bio* @__bio_map_user_iov(%struct.request_queue* %15, %struct.block_device* %16, %struct.sg_iovec* %17, i32 %18, i32 %19, i32 %20)
  store %struct.bio* %21, %struct.bio** %14, align 8
  %22 = load %struct.bio*, %struct.bio** %14, align 8
  %23 = call i64 @IS_ERR(%struct.bio* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load %struct.bio*, %struct.bio** %14, align 8
  store %struct.bio* %26, %struct.bio** %7, align 8
  br label %31

27:                                               ; preds = %6
  %28 = load %struct.bio*, %struct.bio** %14, align 8
  %29 = call i32 @bio_get(%struct.bio* %28)
  %30 = load %struct.bio*, %struct.bio** %14, align 8
  store %struct.bio* %30, %struct.bio** %7, align 8
  br label %31

31:                                               ; preds = %27, %25
  %32 = load %struct.bio*, %struct.bio** %7, align 8
  ret %struct.bio* %32
}

declare dso_local %struct.bio* @__bio_map_user_iov(%struct.request_queue*, %struct.block_device*, %struct.sg_iovec*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.bio*) #1

declare dso_local i32 @bio_get(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
