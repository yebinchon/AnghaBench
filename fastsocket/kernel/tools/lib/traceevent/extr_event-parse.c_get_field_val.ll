; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_get_field_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_get_field_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.format_field = type { i32 }
%struct.pevent_record = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"<CANT FIND FIELD %s>\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" %s=INVALID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_field_val(%struct.trace_seq* %0, %struct.format_field* %1, i8* %2, %struct.pevent_record* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.trace_seq*, align 8
  %9 = alloca %struct.format_field*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.pevent_record*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %8, align 8
  store %struct.format_field* %1, %struct.format_field** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.pevent_record* %3, %struct.pevent_record** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load %struct.format_field*, %struct.format_field** %9, align 8
  %15 = icmp ne %struct.format_field* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %6
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @trace_seq_printf(%struct.trace_seq* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %19, %16
  store i32 -1, i32* %7, align 4
  br label %41

24:                                               ; preds = %6
  %25 = load %struct.format_field*, %struct.format_field** %9, align 8
  %26 = load %struct.pevent_record*, %struct.pevent_record** %11, align 8
  %27 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64*, i64** %12, align 8
  %30 = call i64 @pevent_read_number_field(%struct.format_field* %25, i32 %28, i64* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @trace_seq_printf(%struct.trace_seq* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %35, %32
  store i32 -1, i32* %7, align 4
  br label %41

40:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %39, %23
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8*) #1

declare dso_local i64 @pevent_read_number_field(%struct.format_field*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
