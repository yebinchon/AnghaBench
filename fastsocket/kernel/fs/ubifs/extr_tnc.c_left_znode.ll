; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_left_znode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_left_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_znode = type { i32, i32, i32, %struct.ubifs_znode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_znode* (%struct.ubifs_info*, %struct.ubifs_znode*)* @left_znode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_znode* @left_znode(%struct.ubifs_info* %0, %struct.ubifs_znode* %1) #0 {
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

11:                                               ; preds = %2, %58
  %12 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %13 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
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
  br label %61

22:                                               ; preds = %11
  %23 = load i32, i32* %7, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %27 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %26, %struct.ubifs_znode* %27, i32 %28)
  store %struct.ubifs_znode* %29, %struct.ubifs_znode** %5, align 8
  %30 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %31 = call i64 @IS_ERR(%struct.ubifs_znode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  store %struct.ubifs_znode* %34, %struct.ubifs_znode** %3, align 8
  br label %61

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %56, %35
  %37 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %38 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %44 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %48 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %47, %struct.ubifs_znode* %48, i32 %49)
  store %struct.ubifs_znode* %50, %struct.ubifs_znode** %5, align 8
  %51 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %52 = call i64 @IS_ERR(%struct.ubifs_znode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  store %struct.ubifs_znode* %55, %struct.ubifs_znode** %3, align 8
  br label %61

56:                                               ; preds = %42
  br label %36

57:                                               ; preds = %36
  br label %59

58:                                               ; preds = %22
  br label %11

59:                                               ; preds = %57
  %60 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  store %struct.ubifs_znode* %60, %struct.ubifs_znode** %3, align 8
  br label %61

61:                                               ; preds = %59, %54, %33, %21
  %62 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  ret %struct.ubifs_znode* %62
}

declare dso_local %struct.ubifs_znode* @get_znode(%struct.ubifs_info*, %struct.ubifs_znode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
