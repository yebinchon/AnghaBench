; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_queue_replay_slots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_queue_replay_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_replay_map* }
%struct.ocfs2_replay_map = type { i64, i32, i64* }

@REPLAY_NEEDED = common dso_local global i64 0, align 8
@REPLAY_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_queue_replay_slots(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.ocfs2_replay_map*, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %5 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %6 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %5, i32 0, i32 1
  %7 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %6, align 8
  store %struct.ocfs2_replay_map* %7, %struct.ocfs2_replay_map** %3, align 8
  %8 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %3, align 8
  %9 = icmp ne %struct.ocfs2_replay_map* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_replay_map, %struct.ocfs2_replay_map* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REPLAY_NEEDED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %48

18:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %41, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %3, align 8
  %22 = getelementptr inbounds %struct.ocfs2_replay_map, %struct.ocfs2_replay_map* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %3, align 8
  %27 = getelementptr inbounds %struct.ocfs2_replay_map, %struct.ocfs2_replay_map* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %36 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ocfs2_queue_recovery_completion(i32 %37, i32 %38, i32* null, i32* null, i32* null)
  br label %40

40:                                               ; preds = %34, %25
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %19

44:                                               ; preds = %19
  %45 = load i64, i64* @REPLAY_DONE, align 8
  %46 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %3, align 8
  %47 = getelementptr inbounds %struct.ocfs2_replay_map, %struct.ocfs2_replay_map* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %17, %10
  ret void
}

declare dso_local i32 @ocfs2_queue_recovery_completion(i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
