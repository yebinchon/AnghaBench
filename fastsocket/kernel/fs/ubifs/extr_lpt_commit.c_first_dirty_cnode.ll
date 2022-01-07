; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_first_dirty_cnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_first_dirty_cnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_cnode = type { i64, i32 }
%struct.ubifs_nnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_cnode* }

@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@DIRTY_CNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_cnode* (%struct.ubifs_nnode*)* @first_dirty_cnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_cnode* @first_dirty_cnode(%struct.ubifs_nnode* %0) #0 {
  %2 = alloca %struct.ubifs_cnode*, align 8
  %3 = alloca %struct.ubifs_nnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_cnode*, align 8
  store %struct.ubifs_nnode* %0, %struct.ubifs_nnode** %3, align 8
  %7 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %3, align 8
  %8 = call i32 @ubifs_assert(%struct.ubifs_nnode* %7)
  br label %9

9:                                                ; preds = %1, %51
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %42, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %10
  %15 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %3, align 8
  %16 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %21, align 8
  store %struct.ubifs_cnode* %22, %struct.ubifs_cnode** %6, align 8
  %23 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %6, align 8
  %24 = icmp ne %struct.ubifs_cnode* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %14
  %26 = load i32, i32* @DIRTY_CNODE, align 4
  %27 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %6, align 8
  %28 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %27, i32 0, i32 1
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %6, align 8
  %33 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %6, align 8
  store %struct.ubifs_cnode* %37, %struct.ubifs_cnode** %2, align 8
  br label %52

38:                                               ; preds = %31
  %39 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %6, align 8
  %40 = bitcast %struct.ubifs_cnode* %39 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %40, %struct.ubifs_nnode** %3, align 8
  store i32 1, i32* %5, align 4
  br label %45

41:                                               ; preds = %25, %14
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %10

45:                                               ; preds = %38, %10
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %3, align 8
  %50 = bitcast %struct.ubifs_nnode* %49 to %struct.ubifs_cnode*
  store %struct.ubifs_cnode* %50, %struct.ubifs_cnode** %2, align 8
  br label %52

51:                                               ; preds = %45
  br label %9

52:                                               ; preds = %48, %36
  %53 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %2, align 8
  ret %struct.ubifs_cnode* %53
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_nnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
