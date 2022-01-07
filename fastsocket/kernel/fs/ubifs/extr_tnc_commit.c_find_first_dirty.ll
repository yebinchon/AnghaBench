; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_find_first_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_find_first_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_znode = type { i64, i32, %struct.ubifs_zbranch* }
%struct.ubifs_zbranch = type { %struct.ubifs_znode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_znode* (%struct.ubifs_znode*)* @find_first_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_znode* @find_first_dirty(%struct.ubifs_znode* %0) #0 {
  %2 = alloca %struct.ubifs_znode*, align 8
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_znode* %0, %struct.ubifs_znode** %3, align 8
  %7 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %8 = icmp ne %struct.ubifs_znode* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %2, align 8
  br label %66

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %65
  %12 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %13 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %18 = call i64 @ubifs_zn_dirty(%struct.ubifs_znode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  store %struct.ubifs_znode* %21, %struct.ubifs_znode** %2, align 8
  br label %66

22:                                               ; preds = %16
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %2, align 8
  br label %66

23:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %52, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %27 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  %31 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %32 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %31, i32 0, i32 2
  %33 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %33, i64 %35
  store %struct.ubifs_zbranch* %36, %struct.ubifs_zbranch** %6, align 8
  %37 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %38 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %37, i32 0, i32 0
  %39 = load %struct.ubifs_znode*, %struct.ubifs_znode** %38, align 8
  %40 = icmp ne %struct.ubifs_znode* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %30
  %42 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %43 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %42, i32 0, i32 0
  %44 = load %struct.ubifs_znode*, %struct.ubifs_znode** %43, align 8
  %45 = call i64 @ubifs_zn_dirty(%struct.ubifs_znode* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %49 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %48, i32 0, i32 0
  %50 = load %struct.ubifs_znode*, %struct.ubifs_znode** %49, align 8
  store %struct.ubifs_znode* %50, %struct.ubifs_znode** %3, align 8
  store i32 1, i32* %5, align 4
  br label %55

51:                                               ; preds = %41, %30
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %24

55:                                               ; preds = %47, %24
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %60 = call i64 @ubifs_zn_dirty(%struct.ubifs_znode* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  store %struct.ubifs_znode* %63, %struct.ubifs_znode** %2, align 8
  br label %66

64:                                               ; preds = %58
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %2, align 8
  br label %66

65:                                               ; preds = %55
  br label %11

66:                                               ; preds = %64, %62, %22, %20, %9
  %67 = load %struct.ubifs_znode*, %struct.ubifs_znode** %2, align 8
  ret %struct.ubifs_znode* %67
}

declare dso_local i64 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
