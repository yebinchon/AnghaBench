; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_reset_segment_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_reset_segment_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.nilfs_segment_buffer* }
%struct.TYPE_6__ = type { i32, %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.buffer_head* }
%struct.nilfs_segment_buffer = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@NILFS_SS_GC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*)* @nilfs_segctor_reset_segment_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_reset_segment_buffer(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca %struct.nilfs_segment_buffer*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  %9 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %10 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %9, i32 0, i32 5
  %11 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %10, align 8
  store %struct.nilfs_segment_buffer* %11, %struct.nilfs_segment_buffer** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = call i64 (...) @nilfs_doing_gc()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @NILFS_SS_GC, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %20 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @nilfs_segbuf_reset(%struct.nilfs_segment_buffer* %17, i32 %18, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %56

28:                                               ; preds = %16
  %29 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %29, i32 0, i32 1
  %31 = call %struct.buffer_head* @NILFS_SEGBUF_FIRST_BH(i32* %30)
  store %struct.buffer_head* %31, %struct.buffer_head** %5, align 8
  %32 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %37 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %38 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store %struct.buffer_head* %36, %struct.buffer_head** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %42 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %45 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %46 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store %struct.buffer_head* %44, %struct.buffer_head** %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %50 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %53 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %55 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %28, %26
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @nilfs_doing_gc(...) #1

declare dso_local i32 @nilfs_segbuf_reset(%struct.nilfs_segment_buffer*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.buffer_head* @NILFS_SEGBUF_FIRST_BH(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
