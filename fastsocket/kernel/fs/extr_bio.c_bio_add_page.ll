; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_add_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_add_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.page = type { i32 }
%struct.request_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bio_add_page(%struct.bio* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.request_queue*, align 8
  store %struct.bio* %0, %struct.bio** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.bio*, %struct.bio** %5, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.request_queue* @bdev_get_queue(i32 %12)
  store %struct.request_queue* %13, %struct.request_queue** %9, align 8
  %14 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %15 = load %struct.bio*, %struct.bio** %5, align 8
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %20 = call i32 @queue_max_sectors(%struct.request_queue* %19)
  %21 = call i32 @__bio_add_page(%struct.request_queue* %14, %struct.bio* %15, %struct.page* %16, i32 %17, i32 %18, i32 %20)
  ret i32 %21
}

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @__bio_add_page(%struct.request_queue*, %struct.bio*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @queue_max_sectors(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
