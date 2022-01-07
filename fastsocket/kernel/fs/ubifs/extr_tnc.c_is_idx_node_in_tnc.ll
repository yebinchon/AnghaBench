; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_is_idx_node_in_tnc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_is_idx_node_in_tnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_idx_node_in_tnc(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %union.ubifs_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %14 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call %struct.ubifs_znode* @lookup_znode(%struct.ubifs_info* %13, %union.ubifs_key* %14, i32 %15, i32 %16, i32 %17)
  store %struct.ubifs_znode* %18, %struct.ubifs_znode** %12, align 8
  %19 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %20 = icmp ne %struct.ubifs_znode* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %35

22:                                               ; preds = %5
  %23 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %24 = call i64 @IS_ERR(%struct.ubifs_znode* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %28 = call i32 @PTR_ERR(%struct.ubifs_znode* %27)
  store i32 %28, i32* %6, align 4
  br label %35

29:                                               ; preds = %22
  %30 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %31 = call i64 @ubifs_zn_dirty(%struct.ubifs_znode* %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 2
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %29, %26, %21
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.ubifs_znode* @lookup_znode(%struct.ubifs_info*, %union.ubifs_key*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

declare dso_local i64 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
