; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_do_make_pnode_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_do_make_pnode_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_pnode = type { %struct.ubifs_nnode*, i32 }
%struct.ubifs_nnode = type { %struct.ubifs_nnode*, i32 }

@DIRTY_CNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %struct.ubifs_pnode*)* @do_make_pnode_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_make_pnode_dirty(%struct.ubifs_info* %0, %struct.ubifs_pnode* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_pnode*, align 8
  %5 = alloca %struct.ubifs_nnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_pnode* %1, %struct.ubifs_pnode** %4, align 8
  %6 = load i32, i32* @DIRTY_CNODE, align 4
  %7 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %4, align 8
  %8 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %7, i32 0, i32 1
  %9 = call i32 @test_and_set_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %2
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %17 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %4, align 8
  %18 = call i32 @add_pnode_dirt(%struct.ubifs_info* %16, %struct.ubifs_pnode* %17)
  %19 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %4, align 8
  %20 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %19, i32 0, i32 0
  %21 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %20, align 8
  store %struct.ubifs_nnode* %21, %struct.ubifs_nnode** %5, align 8
  br label %22

22:                                               ; preds = %43, %11
  %23 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %24 = icmp ne %struct.ubifs_nnode* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load i32, i32* @DIRTY_CNODE, align 4
  %27 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %28 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %27, i32 0, i32 1
  %29 = call i32 @test_and_set_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %25
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %37 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %38 = call i32 @ubifs_add_nnode_dirt(%struct.ubifs_info* %36, %struct.ubifs_nnode* %37)
  %39 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %40 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %39, i32 0, i32 0
  %41 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %40, align 8
  store %struct.ubifs_nnode* %41, %struct.ubifs_nnode** %5, align 8
  br label %43

42:                                               ; preds = %25
  br label %44

43:                                               ; preds = %31
  br label %22

44:                                               ; preds = %42, %22
  br label %45

45:                                               ; preds = %44, %2
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @add_pnode_dirt(%struct.ubifs_info*, %struct.ubifs_pnode*) #1

declare dso_local i32 @ubifs_add_nnode_dirt(%struct.ubifs_info*, %struct.ubifs_nnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
