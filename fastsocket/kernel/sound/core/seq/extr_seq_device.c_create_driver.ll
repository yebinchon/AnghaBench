; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_device.c_create_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_device.c_create_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ops_list = type { i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DRIVER_EMPTY = common dso_local global i32 0, align 4
@ops_mutex = common dso_local global i32 0, align 4
@opslist = common dso_local global i32 0, align 4
@num_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ops_list* (i8*)* @create_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ops_list* @create_driver(i8* %0) #0 {
  %2 = alloca %struct.ops_list*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ops_list*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ops_list* @kzalloc(i32 24, i32 %5)
  store %struct.ops_list* %6, %struct.ops_list** %4, align 8
  %7 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  %8 = icmp eq %struct.ops_list* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  store %struct.ops_list* %10, %struct.ops_list** %2, align 8
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  %13 = getelementptr inbounds %struct.ops_list, %struct.ops_list* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strlcpy(i32 %14, i8* %15, i32 4)
  %17 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  %18 = getelementptr inbounds %struct.ops_list, %struct.ops_list* %17, i32 0, i32 4
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  %21 = getelementptr inbounds %struct.ops_list, %struct.ops_list* %20, i32 0, i32 4
  %22 = load i8*, i8** %3, align 8
  %23 = bitcast i8* %22 to %struct.lock_class_key*
  %24 = call i32 @lockdep_set_class(i32* %21, %struct.lock_class_key* %23)
  %25 = load i32, i32* @DRIVER_EMPTY, align 4
  %26 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  %27 = getelementptr inbounds %struct.ops_list, %struct.ops_list* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  %29 = getelementptr inbounds %struct.ops_list, %struct.ops_list* %28, i32 0, i32 2
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  %32 = getelementptr inbounds %struct.ops_list, %struct.ops_list* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = call i32 @mutex_lock(i32* @ops_mutex)
  %34 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  %35 = getelementptr inbounds %struct.ops_list, %struct.ops_list* %34, i32 0, i32 1
  %36 = call i32 @list_add_tail(i32* %35, i32* @opslist)
  %37 = load i32, i32* @num_ops, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @num_ops, align 4
  %39 = call i32 @mutex_unlock(i32* @ops_mutex)
  %40 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  store %struct.ops_list* %40, %struct.ops_list** %2, align 8
  br label %41

41:                                               ; preds = %11, %9
  %42 = load %struct.ops_list*, %struct.ops_list** %2, align 8
  ret %struct.ops_list* %42
}

declare dso_local %struct.ops_list* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lockdep_set_class(i32*, %struct.lock_class_key*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
