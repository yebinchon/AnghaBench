; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_feed_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_feed_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*)* @nilfs_segctor_feed_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_feed_segment(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nilfs_sc_info*, align 8
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  %4 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %5 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %11 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %9
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %17 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %20 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %19, i32 0, i32 1
  %21 = call i64 @NILFS_SEGBUF_IS_LAST(%struct.TYPE_6__* %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @E2BIG, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %35

26:                                               ; preds = %1
  %27 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %28 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = call %struct.TYPE_6__* @NILFS_NEXT_SEGBUF(%struct.TYPE_6__* %29)
  %31 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %32 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %31, i32 0, i32 0
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %34 = call i32 @nilfs_segctor_reset_segment_buffer(%struct.nilfs_sc_info* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %26, %23
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @NILFS_SEGBUF_IS_LAST(%struct.TYPE_6__*, i32*) #1

declare dso_local %struct.TYPE_6__* @NILFS_NEXT_SEGBUF(%struct.TYPE_6__*) #1

declare dso_local i32 @nilfs_segctor_reset_segment_buffer(%struct.nilfs_sc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
