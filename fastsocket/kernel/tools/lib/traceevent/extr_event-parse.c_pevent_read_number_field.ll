; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_read_number_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_read_number_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_field = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pevent_read_number_field(%struct.format_field* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.format_field*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store %struct.format_field* %0, %struct.format_field** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load %struct.format_field*, %struct.format_field** %5, align 8
  %9 = icmp ne %struct.format_field* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %33

11:                                               ; preds = %3
  %12 = load %struct.format_field*, %struct.format_field** %5, align 8
  %13 = getelementptr inbounds %struct.format_field, %struct.format_field* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %32 [
    i32 1, label %15
    i32 2, label %15
    i32 4, label %15
    i32 8, label %15
  ]

15:                                               ; preds = %11, %11, %11, %11
  %16 = load %struct.format_field*, %struct.format_field** %5, align 8
  %17 = getelementptr inbounds %struct.format_field, %struct.format_field* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.format_field*, %struct.format_field** %5, align 8
  %23 = getelementptr inbounds %struct.format_field, %struct.format_field* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, i8* %21, i64 %25
  %27 = load %struct.format_field*, %struct.format_field** %5, align 8
  %28 = getelementptr inbounds %struct.format_field, %struct.format_field* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @pevent_read_number(i32 %20, i8* %26, i32 %29)
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  store i32 0, i32* %4, align 4
  br label %33

32:                                               ; preds = %11
  store i32 -1, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %15, %10
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @pevent_read_number(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
