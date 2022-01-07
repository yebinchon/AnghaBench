; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_dirty_idx_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_dirty_idx_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_dirty_idx_node(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %union.ubifs_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_znode*, align 8
  %12 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %17 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.ubifs_znode* @lookup_znode(%struct.ubifs_info* %16, %union.ubifs_key* %17, i32 %18, i32 %19, i32 %20)
  store %struct.ubifs_znode* %21, %struct.ubifs_znode** %11, align 8
  %22 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %23 = icmp ne %struct.ubifs_znode* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  br label %43

25:                                               ; preds = %5
  %26 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %27 = call i64 @IS_ERR(%struct.ubifs_znode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %31 = call i32 @PTR_ERR(%struct.ubifs_znode* %30)
  store i32 %31, i32* %12, align 4
  br label %43

32:                                               ; preds = %25
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %34 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %35 = call %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info* %33, %struct.ubifs_znode* %34)
  store %struct.ubifs_znode* %35, %struct.ubifs_znode** %11, align 8
  %36 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %37 = call i64 @IS_ERR(%struct.ubifs_znode* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %41 = call i32 @PTR_ERR(%struct.ubifs_znode* %40)
  store i32 %41, i32* %12, align 4
  br label %43

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %39, %29, %24
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %45 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %12, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ubifs_znode* @lookup_znode(%struct.ubifs_info*, %union.ubifs_key*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
