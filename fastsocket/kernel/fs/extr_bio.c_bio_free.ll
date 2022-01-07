; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.bio_set = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bio_free(%struct.bio* %0, %struct.bio_set* %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.bio_set*, align 8
  %5 = alloca i8*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store %struct.bio_set* %1, %struct.bio_set** %4, align 8
  %6 = load %struct.bio*, %struct.bio** %3, align 8
  %7 = call i64 @bio_has_allocated_vec(%struct.bio* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %11 = load %struct.bio*, %struct.bio** %3, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bio*, %struct.bio** %3, align 8
  %15 = call i32 @BIO_POOL_IDX(%struct.bio* %14)
  %16 = call i32 @bvec_free_bs(%struct.bio_set* %10, i32 %13, i32 %15)
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.bio*, %struct.bio** %3, align 8
  %19 = call i64 @bio_integrity(%struct.bio* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.bio*, %struct.bio** %3, align 8
  %23 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %24 = call i32 @bio_integrity_free(%struct.bio* %22, %struct.bio_set* %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.bio*, %struct.bio** %3, align 8
  %27 = bitcast %struct.bio* %26 to i8*
  store i8* %27, i8** %5, align 8
  %28 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %29 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %34 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = sub i64 0, %35
  %38 = getelementptr i8, i8* %36, i64 %37
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %42 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @mempool_free(i8* %40, i32 %43)
  ret void
}

declare dso_local i64 @bio_has_allocated_vec(%struct.bio*) #1

declare dso_local i32 @bvec_free_bs(%struct.bio_set*, i32, i32) #1

declare dso_local i32 @BIO_POOL_IDX(%struct.bio*) #1

declare dso_local i64 @bio_integrity(%struct.bio*) #1

declare dso_local i32 @bio_integrity_free(%struct.bio*, %struct.bio_set*) #1

declare dso_local i32 @mempool_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
