; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_synthesize_perf_probe_point.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_synthesize_perf_probe_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_point = type { i8*, i64, i32, i32, i32 }

@MAX_CMDLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"+%lu\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s%s%s%s%s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%return\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Failed to synthesize perf probe point: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.perf_probe_point*)* @synthesize_perf_probe_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @synthesize_perf_probe_point(%struct.perf_probe_point* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.perf_probe_point*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_probe_point* %0, %struct.perf_probe_point** %3, align 8
  %11 = bitcast [32 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 32, i1 false)
  %12 = bitcast [32 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 32, i1 false)
  %13 = bitcast [32 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 32, i1 false)
  %14 = load i32, i32* @MAX_CMDLEN, align 4
  %15 = call i8* @zalloc(i32 %14)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %135

21:                                               ; preds = %1
  %22 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %23 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %28 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %29 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 (i8*, i32, i8*, i8*, ...) @e_snprintf(i8* %27, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %135

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %21
  %39 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %40 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %45 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %46 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 (i8*, i32, i8*, i8*, ...) @e_snprintf(i8* %44, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %135

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %38
  %56 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %57 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %100

60:                                               ; preds = %55
  %61 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %62 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @strlen(i8* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %66, 30
  br i1 %67, label %68, label %92

68:                                               ; preds = %60
  %69 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %70 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = getelementptr inbounds i8, i8* %74, i64 -30
  %76 = call i8* @strchr(i8* %75, i8 signext 47)
  store i8* %76, i8** %5, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  br label %90

82:                                               ; preds = %68
  %83 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %84 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = getelementptr inbounds i8, i8* %88, i64 -30
  br label %90

90:                                               ; preds = %82, %79
  %91 = phi i8* [ %81, %79 ], [ %89, %82 ]
  store i8* %91, i8** %5, align 8
  br label %92

92:                                               ; preds = %90, %60
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 (i8*, i32, i8*, i8*, ...) @e_snprintf(i8* %93, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %135

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %55
  %101 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %102 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %100
  %106 = load i8*, i8** %4, align 8
  %107 = load i32, i32* @MAX_CMDLEN, align 4
  %108 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %109 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %114 = load %struct.perf_probe_point*, %struct.perf_probe_point** %3, align 8
  %115 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %120 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %121 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %122 = call i32 (i8*, i32, i8*, i8*, ...) @e_snprintf(i8* %106, i32 %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %112, i8* %113, i8* %119, i8* %120, i8* %121)
  store i32 %122, i32* %9, align 4
  br label %129

123:                                              ; preds = %100
  %124 = load i8*, i8** %4, align 8
  %125 = load i32, i32* @MAX_CMDLEN, align 4
  %126 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %127 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %128 = call i32 (i8*, i32, i8*, i8*, ...) @e_snprintf(i8* %124, i32 %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %126, i8* %127)
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %123, %105
  %130 = load i32, i32* %9, align 4
  %131 = icmp sle i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %135

133:                                              ; preds = %129
  %134 = load i8*, i8** %4, align 8
  store i8* %134, i8** %2, align 8
  br label %146

135:                                              ; preds = %132, %98, %53, %36, %18
  %136 = load i32, i32* %9, align 4
  %137 = sub nsw i32 0, %136
  %138 = call i32 @strerror(i32 %137)
  %139 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %138)
  %140 = load i8*, i8** %4, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i8*, i8** %4, align 8
  %144 = call i32 @free(i8* %143)
  br label %145

145:                                              ; preds = %142, %135
  store i8* null, i8** %2, align 8
  br label %146

146:                                              ; preds = %145, %133
  %147 = load i8*, i8** %2, align 8
  ret i8* %147
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @zalloc(i32) #2

declare dso_local i32 @e_snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @pr_debug(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
