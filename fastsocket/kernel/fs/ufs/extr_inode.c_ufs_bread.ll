; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs_bread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ENTER, ino %lu, fragment %u\0A\00", align 1
@READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @ufs_bread(%struct.inode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @UFSD(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = call %struct.buffer_head* @ufs_getfrag(%struct.inode* %16, i32 %17, i32 %18, i32* %19)
  store %struct.buffer_head* %20, %struct.buffer_head** %10, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %22 = icmp ne %struct.buffer_head* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %25 = call i64 @buffer_uptodate(%struct.buffer_head* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %4
  %28 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %28, %struct.buffer_head** %5, align 8
  br label %45

29:                                               ; preds = %23
  %30 = load i32, i32* @READ, align 4
  %31 = call i32 @ll_rw_block(i32 %30, i32 1, %struct.buffer_head** %10)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %33 = call i32 @wait_on_buffer(%struct.buffer_head* %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %35 = call i64 @buffer_uptodate(%struct.buffer_head* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %38, %struct.buffer_head** %5, align 8
  br label %45

39:                                               ; preds = %29
  %40 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %41 = call i32 @brelse(%struct.buffer_head* %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %45

45:                                               ; preds = %39, %37, %27
  %46 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %46
}

declare dso_local i32 @UFSD(i8*, i32, i32) #1

declare dso_local %struct.buffer_head* @ufs_getfrag(%struct.inode*, i32, i32, i32*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
