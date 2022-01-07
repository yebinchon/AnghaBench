; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenfs/extr_xenbus.c_alloc_watch_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenfs/extr_xenbus.c_alloc_watch_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watch_adapter = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.watch_adapter* (i8*, i8*)* @alloc_watch_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.watch_adapter* @alloc_watch_adapter(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.watch_adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.watch_adapter*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.watch_adapter* @kzalloc(i32 16, i32 %7)
  store %struct.watch_adapter* %8, %struct.watch_adapter** %6, align 8
  %9 = load %struct.watch_adapter*, %struct.watch_adapter** %6, align 8
  %10 = icmp eq %struct.watch_adapter* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %43

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kstrdup(i8* %13, i32 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.watch_adapter*, %struct.watch_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* %16, i32** %19, align 8
  %20 = load %struct.watch_adapter*, %struct.watch_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %40

26:                                               ; preds = %12
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kstrdup(i8* %27, i32 %28)
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.watch_adapter*, %struct.watch_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.watch_adapter*, %struct.watch_adapter** %6, align 8
  %34 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %40

38:                                               ; preds = %26
  %39 = load %struct.watch_adapter*, %struct.watch_adapter** %6, align 8
  store %struct.watch_adapter* %39, %struct.watch_adapter** %3, align 8
  br label %44

40:                                               ; preds = %37, %25
  %41 = load %struct.watch_adapter*, %struct.watch_adapter** %6, align 8
  %42 = call i32 @free_watch_adapter(%struct.watch_adapter* %41)
  br label %43

43:                                               ; preds = %40, %11
  store %struct.watch_adapter* null, %struct.watch_adapter** %3, align 8
  br label %44

44:                                               ; preds = %43, %38
  %45 = load %struct.watch_adapter*, %struct.watch_adapter** %3, align 8
  ret %struct.watch_adapter* %45
}

declare dso_local %struct.watch_adapter* @kzalloc(i32, i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @free_watch_adapter(%struct.watch_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
