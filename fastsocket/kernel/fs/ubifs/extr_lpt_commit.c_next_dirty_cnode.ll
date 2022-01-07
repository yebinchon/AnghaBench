; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_next_dirty_cnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_next_dirty_cnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_cnode = type { i32, i64, i32, %struct.ubifs_nnode* }
%struct.ubifs_nnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_cnode* }

@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@DIRTY_CNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_cnode* (%struct.ubifs_cnode*)* @next_dirty_cnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_cnode* @next_dirty_cnode(%struct.ubifs_cnode* %0) #0 {
  %2 = alloca %struct.ubifs_cnode*, align 8
  %3 = alloca %struct.ubifs_cnode*, align 8
  %4 = alloca %struct.ubifs_nnode*, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_cnode* %0, %struct.ubifs_cnode** %3, align 8
  %6 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %3, align 8
  %7 = call i32 @ubifs_assert(%struct.ubifs_cnode* %6)
  %8 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %3, align 8
  %9 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %8, i32 0, i32 3
  %10 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  store %struct.ubifs_nnode* %10, %struct.ubifs_nnode** %4, align 8
  %11 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %4, align 8
  %12 = icmp ne %struct.ubifs_nnode* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.ubifs_cnode* null, %struct.ubifs_cnode** %2, align 8
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %3, align 8
  %16 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %52, %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %4, align 8
  %25 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %30, align 8
  store %struct.ubifs_cnode* %31, %struct.ubifs_cnode** %3, align 8
  %32 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %3, align 8
  %33 = icmp ne %struct.ubifs_cnode* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %23
  %35 = load i32, i32* @DIRTY_CNODE, align 4
  %36 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %3, align 8
  %37 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %36, i32 0, i32 2
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %3, align 8
  %42 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %3, align 8
  store %struct.ubifs_cnode* %46, %struct.ubifs_cnode** %2, align 8
  br label %58

47:                                               ; preds = %40
  %48 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %3, align 8
  %49 = bitcast %struct.ubifs_cnode* %48 to %struct.ubifs_nnode*
  %50 = call %struct.ubifs_cnode* @first_dirty_cnode(%struct.ubifs_nnode* %49)
  store %struct.ubifs_cnode* %50, %struct.ubifs_cnode** %2, align 8
  br label %58

51:                                               ; preds = %34, %23
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %19

55:                                               ; preds = %19
  %56 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %4, align 8
  %57 = bitcast %struct.ubifs_nnode* %56 to %struct.ubifs_cnode*
  store %struct.ubifs_cnode* %57, %struct.ubifs_cnode** %2, align 8
  br label %58

58:                                               ; preds = %55, %47, %45, %13
  %59 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %2, align 8
  ret %struct.ubifs_cnode* %59
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_cnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.ubifs_cnode* @first_dirty_cnode(%struct.ubifs_nnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
