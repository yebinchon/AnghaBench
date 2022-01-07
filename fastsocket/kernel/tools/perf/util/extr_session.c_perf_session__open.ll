; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32, i32, i64, i32, i32 }
%struct.stat = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"incompatible file format (rerun with -v to learn more)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to open %s: %s\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"perf.data\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"  (try 'perf record' first)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"file %s not owned by current user or root\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"zero-sized file (%s), nothing to do!\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"non matching sample_type\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"non matching sample_id_all\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_session*, i32)* @perf_session__open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_session__open(%struct.perf_session* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %9 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @strcmp(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %2
  %14 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %15 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load i32, i32* @STDIN_FILENO, align 4
  %17 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %18 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %20 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %21 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @perf_session__read_header(%struct.perf_session* %19, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %13
  store i32 0, i32* %3, align 4
  br label %133

28:                                               ; preds = %2
  %29 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %30 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @O_RDONLY, align 4
  %33 = call i32 @open(i32 %31, i32 %32)
  %34 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %35 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %37 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %28
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %7, align 4
  %42 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %43 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @ENOENT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %53 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcmp(i32 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %51, %40
  %60 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %61 = load i32, i32* @errno, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %133

63:                                               ; preds = %28
  %64 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %65 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @fstat(i32 %66, %struct.stat* %6)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %126

70:                                               ; preds = %63
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 (...) @geteuid()
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %84 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %85)
  br label %126

87:                                               ; preds = %77, %73, %70
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %93 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %94)
  br label %126

96:                                               ; preds = %87
  %97 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %98 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %99 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @perf_session__read_header(%struct.perf_session* %97, i32 %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %126

105:                                              ; preds = %96
  %106 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %107 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @perf_evlist__valid_sample_type(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %105
  %112 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %126

113:                                              ; preds = %105
  %114 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %115 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @perf_evlist__valid_sample_id_all(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %113
  %120 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %126

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %125 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  store i32 0, i32* %3, align 4
  br label %133

126:                                              ; preds = %119, %111, %103, %91, %82, %69
  %127 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %128 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @close(i32 %129)
  %131 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %132 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %131, i32 0, i32 1
  store i32 -1, i32* %132, align 4
  store i32 -1, i32* %3, align 4
  br label %133

133:                                              ; preds = %126, %121, %59, %27
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @perf_session__read_header(%struct.perf_session*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @perf_evlist__valid_sample_type(i32) #1

declare dso_local i32 @perf_evlist__valid_sample_id_all(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
