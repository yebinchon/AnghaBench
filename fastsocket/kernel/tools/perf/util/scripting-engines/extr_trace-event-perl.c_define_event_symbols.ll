; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-perl.c_define_event_symbols.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-perl.c_define_event_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32 }
%struct.print_arg = type { i32, %struct.print_arg*, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { %struct.print_arg*, %struct.print_arg*, i32 }
%struct.TYPE_13__ = type { %struct.print_arg* }
%struct.TYPE_12__ = type { %struct.print_arg*, %struct.print_arg* }
%struct.TYPE_11__ = type { i32, %struct.print_arg* }
%struct.TYPE_10__ = type { i32, i32, %struct.print_arg* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@cur_field_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@zero_flag_atom = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unsupported print arg type\0A\00", align 1
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
  switch i32 %9, label %112 [
    i32 132, label %10
    i32 139, label %11
    i32 136, label %19
    i32 135, label %31
    i32 129, label %52
    i32 133, label %69
    i32 138, label %82
    i32 137, label %82
    i32 130, label %82
    i32 128, label %83
    i32 131, label %90
    i32 134, label %111
  ]

10:                                               ; preds = %3
  br label %114

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @cur_field_name, align 4
  %14 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %15 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @define_flag_value(i8* %12, i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* @zero_flag_atom, align 4
  br label %114

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
  br label %114

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
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @define_flag_field(i8* %38, i32 %39, i32 %43)
  %45 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %46 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @cur_field_name, align 4
  %51 = call i32 @define_flag_values(i32 %48, i8* %49, i32 %50)
  br label %114

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
  %61 = call i32 @define_symbolic_field(i8* %59, i32 %60)
  %62 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %63 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* @cur_field_name, align 4
  %68 = call i32 @define_symbolic_values(i32 %65, i8* %66, i32 %67)
  br label %114

69:                                               ; preds = %3
  %70 = load %struct.event_format*, %struct.event_format** %4, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %73 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load %struct.print_arg*, %struct.print_arg** %74, align 8
  call void @define_event_symbols(%struct.event_format* %70, i8* %71, %struct.print_arg* %75)
  %76 = load %struct.event_format*, %struct.event_format** %4, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %79 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.print_arg*, %struct.print_arg** %80, align 8
  call void @define_event_symbols(%struct.event_format* %76, i8* %77, %struct.print_arg* %81)
  br label %114

82:                                               ; preds = %3, %3, %3
  br label %114

83:                                               ; preds = %3
  %84 = load %struct.event_format*, %struct.event_format** %4, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %87 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.print_arg*, %struct.print_arg** %88, align 8
  call void @define_event_symbols(%struct.event_format* %84, i8* %85, %struct.print_arg* %89)
  br label %114

90:                                               ; preds = %3
  %91 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %92 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @strcmp(i32 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i32 1, i32* @zero_flag_atom, align 4
  br label %98

98:                                               ; preds = %97, %90
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
  br label %114

111:                                              ; preds = %3
  br label %112

112:                                              ; preds = %3, %111
  %113 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %125

114:                                              ; preds = %98, %83, %82, %69, %52, %31, %25, %11, %10
  %115 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %116 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %115, i32 0, i32 1
  %117 = load %struct.print_arg*, %struct.print_arg** %116, align 8
  %118 = icmp ne %struct.print_arg* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.event_format*, %struct.event_format** %4, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %123 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %122, i32 0, i32 1
  %124 = load %struct.print_arg*, %struct.print_arg** %123, align 8
  call void @define_event_symbols(%struct.event_format* %120, i8* %121, %struct.print_arg* %124)
  br label %125

125:                                              ; preds = %112, %119, %114
  ret void
}

declare dso_local i32 @define_flag_value(i8*, i32, i8*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @define_flag_field(i8*, i32, i32) #1

declare dso_local i32 @define_flag_values(i32, i8*, i32) #1

declare dso_local i32 @define_symbolic_field(i8*, i32) #1

declare dso_local i32 @define_symbolic_values(i32, i8*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
