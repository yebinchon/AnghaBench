; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-info.c_copy_event_system.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-info.c_copy_event_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint_path = type { i32 }
%struct.dirent = type { i64, i8* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"can't read directory '%s'\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s/%s/format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.tracepoint_path*)* @copy_event_system to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_event_system(i8* %0, %struct.tracepoint_path* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tracepoint_path*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.tracepoint_path* %1, %struct.tracepoint_path** %4, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32* @opendir(i8* %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %2
  br label %19

19:                                               ; preds = %72, %71, %48, %18
  %20 = load i32*, i32** %8, align 8
  %21 = call %struct.dirent* @readdir(i32* %20)
  store %struct.dirent* %21, %struct.dirent** %5, align 8
  %22 = icmp ne %struct.dirent* %21, null
  br i1 %22, label %23, label %75

23:                                               ; preds = %19
  %24 = load %struct.dirent*, %struct.dirent** %5, align 8
  %25 = getelementptr inbounds %struct.dirent, %struct.dirent* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DT_DIR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %48, label %29

29:                                               ; preds = %23
  %30 = load %struct.dirent*, %struct.dirent** %5, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = load %struct.dirent*, %struct.dirent** %5, align 8
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = load %struct.dirent*, %struct.dirent** %5, align 8
  %43 = getelementptr inbounds %struct.dirent, %struct.dirent* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.tracepoint_path*, %struct.tracepoint_path** %4, align 8
  %46 = call i32 @name_in_tp_list(i8* %44, %struct.tracepoint_path* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41, %35, %29, %23
  br label %19

49:                                               ; preds = %41
  %50 = load i8*, i8** %3, align 8
  %51 = call i64 @strlen(i8* %50)
  %52 = load %struct.dirent*, %struct.dirent** %5, align 8
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = add nsw i64 %51, %55
  %57 = add nsw i64 %56, 10
  %58 = call i8* @malloc_or_die(i64 %57)
  store i8* %58, i8** %7, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = load %struct.dirent*, %struct.dirent** %5, align 8
  %62 = getelementptr inbounds %struct.dirent, %struct.dirent* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %60, i8* %63)
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @stat(i8* %65, %struct.stat* %6)
  store i32 %66, i32* %10, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %49
  br label %19

72:                                               ; preds = %49
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %19

75:                                               ; preds = %19
  %76 = call i32 @write_or_die(i32* %9, i32 4)
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @rewinddir(i32* %77)
  br label %79

79:                                               ; preds = %132, %108, %75
  %80 = load i32*, i32** %8, align 8
  %81 = call %struct.dirent* @readdir(i32* %80)
  store %struct.dirent* %81, %struct.dirent** %5, align 8
  %82 = icmp ne %struct.dirent* %81, null
  br i1 %82, label %83, label %135

83:                                               ; preds = %79
  %84 = load %struct.dirent*, %struct.dirent** %5, align 8
  %85 = getelementptr inbounds %struct.dirent, %struct.dirent* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DT_DIR, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %108, label %89

89:                                               ; preds = %83
  %90 = load %struct.dirent*, %struct.dirent** %5, align 8
  %91 = getelementptr inbounds %struct.dirent, %struct.dirent* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %89
  %96 = load %struct.dirent*, %struct.dirent** %5, align 8
  %97 = getelementptr inbounds %struct.dirent, %struct.dirent* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %95
  %102 = load %struct.dirent*, %struct.dirent** %5, align 8
  %103 = getelementptr inbounds %struct.dirent, %struct.dirent* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.tracepoint_path*, %struct.tracepoint_path** %4, align 8
  %106 = call i32 @name_in_tp_list(i8* %104, %struct.tracepoint_path* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101, %95, %89, %83
  br label %79

109:                                              ; preds = %101
  %110 = load i8*, i8** %3, align 8
  %111 = call i64 @strlen(i8* %110)
  %112 = load %struct.dirent*, %struct.dirent** %5, align 8
  %113 = getelementptr inbounds %struct.dirent, %struct.dirent* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @strlen(i8* %114)
  %116 = add nsw i64 %111, %115
  %117 = add nsw i64 %116, 10
  %118 = call i8* @malloc_or_die(i64 %117)
  store i8* %118, i8** %7, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load i8*, i8** %3, align 8
  %121 = load %struct.dirent*, %struct.dirent** %5, align 8
  %122 = getelementptr inbounds %struct.dirent, %struct.dirent* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @sprintf(i8* %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %120, i8* %123)
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @stat(i8* %125, %struct.stat* %6)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %109
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 @record_file(i8* %130, i32 8)
  br label %132

132:                                              ; preds = %129, %109
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @free(i8* %133)
  br label %79

135:                                              ; preds = %79
  %136 = load i32*, i32** %8, align 8
  %137 = call i32 @closedir(i32* %136)
  ret void
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @name_in_tp_list(i8*, %struct.tracepoint_path*) #1

declare dso_local i8* @malloc_or_die(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @write_or_die(i32*, i32) #1

declare dso_local i32 @rewinddir(i32*) #1

declare dso_local i32 @record_file(i8*, i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
