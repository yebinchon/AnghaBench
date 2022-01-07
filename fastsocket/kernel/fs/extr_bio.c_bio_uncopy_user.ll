; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_uncopy_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_uncopy_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.bio_map_data* }
%struct.bio_map_data = type { i32, i32, i32, i32 }

@BIO_NULL_MAPPED = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bio_uncopy_user(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio_map_data*, align 8
  %4 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 0
  %7 = load %struct.bio_map_data*, %struct.bio_map_data** %6, align 8
  store %struct.bio_map_data* %7, %struct.bio_map_data** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = load i32, i32* @BIO_NULL_MAPPED, align 4
  %10 = call i32 @bio_flagged(%struct.bio* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %1
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = load %struct.bio_map_data*, %struct.bio_map_data** %3, align 8
  %15 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bio_map_data*, %struct.bio_map_data** %3, align 8
  %18 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bio_map_data*, %struct.bio_map_data** %3, align 8
  %21 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bio*, %struct.bio** %2, align 8
  %24 = call i64 @bio_data_dir(%struct.bio* %23)
  %25 = load i64, i64* @READ, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load %struct.bio_map_data*, %struct.bio_map_data** %3, align 8
  %29 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__bio_copy_iov(%struct.bio* %13, i32 %16, i32 %19, i32 %22, i32 %27, i32 0, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %12, %1
  %33 = load %struct.bio_map_data*, %struct.bio_map_data** %3, align 8
  %34 = call i32 @bio_free_map_data(%struct.bio_map_data* %33)
  %35 = load %struct.bio*, %struct.bio** %2, align 8
  %36 = call i32 @bio_put(%struct.bio* %35)
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @__bio_copy_iov(%struct.bio*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @bio_free_map_data(%struct.bio_map_data*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
