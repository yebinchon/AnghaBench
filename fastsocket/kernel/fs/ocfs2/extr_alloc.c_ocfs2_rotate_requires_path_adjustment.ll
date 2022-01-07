; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_rotate_requires_path_adjustment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_rotate_requires_path_adjustment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_path = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.ocfs2_extent_rec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_path*, i64)* @ocfs2_rotate_requires_path_adjustment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_rotate_requires_path_adjustment(%struct.ocfs2_path* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_path*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ocfs2_extent_list*, align 8
  %7 = alloca %struct.ocfs2_extent_rec*, align 8
  %8 = alloca i32, align 4
  store %struct.ocfs2_path* %0, %struct.ocfs2_path** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ocfs2_path*, %struct.ocfs2_path** %4, align 8
  %10 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %9)
  store %struct.ocfs2_extent_list* %10, %struct.ocfs2_extent_list** %6, align 8
  %11 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %6, align 8
  %12 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %15, i32 0, i32 0
  %17 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %17, i64 %20
  store %struct.ocfs2_extent_rec* %21, %struct.ocfs2_extent_rec** %7, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %24 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le32_to_cpu(i32 %25)
  %27 = icmp sgt i64 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
