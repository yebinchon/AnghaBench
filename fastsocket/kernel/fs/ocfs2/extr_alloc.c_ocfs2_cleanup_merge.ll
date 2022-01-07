; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_cleanup_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_cleanup_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec* }
%struct.ocfs2_extent_rec = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_extent_list*, i32)* @ocfs2_cleanup_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_cleanup_merge(%struct.ocfs2_extent_list* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_extent_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_extent_rec*, align 8
  %6 = alloca i32, align 4
  store %struct.ocfs2_extent_list* %0, %struct.ocfs2_extent_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %7, i32 0, i32 0
  %9 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %9, i64 %11
  store %struct.ocfs2_extent_rec* %12, %struct.ocfs2_extent_rec** %5, align 8
  %13 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %5, align 8
  %14 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %22 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %21, i32 0, i32 0
  %23 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %24 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %23, i64 0
  %25 = call i32 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %24)
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %32 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %31, i32 0, i32 0
  %33 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %32, align 8
  %34 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %33, i64 1
  %35 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %36 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %35, i32 0, i32 0
  %37 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %36, align 8
  %38 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %37, i64 0
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @memmove(%struct.ocfs2_extent_rec* %34, %struct.ocfs2_extent_rec* %38, i32 %39)
  br label %41

41:                                               ; preds = %20, %17
  %42 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %43 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %42, i32 0, i32 0
  %44 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %43, align 8
  %45 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %44, i64 0
  %46 = call i32 @memset(%struct.ocfs2_extent_rec* %45, i32 0, i32 8)
  br label %47

47:                                               ; preds = %41, %2
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @memmove(%struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec*, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_extent_rec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
