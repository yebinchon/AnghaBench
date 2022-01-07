; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_do_balan.c_make_empty_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_do_balan.c_make_empty_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_info = type { i32, i64, i32* }
%struct.block_head = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"PAP-12295: pointer to the buffer is NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_empty_node(%struct.buffer_info* %0) #0 {
  %2 = alloca %struct.buffer_info*, align 8
  %3 = alloca %struct.block_head*, align 8
  store %struct.buffer_info* %0, %struct.buffer_info** %2, align 8
  %4 = load %struct.buffer_info*, %struct.buffer_info** %2, align 8
  %5 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @RFALSE(i32 %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.buffer_info*, %struct.buffer_info** %2, align 8
  %11 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = call %struct.block_head* @B_BLK_HEAD(i32* %12)
  store %struct.block_head* %13, %struct.block_head** %3, align 8
  %14 = load %struct.block_head*, %struct.block_head** %3, align 8
  %15 = call i32 @set_blkh_nr_item(%struct.block_head* %14, i32 0)
  %16 = load %struct.block_head*, %struct.block_head** %3, align 8
  %17 = load %struct.buffer_info*, %struct.buffer_info** %2, align 8
  %18 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @MAX_CHILD_SIZE(i32* %19)
  %21 = call i32 @set_blkh_free_space(%struct.block_head* %16, i32 %20)
  %22 = load %struct.buffer_info*, %struct.buffer_info** %2, align 8
  %23 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.buffer_info*, %struct.buffer_info** %2, align 8
  %28 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.buffer_info*, %struct.buffer_info** %2, align 8
  %31 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.TYPE_2__* @B_N_CHILD(i64 %29, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local %struct.block_head* @B_BLK_HEAD(i32*) #1

declare dso_local i32 @set_blkh_nr_item(%struct.block_head*, i32) #1

declare dso_local i32 @set_blkh_free_space(%struct.block_head*, i32) #1

declare dso_local i32 @MAX_CHILD_SIZE(i32*) #1

declare dso_local %struct.TYPE_2__* @B_N_CHILD(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
