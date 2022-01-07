; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_update_trivial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_update_trivial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { i32, %struct.filter_type*, %struct.pevent* }
%struct.filter_type = type { %struct.event_format*, %struct.filter_arg* }
%struct.event_format = type { i32, i32, i32 }
%struct.filter_arg = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pevent = type { i32 }

@FILTER_ARG_BOOLEAN = common dso_local global i64 0, align 8
@FILTER_TRIVIAL_FALSE = common dso_local global i32 0, align 4
@FILTER_TRIVIAL_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pevent_update_trivial(%struct.event_filter* %0, %struct.event_filter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_filter*, align 8
  %6 = alloca %struct.event_filter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pevent*, align 8
  %9 = alloca %struct.pevent*, align 8
  %10 = alloca %struct.event_format*, align 8
  %11 = alloca %struct.filter_type*, align 8
  %12 = alloca %struct.filter_arg*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.event_filter* %0, %struct.event_filter** %5, align 8
  store %struct.event_filter* %1, %struct.event_filter** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.event_filter*, %struct.event_filter** %6, align 8
  %16 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %15, i32 0, i32 2
  %17 = load %struct.pevent*, %struct.pevent** %16, align 8
  store %struct.pevent* %17, %struct.pevent** %8, align 8
  %18 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %19 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %18, i32 0, i32 2
  %20 = load %struct.pevent*, %struct.pevent** %19, align 8
  store %struct.pevent* %20, %struct.pevent** %9, align 8
  %21 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %22 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.event_filter*, %struct.event_filter** %6, align 8
  %27 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %3
  store i32 0, i32* %4, align 4
  br label %124

31:                                               ; preds = %25
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %120, %31
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %35 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %123

38:                                               ; preds = %32
  %39 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %40 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %39, i32 0, i32 1
  %41 = load %struct.filter_type*, %struct.filter_type** %40, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %41, i64 %43
  store %struct.filter_type* %44, %struct.filter_type** %11, align 8
  %45 = load %struct.filter_type*, %struct.filter_type** %11, align 8
  %46 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %45, i32 0, i32 1
  %47 = load %struct.filter_arg*, %struct.filter_arg** %46, align 8
  store %struct.filter_arg* %47, %struct.filter_arg** %12, align 8
  %48 = load %struct.filter_arg*, %struct.filter_arg** %12, align 8
  %49 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FILTER_ARG_BOOLEAN, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  br label %120

54:                                               ; preds = %38
  %55 = load %struct.filter_arg*, %struct.filter_arg** %12, align 8
  %56 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @FILTER_TRIVIAL_FALSE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %74, label %64

64:                                               ; preds = %60, %54
  %65 = load %struct.filter_arg*, %struct.filter_arg** %12, align 8
  %66 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @FILTER_TRIVIAL_TRUE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %60
  br label %120

75:                                               ; preds = %70, %64
  %76 = load %struct.filter_type*, %struct.filter_type** %11, align 8
  %77 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %76, i32 0, i32 0
  %78 = load %struct.event_format*, %struct.event_format** %77, align 8
  store %struct.event_format* %78, %struct.event_format** %10, align 8
  %79 = load %struct.pevent*, %struct.pevent** %8, align 8
  %80 = load %struct.pevent*, %struct.pevent** %9, align 8
  %81 = icmp ne %struct.pevent* %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = load %struct.pevent*, %struct.pevent** %8, align 8
  %84 = load %struct.event_format*, %struct.event_format** %10, align 8
  %85 = getelementptr inbounds %struct.event_format, %struct.event_format* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.event_format*, %struct.event_format** %10, align 8
  %88 = getelementptr inbounds %struct.event_format, %struct.event_format* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.event_format* @pevent_find_event_by_name(%struct.pevent* %83, i32 %86, i32 %89)
  store %struct.event_format* %90, %struct.event_format** %10, align 8
  %91 = load %struct.event_format*, %struct.event_format** %10, align 8
  %92 = icmp ne %struct.event_format* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %82
  store i32 -1, i32* %4, align 4
  br label %124

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %75
  %96 = load %struct.event_filter*, %struct.event_filter** %6, align 8
  %97 = load %struct.event_format*, %struct.event_format** %10, align 8
  %98 = getelementptr inbounds %struct.event_format, %struct.event_format* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @pevent_filter_make_string(%struct.event_filter* %96, i32 %99)
  store i8* %100, i8** %13, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  br label %120

104:                                              ; preds = %95
  %105 = load i8*, i8** %13, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i8*, i8** %13, align 8
  %110 = call i64 @strcmp(i8* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %114 = load %struct.event_format*, %struct.event_format** %10, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = call i32 @filter_event(%struct.event_filter* %113, %struct.event_format* %114, i8* %115, i32* null)
  br label %117

117:                                              ; preds = %112, %108, %104
  %118 = load i8*, i8** %13, align 8
  %119 = call i32 @free(i8* %118)
  br label %120

120:                                              ; preds = %117, %103, %74, %53
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %32

123:                                              ; preds = %32
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %93, %30
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.event_format* @pevent_find_event_by_name(%struct.pevent*, i32, i32) #1

declare dso_local i8* @pevent_filter_make_string(%struct.event_filter*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @filter_event(%struct.event_filter*, %struct.event_format*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
