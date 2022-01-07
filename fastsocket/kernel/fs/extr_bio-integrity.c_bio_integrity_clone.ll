; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bio_integrity_clone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bio_integrity_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.bio_integrity_payload* }
%struct.bio_integrity_payload = type { i32, i32, i32, i32 }
%struct.bio_set = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bio_integrity_clone(%struct.bio* %0, %struct.bio* %1, i32 %2, %struct.bio_set* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio_set*, align 8
  %10 = alloca %struct.bio_integrity_payload*, align 8
  %11 = alloca %struct.bio_integrity_payload*, align 8
  store %struct.bio* %0, %struct.bio** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.bio_set* %3, %struct.bio_set** %9, align 8
  %12 = load %struct.bio*, %struct.bio** %7, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %13, align 8
  store %struct.bio_integrity_payload* %14, %struct.bio_integrity_payload** %10, align 8
  %15 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %10, align 8
  %16 = icmp eq %struct.bio_integrity_payload* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %10, align 8
  %22 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bio_set*, %struct.bio_set** %9, align 8
  %25 = call %struct.bio_integrity_payload* @bio_integrity_alloc_bioset(%struct.bio* %19, i32 %20, i32 %23, %struct.bio_set* %24)
  store %struct.bio_integrity_payload* %25, %struct.bio_integrity_payload** %11, align 8
  %26 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %11, align 8
  %27 = icmp eq %struct.bio_integrity_payload* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %60

31:                                               ; preds = %4
  %32 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %11, align 8
  %33 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %10, align 8
  %36 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %10, align 8
  %39 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memcpy(i32 %34, i32 %37, i32 %43)
  %45 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %10, align 8
  %46 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %11, align 8
  %49 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %10, align 8
  %51 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %11, align 8
  %54 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %10, align 8
  %56 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %11, align 8
  %59 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %31, %28
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.bio_integrity_payload* @bio_integrity_alloc_bioset(%struct.bio*, i32, i32, %struct.bio_set*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
