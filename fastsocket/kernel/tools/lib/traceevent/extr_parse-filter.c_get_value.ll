; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_get_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_field = type { i32, i32 }
%struct.event_format = type { i32 }
%struct.pevent_record = type { i32 }

@comm = common dso_local global %struct.format_field zeroinitializer, align 4
@FIELD_IS_SIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.event_format*, %struct.format_field*, %struct.pevent_record*)* @get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_value(%struct.event_format* %0, %struct.format_field* %1, %struct.pevent_record* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.event_format*, align 8
  %6 = alloca %struct.format_field*, align 8
  %7 = alloca %struct.pevent_record*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.event_format* %0, %struct.event_format** %5, align 8
  store %struct.format_field* %1, %struct.format_field** %6, align 8
  store %struct.pevent_record* %2, %struct.pevent_record** %7, align 8
  %10 = load %struct.format_field*, %struct.format_field** %6, align 8
  %11 = icmp eq %struct.format_field* %10, @comm
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.event_format*, %struct.event_format** %5, align 8
  %14 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %15 = call i8* @get_comm(%struct.event_format* %13, %struct.pevent_record* %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = ptrtoint i8* %16 to i64
  store i64 %17, i64* %4, align 8
  br label %52

18:                                               ; preds = %3
  %19 = load %struct.format_field*, %struct.format_field** %6, align 8
  %20 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %21 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pevent_read_number_field(%struct.format_field* %19, i32 %22, i64* %8)
  %24 = load %struct.format_field*, %struct.format_field** %6, align 8
  %25 = getelementptr inbounds %struct.format_field, %struct.format_field* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FIELD_IS_SIGNED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %18
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %4, align 8
  br label %52

32:                                               ; preds = %18
  %33 = load %struct.format_field*, %struct.format_field** %6, align 8
  %34 = getelementptr inbounds %struct.format_field, %struct.format_field* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %50 [
    i32 1, label %36
    i32 2, label %40
    i32 4, label %44
    i32 8, label %48
  ]

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  %38 = trunc i64 %37 to i8
  %39 = sext i8 %38 to i64
  store i64 %39, i64* %4, align 8
  br label %52

40:                                               ; preds = %32
  %41 = load i64, i64* %8, align 8
  %42 = trunc i64 %41 to i16
  %43 = sext i16 %42 to i64
  store i64 %43, i64* %4, align 8
  br label %52

44:                                               ; preds = %32
  %45 = load i64, i64* %8, align 8
  %46 = trunc i64 %45 to i32
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %4, align 8
  br label %52

48:                                               ; preds = %32
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %4, align 8
  br label %52

50:                                               ; preds = %32
  %51 = load i64, i64* %8, align 8
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %50, %48, %44, %40, %36, %30, %12
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local i8* @get_comm(%struct.event_format*, %struct.pevent_record*) #1

declare dso_local i32 @pevent_read_number_field(%struct.format_field*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
