; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_print_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_print_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32, i64 }
%struct.trace_seq = type { i32 }
%struct.pevent_record = type { i64, i64, i32, i8* }
%struct.event_format = type { i32 }

@pevent_print_event.spaces = internal global i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [21 x i8] c"                    \00", align 1
@NSECS_PER_SEC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"ug! negative record size %d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"ug! no event found for type %d\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%8.8s-%-5d %3d\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%16s-%-5d [%03d]\00", align 1
@PEVENT_NSEC_OUTPUT = common dso_local global i32 0, align 4
@NSECS_PER_USEC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c" %5lu.%0*lu: %s: \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pevent_print_event(%struct.pevent* %0, %struct.trace_seq* %1, %struct.pevent_record* %2) #0 {
  %4 = alloca %struct.pevent*, align 8
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca %struct.pevent_record*, align 8
  %7 = alloca %struct.event_format*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pevent* %0, %struct.pevent** %4, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %5, align 8
  store %struct.pevent_record* %2, %struct.pevent_record** %6, align 8
  %17 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  %18 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %17, i32 0, i32 3
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %12, align 8
  %20 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  %21 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NSECS_PER_SEC, align 8
  %24 = udiv i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  %26 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @NSECS_PER_SEC, align 8
  %30 = mul i64 %28, %29
  %31 = sub i64 %27, %30
  store i64 %31, i64* %10, align 8
  %32 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  %33 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  %38 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @do_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %125

42:                                               ; preds = %3
  %43 = load %struct.pevent*, %struct.pevent** %4, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @trace_parse_common_type(%struct.pevent* %43, i8* %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.pevent*, %struct.pevent** %4, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call %struct.event_format* @pevent_find_event(%struct.pevent* %46, i32 %47)
  store %struct.event_format* %48, %struct.event_format** %7, align 8
  %49 = load %struct.event_format*, %struct.event_format** %7, align 8
  %50 = icmp ne %struct.event_format* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @do_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %125

54:                                               ; preds = %42
  %55 = load %struct.pevent*, %struct.pevent** %4, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @parse_common_pid(%struct.pevent* %55, i8* %56)
  store i32 %57, i32* %14, align 4
  %58 = load %struct.pevent*, %struct.pevent** %4, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i8* @find_cmdline(%struct.pevent* %58, i32 %59)
  store i8* %60, i8** %11, align 8
  %61 = load %struct.pevent*, %struct.pevent** %4, align 8
  %62 = getelementptr inbounds %struct.pevent, %struct.pevent* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %54
  %66 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  %70 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %67, i32 %68, i32 %71)
  %73 = load %struct.pevent*, %struct.pevent** %4, align 8
  %74 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %75 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  %76 = call i32 @pevent_data_lat_fmt(%struct.pevent* %73, %struct.trace_seq* %74, %struct.pevent_record* %75)
  br label %85

77:                                               ; preds = %54
  %78 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  %82 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %79, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %77, %65
  %86 = load %struct.pevent*, %struct.pevent** %4, align 8
  %87 = getelementptr inbounds %struct.pevent, %struct.pevent* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @PEVENT_NSEC_OUTPUT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i64, i64* %10, align 8
  store i64 %93, i64* %9, align 8
  store i32 9, i32* %16, align 4
  br label %99

94:                                               ; preds = %85
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, 500
  %97 = load i64, i64* @NSECS_PER_USEC, align 8
  %98 = udiv i64 %96, %97
  store i64 %98, i64* %9, align 8
  store i32 6, i32* %16, align 4
  br label %99

99:                                               ; preds = %94, %92
  %100 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i32, i32* %16, align 4
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.event_format*, %struct.event_format** %7, align 8
  %105 = getelementptr inbounds %struct.event_format, %struct.event_format* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %101, i32 %102, i64 %103, i32 %106)
  %108 = load %struct.event_format*, %struct.event_format** %7, align 8
  %109 = getelementptr inbounds %struct.event_format, %struct.event_format* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @strlen(i32 %110)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp slt i32 %112, 20
  br i1 %113, label %114, label %120

114:                                              ; preds = %99
  %115 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sub nsw i32 20, %116
  %118 = load i8*, i8** @pevent_print_event.spaces, align 8
  %119 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %117, i8* %118)
  br label %120

120:                                              ; preds = %114, %99
  %121 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %122 = load %struct.event_format*, %struct.event_format** %7, align 8
  %123 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  %124 = call i32 @pevent_event_info(%struct.trace_seq* %121, %struct.event_format* %122, %struct.pevent_record* %123)
  br label %125

125:                                              ; preds = %120, %51, %36
  ret void
}

declare dso_local i32 @do_warning(i8*, i32) #1

declare dso_local i32 @trace_parse_common_type(%struct.pevent*, i8*) #1

declare dso_local %struct.event_format* @pevent_find_event(%struct.pevent*, i32) #1

declare dso_local i32 @parse_common_pid(%struct.pevent*, i8*) #1

declare dso_local i8* @find_cmdline(%struct.pevent*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i32 @pevent_data_lat_fmt(%struct.pevent*, %struct.trace_seq*, %struct.pevent_record*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @pevent_event_info(%struct.trace_seq*, %struct.event_format*, %struct.pevent_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
