; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_update_disk_slot_extended.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_update_disk_slot_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_slot_info = type { i32, i32, %struct.buffer_head**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_slot_map_extended = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_slot_info*, i32, %struct.buffer_head**)* @ocfs2_update_disk_slot_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_update_disk_slot_extended(%struct.ocfs2_slot_info* %0, i32 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.ocfs2_slot_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_slot_map_extended*, align 8
  store %struct.ocfs2_slot_info* %0, %struct.ocfs2_slot_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %12 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sdiv i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %17 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = srem i32 %15, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %22 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %28 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %27, i32 0, i32 2
  %29 = load %struct.buffer_head**, %struct.buffer_head*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %29, i64 %31
  %33 = load %struct.buffer_head*, %struct.buffer_head** %32, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.ocfs2_slot_map_extended*
  store %struct.ocfs2_slot_map_extended* %36, %struct.ocfs2_slot_map_extended** %9, align 8
  %37 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %38 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ocfs2_slot_map_extended*, %struct.ocfs2_slot_map_extended** %9, align 8
  %46 = getelementptr inbounds %struct.ocfs2_slot_map_extended, %struct.ocfs2_slot_map_extended* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i64 %44, i64* %51, align 8
  %52 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %53 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %3
  %62 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %63 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @cpu_to_le32(i32 %69)
  %71 = load %struct.ocfs2_slot_map_extended*, %struct.ocfs2_slot_map_extended** %9, align 8
  %72 = getelementptr inbounds %struct.ocfs2_slot_map_extended, %struct.ocfs2_slot_map_extended* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %70, i32* %77, align 8
  br label %78

78:                                               ; preds = %61, %3
  %79 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %80 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %79, i32 0, i32 2
  %81 = load %struct.buffer_head**, %struct.buffer_head*** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %81, i64 %83
  %85 = load %struct.buffer_head*, %struct.buffer_head** %84, align 8
  %86 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  store %struct.buffer_head* %85, %struct.buffer_head** %86, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
