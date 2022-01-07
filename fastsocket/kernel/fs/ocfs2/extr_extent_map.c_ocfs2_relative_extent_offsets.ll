; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_extent_map.c_ocfs2_relative_extent_offsets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_extent_map.c_ocfs2_relative_extent_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i64, %struct.ocfs2_extent_rec*, i64*, i64*)* @ocfs2_relative_extent_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_relative_extent_offsets(%struct.super_block* %0, i64 %1, %struct.ocfs2_extent_rec* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ocfs2_extent_rec*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ocfs2_extent_rec* %2, %struct.ocfs2_extent_rec** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %14 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @le32_to_cpu(i32 %15)
  %17 = sub nsw i64 %12, %16
  store i64 %17, i64* %11, align 8
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le64_to_cpu(i32 %21)
  %23 = call i64 @ocfs2_blocks_to_clusters(%struct.super_block* %18, i32 %22)
  %24 = load i64*, i64** %9, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %11, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64*, i64** %9, align 8
  store i64 %28, i64* %29, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %5
  %33 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %34 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le16_to_cpu(i32 %35)
  %37 = load i64, i64* %11, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load i64*, i64** %10, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %32, %5
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_blocks_to_clusters(%struct.super_block*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
