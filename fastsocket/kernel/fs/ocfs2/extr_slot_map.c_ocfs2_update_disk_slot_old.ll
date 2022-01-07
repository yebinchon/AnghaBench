; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_update_disk_slot_old.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_update_disk_slot_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_slot_info = type { i32, %struct.buffer_head**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_slot_map = type { i8** }

@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_slot_info*, i32, %struct.buffer_head**)* @ocfs2_update_disk_slot_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_update_disk_slot_old(%struct.ocfs2_slot_info* %0, i32 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.ocfs2_slot_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_slot_map*, align 8
  store %struct.ocfs2_slot_info* %0, %struct.ocfs2_slot_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %6, align 8
  %9 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %10 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %9, i32 0, i32 1
  %11 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %12 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %11, i64 0
  %13 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ocfs2_slot_map*
  store %struct.ocfs2_slot_map* %16, %struct.ocfs2_slot_map** %8, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %59, %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %20 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %17
  %24 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %25 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %23
  %34 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %35 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = load %struct.ocfs2_slot_map*, %struct.ocfs2_slot_map** %8, align 8
  %44 = getelementptr inbounds %struct.ocfs2_slot_map, %struct.ocfs2_slot_map* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  store i8* %42, i8** %48, align 8
  br label %58

49:                                               ; preds = %23
  %50 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.ocfs2_slot_map*, %struct.ocfs2_slot_map** %8, align 8
  %53 = getelementptr inbounds %struct.ocfs2_slot_map, %struct.ocfs2_slot_map* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  store i8* %51, i8** %57, align 8
  br label %58

58:                                               ; preds = %49, %33
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %17

62:                                               ; preds = %17
  %63 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %64 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %63, i32 0, i32 1
  %65 = load %struct.buffer_head**, %struct.buffer_head*** %64, align 8
  %66 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %65, i64 0
  %67 = load %struct.buffer_head*, %struct.buffer_head** %66, align 8
  %68 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  store %struct.buffer_head* %67, %struct.buffer_head** %68, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
