; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_print_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_print_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.print_arg = type { i32, %struct.print_arg*, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i8*, %struct.print_arg*, %struct.print_arg* }
%struct.TYPE_15__ = type { i8*, %struct.print_arg* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { %struct.print_arg*, %struct.print_arg* }
%struct.TYPE_12__ = type { i32, %struct.print_arg* }
%struct.TYPE_11__ = type { i8*, i32, %struct.print_arg* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"REC->%s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"__print_flags(\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c", %s, \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"__print_symbolic(\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"__print_hex(\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"__get_str(%s)\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.print_arg*)* @print_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_args(%struct.print_arg* %0) #0 {
  %2 = alloca %struct.print_arg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_seq, align 4
  store %struct.print_arg* %0, %struct.print_arg** %2, align 8
  store i32 1, i32* %3, align 4
  %5 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %6 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %118 [
    i32 132, label %8
    i32 137, label %10
    i32 135, label %16
    i32 134, label %22
    i32 129, label %42
    i32 133, label %58
    i32 130, label %70
    i32 136, label %70
    i32 128, label %76
    i32 131, label %86
  ]

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %119

10:                                               ; preds = %1
  %11 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %12 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %11, i32 0, i32 9
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  br label %119

16:                                               ; preds = %1
  %17 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %18 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %17, i32 0, i32 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  br label %119

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %24 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %25 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load %struct.print_arg*, %struct.print_arg** %26, align 8
  call void @print_args(%struct.print_arg* %27)
  %28 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %29 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %31)
  %33 = call i32 @trace_seq_init(%struct.trace_seq* %4)
  %34 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %35 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @print_fields(%struct.trace_seq* %4, i32 %37)
  %39 = call i32 @trace_seq_do_printf(%struct.trace_seq* %4)
  %40 = call i32 @trace_seq_destroy(%struct.trace_seq* %4)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %119

42:                                               ; preds = %1
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %44 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %45 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load %struct.print_arg*, %struct.print_arg** %46, align 8
  call void @print_args(%struct.print_arg* %47)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %49 = call i32 @trace_seq_init(%struct.trace_seq* %4)
  %50 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %51 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @print_fields(%struct.trace_seq* %4, i32 %53)
  %55 = call i32 @trace_seq_do_printf(%struct.trace_seq* %4)
  %56 = call i32 @trace_seq_destroy(%struct.trace_seq* %4)
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %119

58:                                               ; preds = %1
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %60 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %61 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load %struct.print_arg*, %struct.print_arg** %62, align 8
  call void @print_args(%struct.print_arg* %63)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %65 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %66 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load %struct.print_arg*, %struct.print_arg** %67, align 8
  call void @print_args(%struct.print_arg* %68)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %119

70:                                               ; preds = %1, %1
  %71 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %72 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %74)
  br label %119

76:                                               ; preds = %1
  %77 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %78 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %80)
  %82 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %83 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load %struct.print_arg*, %struct.print_arg** %84, align 8
  call void @print_args(%struct.print_arg* %85)
  br label %119

86:                                               ; preds = %1
  %87 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %88 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %86
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %94
  %100 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %101 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  %103 = load %struct.print_arg*, %struct.print_arg** %102, align 8
  call void @print_args(%struct.print_arg* %103)
  %104 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %105 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %107)
  %109 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %110 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load %struct.print_arg*, %struct.print_arg** %111, align 8
  call void @print_args(%struct.print_arg* %112)
  %113 = load i32, i32* %3, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %99
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %99
  br label %119

118:                                              ; preds = %1
  br label %129

119:                                              ; preds = %117, %76, %70, %58, %42, %22, %16, %10, %8
  %120 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %121 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %120, i32 0, i32 1
  %122 = load %struct.print_arg*, %struct.print_arg** %121, align 8
  %123 = icmp ne %struct.print_arg* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %126 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %127 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %126, i32 0, i32 1
  %128 = load %struct.print_arg*, %struct.print_arg** %127, align 8
  call void @print_args(%struct.print_arg* %128)
  br label %129

129:                                              ; preds = %118, %124, %119
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @trace_seq_init(%struct.trace_seq*) #1

declare dso_local i32 @print_fields(%struct.trace_seq*, i32) #1

declare dso_local i32 @trace_seq_do_printf(%struct.trace_seq*) #1

declare dso_local i32 @trace_seq_destroy(%struct.trace_seq*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
