; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_free_stream_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_free_stream_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ua101 = type { i32 }
%struct.ua101_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ua101*, %struct.ua101_stream*)* @free_stream_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_stream_buffers(%struct.ua101* %0, %struct.ua101_stream* %1) #0 {
  %3 = alloca %struct.ua101*, align 8
  %4 = alloca %struct.ua101_stream*, align 8
  %5 = alloca i32, align 4
  store %struct.ua101* %0, %struct.ua101** %3, align 8
  store %struct.ua101_stream* %1, %struct.ua101_stream** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %42, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ua101_stream*, %struct.ua101_stream** %4, align 8
  %9 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %10)
  %12 = icmp ult i32 %7, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %6
  %14 = load %struct.ua101*, %struct.ua101** %3, align 8
  %15 = getelementptr inbounds %struct.ua101, %struct.ua101* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ua101_stream*, %struct.ua101_stream** %4, align 8
  %18 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ua101_stream*, %struct.ua101_stream** %4, align 8
  %26 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ua101_stream*, %struct.ua101_stream** %4, align 8
  %34 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_buffer_free(i32 %16, i32 %24, i32 %32, i32 %40)
  br label %42

42:                                               ; preds = %13
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %6

45:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @usb_buffer_free(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
