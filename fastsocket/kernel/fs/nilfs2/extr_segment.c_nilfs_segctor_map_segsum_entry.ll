; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_map_segsum_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_map_segsum_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { %struct.TYPE_5__*, %struct.nilfs_segment_buffer* }
%struct.TYPE_5__ = type { i32 }
%struct.nilfs_segment_buffer = type { i32 }
%struct.nilfs_segsum_pointer = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nilfs_sc_info*, %struct.nilfs_segsum_pointer*, i32)* @nilfs_segctor_map_segsum_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nilfs_segctor_map_segsum_entry(%struct.nilfs_sc_info* %0, %struct.nilfs_segsum_pointer* %1, i32 %2) #0 {
  %4 = alloca %struct.nilfs_sc_info*, align 8
  %5 = alloca %struct.nilfs_segsum_pointer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nilfs_segment_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %4, align 8
  store %struct.nilfs_segsum_pointer* %1, %struct.nilfs_segsum_pointer** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %11 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %10, i32 0, i32 1
  %12 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %11, align 8
  store %struct.nilfs_segment_buffer* %12, %struct.nilfs_segment_buffer** %7, align 8
  %13 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %14 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.nilfs_segsum_pointer*, %struct.nilfs_segsum_pointer** %5, align 8
  %19 = getelementptr inbounds %struct.nilfs_segsum_pointer, %struct.nilfs_segsum_pointer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp ugt i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %3
  %29 = load %struct.nilfs_segsum_pointer*, %struct.nilfs_segsum_pointer** %5, align 8
  %30 = getelementptr inbounds %struct.nilfs_segsum_pointer, %struct.nilfs_segsum_pointer* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.nilfs_segsum_pointer*, %struct.nilfs_segsum_pointer** %5, align 8
  %32 = getelementptr inbounds %struct.nilfs_segsum_pointer, %struct.nilfs_segsum_pointer* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %7, align 8
  %35 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %34, i32 0, i32 0
  %36 = call i32 @NILFS_SEGBUF_BH_IS_LAST(%struct.TYPE_6__* %33, i32* %35)
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.nilfs_segsum_pointer*, %struct.nilfs_segsum_pointer** %5, align 8
  %39 = getelementptr inbounds %struct.nilfs_segsum_pointer, %struct.nilfs_segsum_pointer* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = call %struct.TYPE_6__* @NILFS_SEGBUF_NEXT_BH(%struct.TYPE_6__* %40)
  %42 = load %struct.nilfs_segsum_pointer*, %struct.nilfs_segsum_pointer** %5, align 8
  %43 = getelementptr inbounds %struct.nilfs_segsum_pointer, %struct.nilfs_segsum_pointer* %42, i32 0, i32 1
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %43, align 8
  br label %44

44:                                               ; preds = %28, %3
  %45 = load %struct.nilfs_segsum_pointer*, %struct.nilfs_segsum_pointer** %5, align 8
  %46 = getelementptr inbounds %struct.nilfs_segsum_pointer, %struct.nilfs_segsum_pointer* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.nilfs_segsum_pointer*, %struct.nilfs_segsum_pointer** %5, align 8
  %51 = getelementptr inbounds %struct.nilfs_segsum_pointer, %struct.nilfs_segsum_pointer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = zext i32 %52 to i64
  %54 = getelementptr i8, i8* %49, i64 %53
  store i8* %54, i8** %9, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.nilfs_segsum_pointer*, %struct.nilfs_segsum_pointer** %5, align 8
  %57 = getelementptr inbounds %struct.nilfs_segsum_pointer, %struct.nilfs_segsum_pointer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i8*, i8** %9, align 8
  ret i8* %60
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @NILFS_SEGBUF_BH_IS_LAST(%struct.TYPE_6__*, i32*) #1

declare dso_local %struct.TYPE_6__* @NILFS_SEGBUF_NEXT_BH(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
