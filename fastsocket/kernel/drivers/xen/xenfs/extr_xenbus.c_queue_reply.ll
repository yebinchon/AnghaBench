; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenfs/extr_xenbus.c_queue_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenfs/extr_xenbus.c_queue_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.read_buffer = type { i64, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i8*, i64)* @queue_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_reply(%struct.list_head* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.read_buffer*, align 8
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = add i64 24, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.read_buffer* @kmalloc(i32 %15, i32 %16)
  store %struct.read_buffer* %17, %struct.read_buffer** %8, align 8
  %18 = load %struct.read_buffer*, %struct.read_buffer** %8, align 8
  %19 = icmp eq %struct.read_buffer* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %39

23:                                               ; preds = %12
  %24 = load %struct.read_buffer*, %struct.read_buffer** %8, align 8
  %25 = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.read_buffer*, %struct.read_buffer** %8, align 8
  %28 = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.read_buffer*, %struct.read_buffer** %8, align 8
  %30 = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @memcpy(i32 %31, i8* %32, i64 %33)
  %35 = load %struct.read_buffer*, %struct.read_buffer** %8, align 8
  %36 = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %35, i32 0, i32 1
  %37 = load %struct.list_head*, %struct.list_head** %5, align 8
  %38 = call i32 @list_add_tail(i32* %36, %struct.list_head* %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %23, %20, %11
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.read_buffer* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
