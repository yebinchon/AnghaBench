; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_page_add_databufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_page_add_databufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_inode*, %struct.page*, i32, i32)* @gfs2_page_add_databufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_page_add_databufs(%struct.gfs2_inode* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.page*, %struct.page** %6, align 8
  %15 = call %struct.buffer_head* @page_buffers(%struct.page* %14)
  store %struct.buffer_head* %15, %struct.buffer_head** %9, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %19, %struct.buffer_head** %11, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %55, %4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %23 = icmp ne %struct.buffer_head* %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ true, %20 ], [ %27, %24 ]
  br i1 %29, label %30, label %60

30:                                               ; preds = %28
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add i32 %31, %32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ule i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %30
  br label %55

42:                                               ; preds = %37
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %44 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %48 = call i32 @set_buffer_uptodate(%struct.buffer_head* %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %51 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %54 = call i32 @gfs2_trans_add_data(i32 %52, %struct.buffer_head* %53)
  br label %55

55:                                               ; preds = %49, %41
  %56 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 1
  %58 = load %struct.buffer_head*, %struct.buffer_head** %57, align 8
  store %struct.buffer_head* %58, %struct.buffer_head** %11, align 8
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %12, align 4
  br label %20

60:                                               ; preds = %28
  ret void
}

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_add_data(i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
