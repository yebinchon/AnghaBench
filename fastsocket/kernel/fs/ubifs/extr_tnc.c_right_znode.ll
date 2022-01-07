; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_right_znode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_right_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_znode = type { i32, i32, i32, %struct.ubifs_znode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_znode* (%struct.ubifs_info*, %struct.ubifs_znode*)* @right_znode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_znode* @right_znode(%struct.ubifs_info* %0, %struct.ubifs_znode* %1) #0 {
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_znode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_znode* %1, %struct.ubifs_znode** %5, align 8
  %8 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %9 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %2, %56
  %12 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %13 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %17 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %16, i32 0, i32 3
  %18 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  store %struct.ubifs_znode* %18, %struct.ubifs_znode** %5, align 8
  %19 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %20 = icmp ne %struct.ubifs_znode* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %3, align 8
  br label %59

22:                                               ; preds = %11
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %25 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %22
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %30 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %29, %struct.ubifs_znode* %30, i32 %31)
  store %struct.ubifs_znode* %32, %struct.ubifs_znode** %5, align 8
  %33 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %34 = call i64 @IS_ERR(%struct.ubifs_znode* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  store %struct.ubifs_znode* %37, %struct.ubifs_znode** %3, align 8
  br label %59

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %54, %38
  %40 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %41 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %47 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %48 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %46, %struct.ubifs_znode* %47, i32 0)
  store %struct.ubifs_znode* %48, %struct.ubifs_znode** %5, align 8
  %49 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %50 = call i64 @IS_ERR(%struct.ubifs_znode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  store %struct.ubifs_znode* %53, %struct.ubifs_znode** %3, align 8
  br label %59

54:                                               ; preds = %45
  br label %39

55:                                               ; preds = %39
  br label %57

56:                                               ; preds = %22
  br label %11

57:                                               ; preds = %55
  %58 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  store %struct.ubifs_znode* %58, %struct.ubifs_znode** %3, align 8
  br label %59

59:                                               ; preds = %57, %52, %36, %21
  %60 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  ret %struct.ubifs_znode* %60
}

declare dso_local %struct.ubifs_znode* @get_znode(%struct.ubifs_info*, %struct.ubifs_znode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
