; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_deactivate_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_deactivate_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007_buffer = type { i64, i32, i32*, i32 }

@BUF_STATE_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.go7007_buffer*)* @deactivate_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deactivate_buffer(%struct.go7007_buffer* %0) #0 {
  %2 = alloca %struct.go7007_buffer*, align 8
  %3 = alloca i32, align 4
  store %struct.go7007_buffer* %0, %struct.go7007_buffer** %2, align 8
  %4 = load %struct.go7007_buffer*, %struct.go7007_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BUF_STATE_IDLE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.go7007_buffer*, %struct.go7007_buffer** %2, align 8
  %11 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %10, i32 0, i32 3
  %12 = call i32 @list_del(i32* %11)
  %13 = load i64, i64* @BUF_STATE_IDLE, align 8
  %14 = load %struct.go7007_buffer*, %struct.go7007_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.go7007_buffer*, %struct.go7007_buffer** %2, align 8
  %18 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %37, %21
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.go7007_buffer*, %struct.go7007_buffer** %2, align 8
  %25 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load %struct.go7007_buffer*, %struct.go7007_buffer** %2, align 8
  %30 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @page_cache_release(i32 %35)
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %22

40:                                               ; preds = %22
  %41 = load %struct.go7007_buffer*, %struct.go7007_buffer** %2, align 8
  %42 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %41, i32 0, i32 1
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %16
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @page_cache_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
