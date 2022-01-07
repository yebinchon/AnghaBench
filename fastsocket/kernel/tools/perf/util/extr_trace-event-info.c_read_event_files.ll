; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-info.c_read_event_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-info.c_read_event_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint_path = type { i32 }
%struct.dirent = type { i64, i8* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"can't read directory '%s'\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ftrace\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tracepoint_path*)* @read_event_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_event_files(%struct.tracepoint_path* %0) #0 {
  %2 = alloca %struct.tracepoint_path*, align 8
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tracepoint_path* %0, %struct.tracepoint_path** %2, align 8
  store i32 0, i32* %8, align 4
  %10 = call i8* @get_tracing_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32* @opendir(i8* %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %1
  br label %19

19:                                               ; preds = %55, %54, %18
  %20 = load i32*, i32** %7, align 8
  %21 = call %struct.dirent* @readdir(i32* %20)
  store %struct.dirent* %21, %struct.dirent** %3, align 8
  %22 = icmp ne %struct.dirent* %21, null
  br i1 %22, label %23, label %58

23:                                               ; preds = %19
  %24 = load %struct.dirent*, %struct.dirent** %3, align 8
  %25 = getelementptr inbounds %struct.dirent, %struct.dirent* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DT_DIR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %54, label %29

29:                                               ; preds = %23
  %30 = load %struct.dirent*, %struct.dirent** %3, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %29
  %36 = load %struct.dirent*, %struct.dirent** %3, align 8
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %35
  %42 = load %struct.dirent*, %struct.dirent** %3, align 8
  %43 = getelementptr inbounds %struct.dirent, %struct.dirent* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load %struct.dirent*, %struct.dirent** %3, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.tracepoint_path*, %struct.tracepoint_path** %2, align 8
  %52 = call i32 @system_in_tp_list(i8* %50, %struct.tracepoint_path* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47, %41, %35, %29, %23
  br label %19

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %19

58:                                               ; preds = %19
  %59 = call i32 @write_or_die(i32* %8, i32 4)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @rewinddir(i32* %60)
  br label %62

62:                                               ; preds = %132, %97, %58
  %63 = load i32*, i32** %7, align 8
  %64 = call %struct.dirent* @readdir(i32* %63)
  store %struct.dirent* %64, %struct.dirent** %3, align 8
  %65 = icmp ne %struct.dirent* %64, null
  br i1 %65, label %66, label %135

66:                                               ; preds = %62
  %67 = load %struct.dirent*, %struct.dirent** %3, align 8
  %68 = getelementptr inbounds %struct.dirent, %struct.dirent* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DT_DIR, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %97, label %72

72:                                               ; preds = %66
  %73 = load %struct.dirent*, %struct.dirent** %3, align 8
  %74 = getelementptr inbounds %struct.dirent, %struct.dirent* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %72
  %79 = load %struct.dirent*, %struct.dirent** %3, align 8
  %80 = getelementptr inbounds %struct.dirent, %struct.dirent* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %78
  %85 = load %struct.dirent*, %struct.dirent** %3, align 8
  %86 = getelementptr inbounds %struct.dirent, %struct.dirent* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %84
  %91 = load %struct.dirent*, %struct.dirent** %3, align 8
  %92 = getelementptr inbounds %struct.dirent, %struct.dirent* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.tracepoint_path*, %struct.tracepoint_path** %2, align 8
  %95 = call i32 @system_in_tp_list(i8* %93, %struct.tracepoint_path* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90, %84, %78, %72, %66
  br label %62

98:                                               ; preds = %90
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = load %struct.dirent*, %struct.dirent** %3, align 8
  %102 = getelementptr inbounds %struct.dirent, %struct.dirent* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strlen(i8* %103)
  %105 = add nsw i32 %100, %104
  %106 = add nsw i32 %105, 2
  %107 = call i8* @malloc_or_die(i32 %106)
  store i8* %107, i8** %6, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = load %struct.dirent*, %struct.dirent** %3, align 8
  %111 = getelementptr inbounds %struct.dirent, %struct.dirent* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @sprintf(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %109, i8* %112)
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 @stat(i8* %114, %struct.stat* %4)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %98
  %119 = load %struct.dirent*, %struct.dirent** %3, align 8
  %120 = getelementptr inbounds %struct.dirent, %struct.dirent* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = bitcast i8* %121 to i32*
  %123 = load %struct.dirent*, %struct.dirent** %3, align 8
  %124 = getelementptr inbounds %struct.dirent, %struct.dirent* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strlen(i8* %125)
  %127 = add nsw i32 %126, 1
  %128 = call i32 @write_or_die(i32* %122, i32 %127)
  %129 = load i8*, i8** %6, align 8
  %130 = load %struct.tracepoint_path*, %struct.tracepoint_path** %2, align 8
  %131 = call i32 @copy_event_system(i8* %129, %struct.tracepoint_path* %130)
  br label %132

132:                                              ; preds = %118, %98
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @free(i8* %133)
  br label %62

135:                                              ; preds = %62
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @closedir(i32* %136)
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 @put_tracing_file(i8* %138)
  ret void
}

declare dso_local i8* @get_tracing_file(i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @system_in_tp_list(i8*, %struct.tracepoint_path*) #1

declare dso_local i32 @write_or_die(i32*, i32) #1

declare dso_local i32 @rewinddir(i32*) #1

declare dso_local i8* @malloc_or_die(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @copy_event_system(i8*, %struct.tracepoint_path*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @put_tracing_file(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
