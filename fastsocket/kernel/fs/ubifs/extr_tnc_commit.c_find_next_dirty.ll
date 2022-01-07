; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_find_next_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_find_next_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_znode = type { i32, i32, %struct.ubifs_zbranch*, %struct.ubifs_znode* }
%struct.ubifs_zbranch = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_znode* (%struct.ubifs_znode*)* @find_next_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_znode* @find_next_dirty(%struct.ubifs_znode* %0) #0 {
  %2 = alloca %struct.ubifs_znode*, align 8
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_znode* %0, %struct.ubifs_znode** %3, align 8
  %6 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %7 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %11 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %10, i32 0, i32 3
  %12 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  store %struct.ubifs_znode* %12, %struct.ubifs_znode** %3, align 8
  %13 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %14 = icmp ne %struct.ubifs_znode* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %2, align 8
  br label %51

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %20 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %25 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %24, i32 0, i32 2
  %26 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %26, i64 %28
  store %struct.ubifs_zbranch* %29, %struct.ubifs_zbranch** %5, align 8
  %30 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %31 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %23
  %35 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %36 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @ubifs_zn_dirty(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %42 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call %struct.ubifs_znode* @find_first_dirty(i64 %43)
  store %struct.ubifs_znode* %44, %struct.ubifs_znode** %2, align 8
  br label %51

45:                                               ; preds = %34, %23
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %17

49:                                               ; preds = %17
  %50 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  store %struct.ubifs_znode* %50, %struct.ubifs_znode** %2, align 8
  br label %51

51:                                               ; preds = %49, %40, %15
  %52 = load %struct.ubifs_znode*, %struct.ubifs_znode** %2, align 8
  ret %struct.ubifs_znode* %52
}

declare dso_local i64 @ubifs_zn_dirty(i64) #1

declare dso_local %struct.ubifs_znode* @find_first_dirty(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
