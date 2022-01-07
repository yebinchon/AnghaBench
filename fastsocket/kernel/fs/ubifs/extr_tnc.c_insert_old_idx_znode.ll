; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_insert_old_idx_znode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_insert_old_idx_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.ubifs_znode = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ubifs_zbranch* }
%struct.ubifs_zbranch = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insert_old_idx_znode(%struct.ubifs_info* %0, %struct.ubifs_znode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_znode*, align 8
  %6 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_znode* %1, %struct.ubifs_znode** %5, align 8
  %7 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %8 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %13 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %15, align 8
  %17 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %18 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %16, i64 %19
  store %struct.ubifs_zbranch* %20, %struct.ubifs_zbranch** %6, align 8
  %21 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %22 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %11
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %27 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %28 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %31 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @insert_old_idx(%struct.ubifs_info* %26, i32 %29, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %54

34:                                               ; preds = %11
  br label %53

35:                                               ; preds = %2
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %44 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %48 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @insert_old_idx(%struct.ubifs_info* %42, i32 %46, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52, %34
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %41, %25
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @insert_old_idx(%struct.ubifs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
