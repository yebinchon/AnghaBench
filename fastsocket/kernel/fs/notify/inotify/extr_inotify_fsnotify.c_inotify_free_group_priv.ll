; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify_fsnotify.c_inotify_free_group_priv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify_fsnotify.c_inotify_free_group_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@idr_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsnotify_group*)* @inotify_free_group_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inotify_free_group_priv(%struct.fsnotify_group* %0) #0 {
  %2 = alloca %struct.fsnotify_group*, align 8
  store %struct.fsnotify_group* %0, %struct.fsnotify_group** %2, align 8
  %3 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %4 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i32, i32* @idr_callback, align 4
  %7 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %8 = call i32 @idr_for_each(i32* %5, i32 %6, %struct.fsnotify_group* %7)
  %9 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %10 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = call i32 @idr_remove_all(i32* %11)
  %13 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %14 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = call i32 @idr_destroy(i32* %15)
  %17 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %18 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @atomic_dec(i32* %21)
  %23 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %24 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @free_uid(%struct.TYPE_4__* %26)
  ret void
}

declare dso_local i32 @idr_for_each(i32*, i32, %struct.fsnotify_group*) #1

declare dso_local i32 @idr_remove_all(i32*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @free_uid(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
