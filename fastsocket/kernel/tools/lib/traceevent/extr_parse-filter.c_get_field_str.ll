; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_get_field_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_get_field_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_arg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.event_format* }
%struct.event_format = type { %struct.pevent* }
%struct.pevent = type { i32 }
%struct.pevent_record = type { i8* }

@FIELD_IS_STRING = common dso_local global i32 0, align 4
@FIELD_IS_POINTER = common dso_local global i32 0, align 4
@FIELD_IS_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.filter_arg*, %struct.pevent_record*)* @get_field_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_field_str(%struct.filter_arg* %0, %struct.pevent_record* %1) #0 {
  %3 = alloca %struct.filter_arg*, align 8
  %4 = alloca %struct.pevent_record*, align 8
  %5 = alloca %struct.event_format*, align 8
  %6 = alloca %struct.pevent*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [64 x i8], align 16
  store %struct.filter_arg* %0, %struct.filter_arg** %3, align 8
  store %struct.pevent_record* %1, %struct.pevent_record** %4, align 8
  store i8* null, i8** %8, align 8
  %10 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %11 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FIELD_IS_STRING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %2
  %20 = load %struct.pevent_record*, %struct.pevent_record** %4, align 8
  %21 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %24 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %22, i64 %29
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %33 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %31, i64 %38
  %40 = getelementptr inbounds i8, i8* %39, i64 -1
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %19
  %44 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %45 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %50 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcpy(i8* %47, i8* %48, i32 %54)
  %56 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %57 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %8, align 8
  br label %60

60:                                               ; preds = %43, %19
  br label %102

61:                                               ; preds = %2
  %62 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %63 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load %struct.event_format*, %struct.event_format** %66, align 8
  store %struct.event_format* %67, %struct.event_format** %5, align 8
  %68 = load %struct.event_format*, %struct.event_format** %5, align 8
  %69 = getelementptr inbounds %struct.event_format, %struct.event_format* %68, i32 0, i32 0
  %70 = load %struct.pevent*, %struct.pevent** %69, align 8
  store %struct.pevent* %70, %struct.pevent** %6, align 8
  %71 = load %struct.event_format*, %struct.event_format** %5, align 8
  %72 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %73 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load %struct.pevent_record*, %struct.pevent_record** %4, align 8
  %77 = call i64 @get_value(%struct.event_format* %71, %struct.TYPE_4__* %75, %struct.pevent_record* %76)
  store i64 %77, i64* %7, align 8
  %78 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %79 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @FIELD_IS_POINTER, align 4
  %85 = load i32, i32* @FIELD_IS_LONG, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %61
  %90 = load %struct.pevent*, %struct.pevent** %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i8* @pevent_find_function(%struct.pevent* %90, i64 %91)
  store i8* %92, i8** %8, align 8
  br label %93

93:                                               ; preds = %89, %61
  %94 = load i8*, i8** %8, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @snprintf(i8* %97, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %98)
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  store i8* %100, i8** %8, align 8
  br label %101

101:                                              ; preds = %96, %93
  br label %102

102:                                              ; preds = %101, %60
  %103 = load i8*, i8** %8, align 8
  ret i8* %103
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @get_value(%struct.event_format*, %struct.TYPE_4__*, %struct.pevent_record*) #1

declare dso_local i8* @pevent_find_function(%struct.pevent*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
