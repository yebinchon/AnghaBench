; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_clear_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_clear_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"call ext3_journal_dirty_metadata\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"retaking write access\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.inode*, %struct.buffer_head*, i32, i64, i64*, i64*)* @ext3_clear_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext3_clear_blocks(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i32 %3, i64 %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = call i64 @try_to_extend_transaction(i32* %18, %struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %7
  %23 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %24 = icmp ne %struct.buffer_head* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %27 = call i32 @BUFFER_TRACE(%struct.buffer_head* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %30 = call i32 @ext3_journal_dirty_metadata(i32* %28, %struct.buffer_head* %29)
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = call i32 @ext3_mark_inode_dirty(i32* %32, %struct.inode* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = call i32 @truncate_restart_transaction(i32* %35, %struct.inode* %36)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %39 = icmp ne %struct.buffer_head* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %42 = call i32 @BUFFER_TRACE(%struct.buffer_head* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %45 = call i32 @ext3_journal_get_write_access(i32* %43, %struct.buffer_head* %44)
  br label %46

46:                                               ; preds = %40, %31
  br label %47

47:                                               ; preds = %46, %7
  %48 = load i64*, i64** %13, align 8
  store i64* %48, i64** %15, align 8
  br label %49

49:                                               ; preds = %72, %47
  %50 = load i64*, i64** %15, align 8
  %51 = load i64*, i64** %14, align 8
  %52 = icmp ult i64* %50, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = load i64*, i64** %15, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @le32_to_cpu(i64 %55)
  store i64 %56, i64* %16, align 8
  %57 = load i64, i64* %16, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load i64*, i64** %15, align 8
  store i64 0, i64* %60, align 8
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %16, align 8
  %65 = call %struct.buffer_head* @sb_find_get_block(i32 %63, i64 %64)
  store %struct.buffer_head* %65, %struct.buffer_head** %17, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %69 = load i64, i64* %16, align 8
  %70 = call i32 @ext3_forget(i32* %66, i32 0, %struct.inode* %67, %struct.buffer_head* %68, i64 %69)
  br label %71

71:                                               ; preds = %59, %53
  br label %72

72:                                               ; preds = %71
  %73 = load i64*, i64** %15, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %15, align 8
  br label %49

75:                                               ; preds = %49
  %76 = load i32*, i32** %8, align 8
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @ext3_free_blocks(i32* %76, %struct.inode* %77, i32 %78, i64 %79)
  ret void
}

declare dso_local i64 @try_to_extend_transaction(i32*, %struct.inode*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext3_journal_dirty_metadata(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext3_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @truncate_restart_transaction(i32*, %struct.inode*) #1

declare dso_local i32 @ext3_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local %struct.buffer_head* @sb_find_get_block(i32, i64) #1

declare dso_local i32 @ext3_forget(i32*, i32, %struct.inode*, %struct.buffer_head*, i64) #1

declare dso_local i32 @ext3_free_blocks(i32*, %struct.inode*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
