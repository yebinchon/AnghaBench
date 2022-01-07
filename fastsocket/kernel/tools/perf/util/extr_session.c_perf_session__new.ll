; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.perf_tool = type { i32, i64 }
%struct.stat = type { i32 }

@STDIN_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"perf.data\00", align 1
@RB_ROOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HOST_KERNEL_ID = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"WARNING: No sample_id_all support, falling back to unordered processing\0A\00", align 1
@ULLONG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_session* @perf_session__new(i8* %0, i32 %1, i32 %2, i32 %3, %struct.perf_tool* %4) #0 {
  %6 = alloca %struct.perf_session*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.perf_tool*, align 8
  %12 = alloca %struct.perf_session*, align 8
  %13 = alloca %struct.stat, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.perf_tool* %4, %struct.perf_tool** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %17, %5
  %22 = load i32, i32* @STDIN_FILENO, align 4
  %23 = call i32 @fstat(i32 %22, %struct.stat* %13)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @S_ISFIFO(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %32

31:                                               ; preds = %25, %21
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %32

32:                                               ; preds = %31, %30
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strlen(i8* %34)
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = add i64 40, %36
  %38 = trunc i64 %37 to i32
  %39 = call %struct.perf_session* @zalloc(i32 %38)
  store %struct.perf_session* %39, %struct.perf_session** %12, align 8
  %40 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %41 = icmp eq %struct.perf_session* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %124

43:                                               ; preds = %33
  %44 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %45 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @memcpy(i32 %46, i8* %47, i64 %48)
  %50 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %51 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %50, i32 0, i32 0
  store i32 33554432, i32* %51, align 4
  %52 = load i32, i32* @RB_ROOT, align 4
  %53 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %54 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %57 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %59 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %63 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %67 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %71 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %70, i32 0, i32 4
  %72 = load i32, i32* @HOST_KERNEL_ID, align 4
  %73 = call i32 @machine__init(i32* %71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %75 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %74, i32 0, i32 3
  %76 = call i32 @hists__init(i32* %75)
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @O_RDONLY, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %43
  %81 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i64 @perf_session__open(%struct.perf_session* %81, i32 %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %126

86:                                               ; preds = %80
  %87 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %88 = call i32 @perf_session__set_id_hdr_size(%struct.perf_session* %87)
  br label %100

89:                                               ; preds = %43
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @O_WRONLY, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %95 = call i64 @perf_session__create_kernel_maps(%struct.perf_session* %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %126

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %89
  br label %100

100:                                              ; preds = %99, %86
  %101 = load %struct.perf_tool*, %struct.perf_tool** %11, align 8
  %102 = icmp ne %struct.perf_tool* %101, null
  br i1 %102, label %103, label %123

103:                                              ; preds = %100
  %104 = load %struct.perf_tool*, %struct.perf_tool** %11, align 8
  %105 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %103
  %109 = load %struct.perf_tool*, %struct.perf_tool** %11, align 8
  %110 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %115 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @perf_evlist__sample_id_all(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %113
  %120 = call i32 @dump_printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0))
  %121 = load %struct.perf_tool*, %struct.perf_tool** %11, align 8
  %122 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  br label %123

123:                                              ; preds = %119, %113, %108, %103, %100
  br label %124

124:                                              ; preds = %123, %42
  %125 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  store %struct.perf_session* %125, %struct.perf_session** %6, align 8
  br label %129

126:                                              ; preds = %97, %85
  %127 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %128 = call i32 @perf_session__delete(%struct.perf_session* %127)
  store %struct.perf_session* null, %struct.perf_session** %6, align 8
  br label %129

129:                                              ; preds = %126, %124
  %130 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  ret %struct.perf_session* %130
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local %struct.perf_session* @zalloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @machine__init(i32*, i8*, i32) #1

declare dso_local i32 @hists__init(i32*) #1

declare dso_local i64 @perf_session__open(%struct.perf_session*, i32) #1

declare dso_local i32 @perf_session__set_id_hdr_size(%struct.perf_session*) #1

declare dso_local i64 @perf_session__create_kernel_maps(%struct.perf_session*) #1

declare dso_local i32 @perf_evlist__sample_id_all(i32) #1

declare dso_local i32 @dump_printf(i8*) #1

declare dso_local i32 @perf_session__delete(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
