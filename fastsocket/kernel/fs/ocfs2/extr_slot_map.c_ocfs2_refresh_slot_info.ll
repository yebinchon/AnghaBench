; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_refresh_slot_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_refresh_slot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_slot_info* }
%struct.ocfs2_slot_info = type { i64, i32*, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Refreshing slot map, reading %u block(s)\0A\00", align 1
@OCFS2_BH_IGNORE_CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_refresh_slot_info(%struct.ocfs2_super* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_slot_info*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %6, i32 0, i32 1
  %8 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %7, align 8
  store %struct.ocfs2_slot_info* %8, %struct.ocfs2_slot_info** %5, align 8
  %9 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %10 = icmp eq %struct.ocfs2_slot_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %14 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %26 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %30 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @INODE_CACHE(i32 %31)
  %33 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %34 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %37 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %40 = call i32 @ocfs2_read_blocks(i32 %32, i32 -1, i64 %35, i32* %38, i32 %39, i32* null)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %12
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %45 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %44, i32 0, i32 0
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %5, align 8
  %48 = call i32 @ocfs2_update_slot_info(%struct.ocfs2_slot_info* %47)
  %49 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %50 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  br label %52

52:                                               ; preds = %43, %12
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %11
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @ocfs2_read_blocks(i32, i32, i64, i32*, i32, i32*) #1

declare dso_local i32 @INODE_CACHE(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ocfs2_update_slot_info(%struct.ocfs2_slot_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
