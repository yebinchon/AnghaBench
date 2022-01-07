; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.c_ubh_sync_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.c_ubh_sync_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_buffer_head = type { i32, i32* }

@WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubh_sync_block(%struct.ufs_buffer_head* %0) #0 {
  %2 = alloca %struct.ufs_buffer_head*, align 8
  %3 = alloca i32, align 4
  store %struct.ufs_buffer_head* %0, %struct.ufs_buffer_head** %2, align 8
  %4 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %2, align 8
  %5 = icmp ne %struct.ufs_buffer_head* %4, null
  br i1 %5, label %6, label %46

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %23, %6
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %2, align 8
  %10 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %2, align 8
  %15 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @WRITE, align 4
  %22 = call i32 @write_dirty_buffer(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %7

26:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %2, align 8
  %30 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %2, align 8
  %35 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wait_on_buffer(i32 %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %3, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %27

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45, %1
  ret void
}

declare dso_local i32 @write_dirty_buffer(i32, i32) #1

declare dso_local i32 @wait_on_buffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
