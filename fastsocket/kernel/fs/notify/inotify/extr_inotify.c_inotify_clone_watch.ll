; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_inotify_clone_watch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_inotify_clone_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_watch = type { i32, %struct.TYPE_3__*, i32, i32, %struct.inotify_handle*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.inotify_handle = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inotify_clone_watch(%struct.inotify_watch* %0, %struct.inotify_watch* %1) #0 {
  %3 = alloca %struct.inotify_watch*, align 8
  %4 = alloca %struct.inotify_watch*, align 8
  %5 = alloca %struct.inotify_handle*, align 8
  %6 = alloca i32, align 4
  store %struct.inotify_watch* %0, %struct.inotify_watch** %3, align 8
  store %struct.inotify_watch* %1, %struct.inotify_watch** %4, align 8
  %7 = load %struct.inotify_watch*, %struct.inotify_watch** %3, align 8
  %8 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %7, i32 0, i32 4
  %9 = load %struct.inotify_handle*, %struct.inotify_handle** %8, align 8
  store %struct.inotify_handle* %9, %struct.inotify_handle** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.inotify_watch*, %struct.inotify_watch** %3, align 8
  %11 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.inotify_watch*, %struct.inotify_watch** %4, align 8
  %14 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load %struct.inotify_handle*, %struct.inotify_handle** %5, align 8
  %16 = load %struct.inotify_watch*, %struct.inotify_watch** %4, align 8
  %17 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %16, i32 0, i32 4
  store %struct.inotify_handle* %15, %struct.inotify_handle** %17, align 8
  %18 = load %struct.inotify_handle*, %struct.inotify_handle** %5, align 8
  %19 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.inotify_handle*, %struct.inotify_handle** %5, align 8
  %22 = load %struct.inotify_watch*, %struct.inotify_watch** %4, align 8
  %23 = call i32 @inotify_handle_get_wd(%struct.inotify_handle* %21, %struct.inotify_watch* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %52

28:                                               ; preds = %2
  %29 = load %struct.inotify_watch*, %struct.inotify_watch** %4, align 8
  %30 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load %struct.inotify_handle*, %struct.inotify_handle** %5, align 8
  %33 = call i32 @get_inotify_handle(%struct.inotify_handle* %32)
  %34 = load %struct.inotify_watch*, %struct.inotify_watch** %3, align 8
  %35 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = call %struct.TYPE_3__* @igrab(%struct.TYPE_3__* %36)
  %38 = load %struct.inotify_watch*, %struct.inotify_watch** %4, align 8
  %39 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %38, i32 0, i32 1
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %39, align 8
  %40 = load %struct.inotify_watch*, %struct.inotify_watch** %4, align 8
  %41 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %40, i32 0, i32 3
  %42 = load %struct.inotify_handle*, %struct.inotify_handle** %5, align 8
  %43 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %42, i32 0, i32 1
  %44 = call i32 @list_add(i32* %41, i32* %43)
  %45 = load %struct.inotify_watch*, %struct.inotify_watch** %4, align 8
  %46 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %45, i32 0, i32 2
  %47 = load %struct.inotify_watch*, %struct.inotify_watch** %3, align 8
  %48 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @list_add(i32* %46, i32* %50)
  br label %52

52:                                               ; preds = %28, %27
  %53 = load %struct.inotify_handle*, %struct.inotify_handle** %5, align 8
  %54 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @inotify_handle_get_wd(%struct.inotify_handle*, %struct.inotify_watch*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_inotify_handle(%struct.inotify_handle*) #1

declare dso_local %struct.TYPE_3__* @igrab(%struct.TYPE_3__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
