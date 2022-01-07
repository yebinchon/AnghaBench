; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_update_slot_info_extended.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_update_slot_info_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_slot_info = type { i32, i32, i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64 }
%struct.ocfs2_slot_map_extended = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_slot_info*)* @ocfs2_update_slot_info_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_update_slot_info_extended(%struct.ocfs2_slot_info* %0) #0 {
  %2 = alloca %struct.ocfs2_slot_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_slot_map_extended*, align 8
  store %struct.ocfs2_slot_info* %0, %struct.ocfs2_slot_info** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %72, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %2, align 8
  %10 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %75

13:                                               ; preds = %7
  %14 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %2, align 8
  %15 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %16, i64 %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ocfs2_slot_map_extended*
  store %struct.ocfs2_slot_map_extended* %23, %struct.ocfs2_slot_map_extended** %6, align 8
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %66, %13
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %2, align 8
  %27 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %2, align 8
  %33 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i1 [ false, %24 ], [ %35, %30 ]
  br i1 %37, label %38, label %71

38:                                               ; preds = %36
  %39 = load %struct.ocfs2_slot_map_extended*, %struct.ocfs2_slot_map_extended** %6, align 8
  %40 = getelementptr inbounds %struct.ocfs2_slot_map_extended, %struct.ocfs2_slot_map_extended* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %38
  %49 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.ocfs2_slot_map_extended*, %struct.ocfs2_slot_map_extended** %6, align 8
  %52 = getelementptr inbounds %struct.ocfs2_slot_map_extended, %struct.ocfs2_slot_map_extended* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = call i32 @ocfs2_set_slot(%struct.ocfs2_slot_info* %49, i32 %50, i32 %59)
  br label %65

61:                                               ; preds = %38
  %62 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %2, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @ocfs2_invalidate_slot(%struct.ocfs2_slot_info* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %48
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %24

71:                                               ; preds = %36
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %7

75:                                               ; preds = %7
  ret void
}

declare dso_local i32 @ocfs2_set_slot(%struct.ocfs2_slot_info*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_invalidate_slot(%struct.ocfs2_slot_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
