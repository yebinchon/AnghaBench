; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_unpin_and_kill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_unpin_and_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_watch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.super_block* }
%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inotify_watch*, i32)* @unpin_and_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpin_and_kill(%struct.inotify_watch* %0, i32 %1) #0 {
  %3 = alloca %struct.inotify_watch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  store %struct.inotify_watch* %0, %struct.inotify_watch** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.inotify_watch*, %struct.inotify_watch** %3, align 8
  %7 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %5, align 8
  %11 = load %struct.inotify_watch*, %struct.inotify_watch** %3, align 8
  %12 = call i32 @put_inotify_watch(%struct.inotify_watch* %11)
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %20 [
    i32 1, label %14
    i32 2, label %17
  ]

14:                                               ; preds = %2
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call i32 @deactivate_super(%struct.super_block* %15)
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = call i32 @drop_super(%struct.super_block* %18)
  br label %20

20:                                               ; preds = %17, %2, %14
  ret void
}

declare dso_local i32 @put_inotify_watch(%struct.inotify_watch*) #1

declare dso_local i32 @deactivate_super(%struct.super_block*) #1

declare dso_local i32 @drop_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
