; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_compute_replay_slots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_compute_replay_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, %struct.ocfs2_replay_map* }
%struct.ocfs2_replay_map = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REPLAY_UNNEEDED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_compute_replay_slots(%struct.ocfs2_super* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_replay_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 2
  %9 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %8, align 8
  %10 = icmp ne %struct.ocfs2_replay_map* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

12:                                               ; preds = %1
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 1
  %18 = add i64 24, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ocfs2_replay_map* @kzalloc(i32 %19, i32 %20)
  store %struct.ocfs2_replay_map* %21, %struct.ocfs2_replay_map** %4, align 8
  %22 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %4, align 8
  %23 = icmp ne %struct.ocfs2_replay_map* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %12
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @mlog_errno(i32 %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %73

30:                                               ; preds = %12
  %31 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %32 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %31, i32 0, i32 1
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %35 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %4, align 8
  %38 = getelementptr inbounds %struct.ocfs2_replay_map, %struct.ocfs2_replay_map* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @REPLAY_UNNEEDED, align 4
  %40 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %4, align 8
  %41 = getelementptr inbounds %struct.ocfs2_replay_map, %struct.ocfs2_replay_map* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %63, %30
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %4, align 8
  %45 = getelementptr inbounds %struct.ocfs2_replay_map, %struct.ocfs2_replay_map* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ocfs2_slot_to_node_num_locked(%struct.ocfs2_super* %49, i32 %50, i32* %6)
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %4, align 8
  %57 = getelementptr inbounds %struct.ocfs2_replay_map, %struct.ocfs2_replay_map* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %48
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %42

66:                                               ; preds = %42
  %67 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %4, align 8
  %68 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %69 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %68, i32 0, i32 2
  store %struct.ocfs2_replay_map* %67, %struct.ocfs2_replay_map** %69, align 8
  %70 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %71 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock(i32* %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %66, %24, %11
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.ocfs2_replay_map* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ocfs2_slot_to_node_num_locked(%struct.ocfs2_super*, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
