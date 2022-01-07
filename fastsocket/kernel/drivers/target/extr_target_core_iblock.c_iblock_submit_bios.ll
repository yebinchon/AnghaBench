; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_submit_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_submit_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_list = type { i32 }
%struct.bio = type { i32 }
%struct.request_queue = type { i32 (%struct.request_queue*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio_list*, i32)* @iblock_submit_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iblock_submit_bios(%struct.bio_list* %0, i32 %1) #0 {
  %3 = alloca %struct.bio_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.request_queue*, align 8
  store %struct.bio_list* %0, %struct.bio_list** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.request_queue* null, %struct.request_queue** %6, align 8
  br label %7

7:                                                ; preds = %11, %2
  %8 = load %struct.bio_list*, %struct.bio_list** %3, align 8
  %9 = call %struct.bio* @bio_list_pop(%struct.bio_list* %8)
  store %struct.bio* %9, %struct.bio** %5, align 8
  %10 = icmp ne %struct.bio* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.bio*, %struct.bio** %5, align 8
  %14 = call i32 @submit_bio(i32 %12, %struct.bio* %13)
  %15 = load %struct.bio*, %struct.bio** %5, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.request_queue* @bdev_get_queue(i32 %17)
  store %struct.request_queue* %18, %struct.request_queue** %6, align 8
  br label %7

19:                                               ; preds = %7
  %20 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %21 = icmp ne %struct.request_queue* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 0
  %25 = load i32 (%struct.request_queue*)*, i32 (%struct.request_queue*)** %24, align 8
  %26 = icmp ne i32 (%struct.request_queue*)* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %29 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %28, i32 0, i32 0
  %30 = load i32 (%struct.request_queue*)*, i32 (%struct.request_queue*)** %29, align 8
  %31 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %32 = call i32 %30(%struct.request_queue* %31)
  br label %33

33:                                               ; preds = %27, %22, %19
  ret void
}

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @submit_bio(i32, %struct.bio*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
