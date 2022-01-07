; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-read.c_read_event_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-read.c_read_event_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pevent*)* @read_event_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_event_files(%struct.pevent* %0) #0 {
  %2 = alloca %struct.pevent*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pevent* %0, %struct.pevent** %2, align 8
  %9 = load %struct.pevent*, %struct.pevent** %2, align 8
  %10 = call i32 @read4(%struct.pevent* %9)
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %34, %1
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = call i8* (...) @read_string()
  store i8* %16, i8** %4, align 8
  %17 = load %struct.pevent*, %struct.pevent** %2, align 8
  %18 = call i32 @read4(%struct.pevent* %17)
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %30, %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.pevent*, %struct.pevent** %2, align 8
  %25 = call i64 @read8(%struct.pevent* %24)
  store i64 %25, i64* %3, align 8
  %26 = load %struct.pevent*, %struct.pevent** %2, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @read_event_file(%struct.pevent* %26, i8* %27, i64 %28)
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %19

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %11

37:                                               ; preds = %11
  ret void
}

declare dso_local i32 @read4(%struct.pevent*) #1

declare dso_local i8* @read_string(...) #1

declare dso_local i64 @read8(%struct.pevent*) #1

declare dso_local i32 @read_event_file(%struct.pevent*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
