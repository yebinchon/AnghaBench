; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_clone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32 }

@fs_bio_set = common dso_local global i32 0, align 4
@bio_fs_destructor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_clone(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @fs_bio_set, align 4
  %13 = call %struct.bio* @bio_alloc_bioset(i32 %8, i32 %11, i32 %12)
  store %struct.bio* %13, %struct.bio** %6, align 8
  %14 = load %struct.bio*, %struct.bio** %6, align 8
  %15 = icmp ne %struct.bio* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.bio* null, %struct.bio** %3, align 8
  br label %41

17:                                               ; preds = %2
  %18 = load i32, i32* @bio_fs_destructor, align 4
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.bio*, %struct.bio** %6, align 8
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = call i32 @__bio_clone(%struct.bio* %21, %struct.bio* %22)
  %24 = load %struct.bio*, %struct.bio** %4, align 8
  %25 = call i64 @bio_integrity(%struct.bio* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %17
  %28 = load %struct.bio*, %struct.bio** %6, align 8
  %29 = load %struct.bio*, %struct.bio** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @fs_bio_set, align 4
  %32 = call i32 @bio_integrity_clone(%struct.bio* %28, %struct.bio* %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.bio*, %struct.bio** %6, align 8
  %37 = call i32 @bio_put(%struct.bio* %36)
  store %struct.bio* null, %struct.bio** %3, align 8
  br label %41

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %17
  %40 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %40, %struct.bio** %3, align 8
  br label %41

41:                                               ; preds = %39, %35, %16
  %42 = load %struct.bio*, %struct.bio** %3, align 8
  ret %struct.bio* %42
}

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i32, i32) #1

declare dso_local i32 @__bio_clone(%struct.bio*, %struct.bio*) #1

declare dso_local i64 @bio_integrity(%struct.bio*) #1

declare dso_local i32 @bio_integrity_clone(%struct.bio*, %struct.bio*, i32, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
