; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_inode_mark.c_fsnotify_init_mark.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_inode_mark.c_fsnotify_init_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark_entry = type { void (%struct.fsnotify_mark_entry*)*, i32*, i64, i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsnotify_init_mark(%struct.fsnotify_mark_entry* %0, void (%struct.fsnotify_mark_entry*)* %1) #0 {
  %3 = alloca %struct.fsnotify_mark_entry*, align 8
  %4 = alloca void (%struct.fsnotify_mark_entry*)*, align 8
  store %struct.fsnotify_mark_entry* %0, %struct.fsnotify_mark_entry** %3, align 8
  store void (%struct.fsnotify_mark_entry*)* %1, void (%struct.fsnotify_mark_entry*)** %4, align 8
  %5 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %3, align 8
  %6 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %5, i32 0, i32 6
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %3, align 8
  %9 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %8, i32 0, i32 5
  %10 = call i32 @atomic_set(i32* %9, i32 1)
  %11 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %3, align 8
  %12 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %11, i32 0, i32 4
  %13 = call i32 @INIT_HLIST_NODE(i32* %12)
  %14 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %3, align 8
  %15 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %14, i32 0, i32 3
  store i32* null, i32** %15, align 8
  %16 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %3, align 8
  %17 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %3, align 8
  %19 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load void (%struct.fsnotify_mark_entry*)*, void (%struct.fsnotify_mark_entry*)** %4, align 8
  %21 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %3, align 8
  %22 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %21, i32 0, i32 0
  store void (%struct.fsnotify_mark_entry*)* %20, void (%struct.fsnotify_mark_entry*)** %22, align 8
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
