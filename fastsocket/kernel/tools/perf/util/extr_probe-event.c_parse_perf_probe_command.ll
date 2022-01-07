; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_parse_perf_probe_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_parse_perf_probe_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_event = type { i32, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to split arguments.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MAX_PROBE_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Too many probe arguments (%d).\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"You can't specify local variable for kretprobe.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_perf_probe_command(i8* %0, %struct.perf_probe_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.perf_probe_event*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.perf_probe_event* %1, %struct.perf_probe_event** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i8** @argv_split(i8* %10, i32* %7)
  store i8** %11, i8*** %6, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %117

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* @MAX_PROBE_ARGS, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  %26 = call i32 (i8*, ...) @semantic_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ERANGE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %113

29:                                               ; preds = %18
  %30 = load i8**, i8*** %6, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %34 = call i32 @parse_perf_probe_point(i8* %32, %struct.perf_probe_event* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %113

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %42 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %44 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = call %struct.TYPE_5__* @zalloc(i32 %48)
  %50 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %51 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %50, i32 0, i32 2
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %51, align 8
  %52 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %53 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp eq %struct.TYPE_5__* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %38
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %113

59:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %109, %59
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %63 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = icmp sge i32 %67, 0
  br label %69

69:                                               ; preds = %66, %60
  %70 = phi i1 [ false, %60 ], [ %68, %66 ]
  br i1 %70, label %71, label %112

71:                                               ; preds = %69
  %72 = load i8**, i8*** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %72, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %79 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = call i32 @parse_perf_probe_arg(i8* %77, %struct.TYPE_5__* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %71
  %88 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %89 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %88, i32 0, i32 2
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @is_c_varname(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %87
  %99 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %100 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = call i32 (i8*, ...) @semantic_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %104, %98, %87, %71
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %60

112:                                              ; preds = %69
  br label %113

113:                                              ; preds = %112, %56, %37, %23
  %114 = load i8**, i8*** %6, align 8
  %115 = call i32 @argv_free(i8** %114)
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %14
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i8** @argv_split(i8*, i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @semantic_error(i8*, ...) #1

declare dso_local i32 @parse_perf_probe_point(i8*, %struct.perf_probe_event*) #1

declare dso_local %struct.TYPE_5__* @zalloc(i32) #1

declare dso_local i32 @parse_perf_probe_arg(i8*, %struct.TYPE_5__*) #1

declare dso_local i64 @is_c_varname(i32) #1

declare dso_local i32 @argv_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
