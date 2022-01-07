; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_map_kern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_map_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.request_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_map_kern(%struct.request_queue* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.bio* @__bio_map_kern(%struct.request_queue* %11, i8* %12, i32 %13, i32 %14)
  store %struct.bio* %15, %struct.bio** %10, align 8
  %16 = load %struct.bio*, %struct.bio** %10, align 8
  %17 = call i64 @IS_ERR(%struct.bio* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load %struct.bio*, %struct.bio** %10, align 8
  store %struct.bio* %20, %struct.bio** %5, align 8
  br label %35

21:                                               ; preds = %4
  %22 = load %struct.bio*, %struct.bio** %10, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load %struct.bio*, %struct.bio** %10, align 8
  store %struct.bio* %28, %struct.bio** %5, align 8
  br label %35

29:                                               ; preds = %21
  %30 = load %struct.bio*, %struct.bio** %10, align 8
  %31 = call i32 @bio_put(%struct.bio* %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.bio* @ERR_PTR(i32 %33)
  store %struct.bio* %34, %struct.bio** %5, align 8
  br label %35

35:                                               ; preds = %29, %27, %19
  %36 = load %struct.bio*, %struct.bio** %5, align 8
  ret %struct.bio* %36
}

declare dso_local %struct.bio* @__bio_map_kern(%struct.request_queue*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local %struct.bio* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
