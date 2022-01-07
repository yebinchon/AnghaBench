; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_inotify_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_inotify_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_handle = type { i32, %struct.inotify_operations*, i64, i32, i32, i32 }
%struct.inotify_operations = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inotify_handle* @inotify_init(%struct.inotify_operations* %0) #0 {
  %2 = alloca %struct.inotify_handle*, align 8
  %3 = alloca %struct.inotify_operations*, align 8
  %4 = alloca %struct.inotify_handle*, align 8
  store %struct.inotify_operations* %0, %struct.inotify_operations** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.inotify_handle* @kmalloc(i32 40, i32 %5)
  store %struct.inotify_handle* %6, %struct.inotify_handle** %4, align 8
  %7 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %8 = icmp ne %struct.inotify_handle* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.inotify_handle* @ERR_PTR(i32 %15)
  store %struct.inotify_handle* %16, %struct.inotify_handle** %2, align 8
  br label %38

17:                                               ; preds = %1
  %18 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %19 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %18, i32 0, i32 5
  %20 = call i32 @idr_init(i32* %19)
  %21 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %22 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %21, i32 0, i32 4
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %25 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %24, i32 0, i32 3
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %28 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.inotify_operations*, %struct.inotify_operations** %3, align 8
  %30 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %31 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %30, i32 0, i32 1
  store %struct.inotify_operations* %29, %struct.inotify_operations** %31, align 8
  %32 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %33 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %32, i32 0, i32 0
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  %35 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %36 = call i32 @get_inotify_handle(%struct.inotify_handle* %35)
  %37 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  store %struct.inotify_handle* %37, %struct.inotify_handle** %2, align 8
  br label %38

38:                                               ; preds = %17, %13
  %39 = load %struct.inotify_handle*, %struct.inotify_handle** %2, align 8
  ret %struct.inotify_handle* %39
}

declare dso_local %struct.inotify_handle* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.inotify_handle* @ERR_PTR(i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @get_inotify_handle(%struct.inotify_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
