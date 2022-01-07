; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_subtract_from_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_subtract_from_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32 }

@SPLIT_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32, %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec*)* @ocfs2_subtract_from_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_subtract_from_rec(%struct.super_block* %0, i32 %1, %struct.ocfs2_extent_rec* %2, %struct.ocfs2_extent_rec* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_extent_rec*, align 8
  %8 = alloca %struct.ocfs2_extent_rec*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ocfs2_extent_rec* %2, %struct.ocfs2_extent_rec** %7, align 8
  store %struct.ocfs2_extent_rec* %3, %struct.ocfs2_extent_rec** %8, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %12 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  %15 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %10, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SPLIT_LEFT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %4
  %20 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %21 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 2
  %22 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %23 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  %26 = call i32 @le32_add_cpu(i32* %21, i32 %25)
  %27 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %28 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %27, i32 0, i32 1
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @le64_add_cpu(i32* %28, i32 %29)
  %31 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %32 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %31, i32 0, i32 0
  %33 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %34 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  %37 = sub nsw i32 0, %36
  %38 = call i32 @le16_add_cpu(i32* %32, i32 %37)
  br label %48

39:                                               ; preds = %4
  %40 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %41 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %40, i32 0, i32 0
  %42 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %43 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = sub nsw i32 0, %45
  %47 = call i32 @le16_add_cpu(i32* %41, i32 %46)
  br label %48

48:                                               ; preds = %39, %19
  ret void
}

declare dso_local i32 @ocfs2_clusters_to_blocks(%struct.super_block*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
