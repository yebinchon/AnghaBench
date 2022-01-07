; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-python.c_define_event_symbols.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-python.c_define_event_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32 }
%struct.print_arg = type { i32, %struct.print_arg*, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { %struct.print_arg*, %struct.print_arg* }
%struct.TYPE_13__ = type { %struct.print_arg*, %struct.print_arg*, i32 }
%struct.TYPE_12__ = type { %struct.print_arg* }
%struct.TYPE_11__ = type { i32, %struct.print_arg* }
%struct.TYPE_10__ = type { i32, i32*, %struct.print_arg* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@cur_field_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@zero_flag_atom = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_format*, i8*, %struct.print_arg*)* @define_event_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_event_symbols(%struct.event_format* %0, i8* %1, %struct.print_arg* %2) #0 {
  %4 = alloca %struct.event_format*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.print_arg*, align 8
  store %struct.event_format* %0, %struct.event_format** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.print_arg* %2, %struct.print_arg** %6, align 8
  %7 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %8 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %111 [
    i32 132, label %10
    i32 139, label %11
    i32 136, label %19
    i32 135, label %31
    i32 129, label %52
    i32 130, label %69
    i32 128, label %70
    i32 131, label %77
    i32 133, label %98
    i32 138, label %112
    i32 137, label %112
    i32 134, label %112
  ]

10:                                               ; preds = %3
  br label %113

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @cur_field_name, align 4
  %14 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %15 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @define_value(i32 135, i8* %12, i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* @zero_flag_atom, align 4
  br label %113

19:                                               ; preds = %3
  %20 = load i32, i32* @cur_field_name, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @cur_field_name, align 4
  %24 = call i32 @free(i32 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %27 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strdup(i32 %29)
  store i32 %30, i32* @cur_field_name, align 4
  br label %113

31:                                               ; preds = %3
  %32 = load %struct.event_format*, %struct.event_format** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %35 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load %struct.print_arg*, %struct.print_arg** %36, align 8
  call void @define_event_symbols(%struct.event_format* %32, i8* %33, %struct.print_arg* %37)
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @cur_field_name, align 4
  %40 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %41 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @define_field(i32 135, i8* %38, i32 %39, i32* %43)
  %45 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %46 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @cur_field_name, align 4
  %51 = call i32 @define_values(i32 135, i32 %48, i8* %49, i32 %50)
  br label %113

52:                                               ; preds = %3
  %53 = load %struct.event_format*, %struct.event_format** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %56 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.print_arg*, %struct.print_arg** %57, align 8
  call void @define_event_symbols(%struct.event_format* %53, i8* %54, %struct.print_arg* %58)
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* @cur_field_name, align 4
  %61 = call i32 @define_field(i32 129, i8* %59, i32 %60, i32* null)
  %62 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %63 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* @cur_field_name, align 4
  %68 = call i32 @define_values(i32 129, i32 %65, i8* %66, i32 %67)
  br label %113

69:                                               ; preds = %3
  br label %113

70:                                               ; preds = %3
  %71 = load %struct.event_format*, %struct.event_format** %4, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %74 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.print_arg*, %struct.print_arg** %75, align 8
  call void @define_event_symbols(%struct.event_format* %71, i8* %72, %struct.print_arg* %76)
  br label %113

77:                                               ; preds = %3
  %78 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %79 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @strcmp(i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 1, i32* @zero_flag_atom, align 4
  br label %85

85:                                               ; preds = %84, %77
  %86 = load %struct.event_format*, %struct.event_format** %4, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %89 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load %struct.print_arg*, %struct.print_arg** %90, align 8
  call void @define_event_symbols(%struct.event_format* %86, i8* %87, %struct.print_arg* %91)
  %92 = load %struct.event_format*, %struct.event_format** %4, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %95 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load %struct.print_arg*, %struct.print_arg** %96, align 8
  call void @define_event_symbols(%struct.event_format* %92, i8* %93, %struct.print_arg* %97)
  br label %113

98:                                               ; preds = %3
  %99 = load %struct.event_format*, %struct.event_format** %4, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %102 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load %struct.print_arg*, %struct.print_arg** %103, align 8
  call void @define_event_symbols(%struct.event_format* %99, i8* %100, %struct.print_arg* %104)
  %105 = load %struct.event_format*, %struct.event_format** %4, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %108 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load %struct.print_arg*, %struct.print_arg** %109, align 8
  call void @define_event_symbols(%struct.event_format* %105, i8* %106, %struct.print_arg* %110)
  br label %113

111:                                              ; preds = %3
  br label %112

112:                                              ; preds = %3, %3, %3, %111
  br label %124

113:                                              ; preds = %98, %85, %70, %69, %52, %31, %25, %11, %10
  %114 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %115 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %114, i32 0, i32 1
  %116 = load %struct.print_arg*, %struct.print_arg** %115, align 8
  %117 = icmp ne %struct.print_arg* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.event_format*, %struct.event_format** %4, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %122 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %121, i32 0, i32 1
  %123 = load %struct.print_arg*, %struct.print_arg** %122, align 8
  call void @define_event_symbols(%struct.event_format* %119, i8* %120, %struct.print_arg* %123)
  br label %124

124:                                              ; preds = %112, %118, %113
  ret void
}

declare dso_local i32 @define_value(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @define_field(i32, i8*, i32, i32*) #1

declare dso_local i32 @define_values(i32, i32, i8*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
