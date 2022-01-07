; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_do_balan.c_store_thrown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_do_balan.c_store_thrown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32, %struct.buffer_head** }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"reiserfs-12320\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"called with dirty buffer\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"reiserfs-12321\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"too many thrown buffers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.buffer_head*)* @store_thrown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_thrown(%struct.tree_balance* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.tree_balance*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %6 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %7 = call i64 @buffer_dirty(%struct.buffer_head* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %11 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @reiserfs_warning(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %9, %2
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %42, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %18 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %17, i32 0, i32 1
  %19 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.buffer_head** %19)
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %15
  %23 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %24 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %23, i32 0, i32 1
  %25 = load %struct.buffer_head**, %struct.buffer_head*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %25, i64 %27
  %29 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  %30 = icmp ne %struct.buffer_head* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %22
  %32 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %33 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %34 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %33, i32 0, i32 1
  %35 = load %struct.buffer_head**, %struct.buffer_head*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %35, i64 %37
  store %struct.buffer_head* %32, %struct.buffer_head** %38, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %40 = call i32 @get_bh(%struct.buffer_head* %39)
  br label %50

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %15

45:                                               ; preds = %15
  %46 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %47 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @reiserfs_warning(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %31
  ret void
}

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_warning(i32, i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.buffer_head**) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
