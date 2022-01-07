; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_bread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }

@READ_META = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @ext3_bread(i32* %0, %struct.inode* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = call %struct.buffer_head* @ext3_getblk(i32* %13, %struct.inode* %14, i32 %15, i32 %16, i32* %17)
  store %struct.buffer_head* %18, %struct.buffer_head** %12, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %20 = icmp ne %struct.buffer_head* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %22, %struct.buffer_head** %6, align 8
  br label %45

23:                                               ; preds = %5
  %24 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %25 = call i64 @buffer_uptodate(%struct.buffer_head* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %28, %struct.buffer_head** %6, align 8
  br label %45

29:                                               ; preds = %23
  %30 = load i32, i32* @READ_META, align 4
  %31 = call i32 @ll_rw_block(i32 %30, i32 1, %struct.buffer_head** %12)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %33 = call i32 @wait_on_buffer(%struct.buffer_head* %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %35 = call i64 @buffer_uptodate(%struct.buffer_head* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %38, %struct.buffer_head** %6, align 8
  br label %45

39:                                               ; preds = %29
  %40 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %41 = call i32 @put_bh(%struct.buffer_head* %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  br label %45

45:                                               ; preds = %39, %37, %27, %21
  %46 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  ret %struct.buffer_head* %46
}

declare dso_local %struct.buffer_head* @ext3_getblk(i32*, %struct.inode*, i32, i32, i32*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
