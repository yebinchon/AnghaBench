; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_make_tree_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_make_tree_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_pnode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @make_tree_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_tree_dirty(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_pnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %5 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %6 = call %struct.ubifs_pnode* @pnode_lookup(%struct.ubifs_info* %5, i32 0)
  store %struct.ubifs_pnode* %6, %struct.ubifs_pnode** %4, align 8
  br label %7

7:                                                ; preds = %23, %1
  %8 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %4, align 8
  %9 = icmp ne %struct.ubifs_pnode* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %12 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %4, align 8
  %13 = call i32 @do_make_pnode_dirty(%struct.ubifs_info* %11, %struct.ubifs_pnode* %12)
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %4, align 8
  %16 = call %struct.ubifs_pnode* @next_pnode_to_dirty(%struct.ubifs_info* %14, %struct.ubifs_pnode* %15)
  store %struct.ubifs_pnode* %16, %struct.ubifs_pnode** %4, align 8
  %17 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %4, align 8
  %18 = call i64 @IS_ERR(%struct.ubifs_pnode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %4, align 8
  %22 = call i32 @PTR_ERR(%struct.ubifs_pnode* %21)
  store i32 %22, i32* %2, align 4
  br label %25

23:                                               ; preds = %10
  br label %7

24:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.ubifs_pnode* @pnode_lookup(%struct.ubifs_info*, i32) #1

declare dso_local i32 @do_make_pnode_dirty(%struct.ubifs_info*, %struct.ubifs_pnode*) #1

declare dso_local %struct.ubifs_pnode* @next_pnode_to_dirty(%struct.ubifs_info*, %struct.ubifs_pnode*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_pnode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_pnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
