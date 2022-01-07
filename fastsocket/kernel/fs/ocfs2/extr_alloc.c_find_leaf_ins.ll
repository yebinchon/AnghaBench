; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_find_leaf_ins.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_find_leaf_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.buffer_head*)* @find_leaf_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_leaf_ins(i8* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.ocfs2_extent_block*, align 8
  %6 = alloca %struct.ocfs2_extent_list*, align 8
  %7 = alloca %struct.buffer_head**, align 8
  store i8* %0, i8** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %11, %struct.ocfs2_extent_block** %5, align 8
  %12 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %5, align 8
  %13 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %12, i32 0, i32 0
  store %struct.ocfs2_extent_list* %13, %struct.ocfs2_extent_list** %6, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.buffer_head**
  store %struct.buffer_head** %15, %struct.buffer_head*** %7, align 8
  %16 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %6, align 8
  %17 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le16_to_cpu(i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %23 = call i32 @get_bh(%struct.buffer_head* %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %25 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %24, %struct.buffer_head** %25, align 8
  br label %26

26:                                               ; preds = %21, %2
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
