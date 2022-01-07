; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_leftmost_rec_contains.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_leftmost_rec_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.ocfs2_extent_rec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_extent_list*, i32)* @ocfs2_leftmost_rec_contains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_leftmost_rec_contains(%struct.ocfs2_extent_list* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_extent_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_extent_rec*, align 8
  store %struct.ocfs2_extent_list* %0, %struct.ocfs2_extent_list** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %4, align 8
  %10 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

16:                                               ; preds = %2
  %17 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %4, align 8
  %18 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %17, i32 0, i32 0
  %19 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %19, i64 0
  store %struct.ocfs2_extent_rec* %20, %struct.ocfs2_extent_rec** %8, align 8
  %21 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %22 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %54

28:                                               ; preds = %24
  %29 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %4, align 8
  %30 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %29, i32 0, i32 0
  %31 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %30, align 8
  %32 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %31, i64 1
  store %struct.ocfs2_extent_rec* %32, %struct.ocfs2_extent_rec** %8, align 8
  br label %33

33:                                               ; preds = %28, %16
  %34 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %35 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %4, align 8
  %39 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %40 = call i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %38, %struct.ocfs2_extent_rec* %39)
  %41 = add i32 %37, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %44 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = icmp uge i32 %42, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %54

53:                                               ; preds = %48, %33
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %52, %27, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
