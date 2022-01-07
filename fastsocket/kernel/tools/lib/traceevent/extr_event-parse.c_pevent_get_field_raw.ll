; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_get_field_raw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_get_field_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.event_format = type { i32 }
%struct.pevent_record = type { i8* }
%struct.format_field = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"<CANT FIND FIELD %s>\00", align 1
@FIELD_IS_DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pevent_get_field_raw(%struct.trace_seq* %0, %struct.event_format* %1, i8* %2, %struct.pevent_record* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.trace_seq*, align 8
  %9 = alloca %struct.event_format*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.pevent_record*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.format_field*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %8, align 8
  store %struct.event_format* %1, %struct.event_format** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.pevent_record* %3, %struct.pevent_record** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.pevent_record*, %struct.pevent_record** %11, align 8
  %19 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %15, align 8
  %21 = load %struct.event_format*, %struct.event_format** %9, align 8
  %22 = icmp ne %struct.event_format* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  store i8* null, i8** %7, align 8
  br label %79

24:                                               ; preds = %6
  %25 = load %struct.event_format*, %struct.event_format** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call %struct.format_field* @pevent_find_field(%struct.event_format* %25, i8* %26)
  store %struct.format_field* %27, %struct.format_field** %14, align 8
  %28 = load %struct.format_field*, %struct.format_field** %14, align 8
  %29 = icmp ne %struct.format_field* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @trace_seq_printf(%struct.trace_seq* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %33, %30
  store i8* null, i8** %7, align 8
  br label %79

38:                                               ; preds = %24
  %39 = load i32*, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32* %17, i32** %12, align 8
  br label %42

42:                                               ; preds = %41, %38
  %43 = load %struct.format_field*, %struct.format_field** %14, align 8
  %44 = getelementptr inbounds %struct.format_field, %struct.format_field* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %16, align 4
  %46 = load %struct.format_field*, %struct.format_field** %14, align 8
  %47 = getelementptr inbounds %struct.format_field, %struct.format_field* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FIELD_IS_DYNAMIC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %42
  %53 = load %struct.event_format*, %struct.event_format** %9, align 8
  %54 = getelementptr inbounds %struct.event_format, %struct.event_format* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %15, align 8
  %57 = load i32, i32* %16, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr i8, i8* %56, i64 %58
  %60 = load %struct.format_field*, %struct.format_field** %14, align 8
  %61 = getelementptr inbounds %struct.format_field, %struct.format_field* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pevent_read_number(i32 %55, i8* %59, i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = lshr i32 %64, 16
  %66 = load i32*, i32** %12, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %16, align 4
  %68 = and i32 %67, 65535
  store i32 %68, i32* %16, align 4
  br label %74

69:                                               ; preds = %42
  %70 = load %struct.format_field*, %struct.format_field** %14, align 8
  %71 = getelementptr inbounds %struct.format_field, %struct.format_field* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %12, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %52
  %75 = load i8*, i8** %15, align 8
  %76 = load i32, i32* %16, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr i8, i8* %75, i64 %77
  store i8* %78, i8** %7, align 8
  br label %79

79:                                               ; preds = %74, %37, %23
  %80 = load i8*, i8** %7, align 8
  ret i8* %80
}

declare dso_local %struct.format_field* @pevent_find_field(%struct.event_format*, i8*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8*) #1

declare dso_local i32 @pevent_read_number(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
