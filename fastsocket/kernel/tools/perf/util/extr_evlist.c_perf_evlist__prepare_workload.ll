; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__prepare_workload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__prepare_workload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64* }
%struct.perf_record_opts = type { i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"failed to create 'ready' pipe\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to create 'go' pipe\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"failed to fork\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"unable to read pipe\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evlist__prepare_workload(%struct.perf_evlist* %0, %struct.perf_record_opts* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_evlist*, align 8
  %6 = alloca %struct.perf_record_opts*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i8, align 1
  store %struct.perf_evlist* %0, %struct.perf_evlist** %5, align 8
  store %struct.perf_record_opts* %1, %struct.perf_record_opts** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %12 = call i64 @pipe(i32* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %136

16:                                               ; preds = %3
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %18 = call i64 @pipe(i32* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %129

22:                                               ; preds = %16
  %23 = call i64 (...) @fork()
  %24 = load %struct.perf_evlist*, %struct.perf_evlist** %5, align 8
  %25 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.perf_evlist*, %struct.perf_evlist** %5, align 8
  %28 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %122

34:                                               ; preds = %22
  %35 = load %struct.perf_evlist*, %struct.perf_evlist** %5, align 8
  %36 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %84, label %40

40:                                               ; preds = %34
  %41 = load %struct.perf_record_opts*, %struct.perf_record_opts** %6, align 8
  %42 = getelementptr inbounds %struct.perf_record_opts, %struct.perf_record_opts* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @dup2(i32 2, i32 1)
  br label %47

47:                                               ; preds = %45, %40
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @close(i32 %49)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @close(i32 %52)
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @F_SETFD, align 4
  %57 = load i32, i32* @FD_CLOEXEC, align 4
  %58 = call i32 @fcntl(i32 %55, i32 %56, i32 %57)
  %59 = load i8**, i8*** %7, align 8
  %60 = call i32 @execvp(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @close(i32 %62)
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @read(i32 %65, i8* %10, i32 1)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %47
  %69 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %47
  %71 = load i8**, i8*** %7, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i8**, i8*** %7, align 8
  %75 = call i32 @execvp(i8* %73, i8** %74)
  %76 = load i8**, i8*** %7, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @perror(i8* %78)
  %80 = call i32 (...) @getppid()
  %81 = load i32, i32* @SIGUSR1, align 4
  %82 = call i32 @kill(i32 %80, i32 %81)
  %83 = call i32 @exit(i32 -1) #3
  unreachable

84:                                               ; preds = %34
  %85 = load %struct.perf_record_opts*, %struct.perf_record_opts** %6, align 8
  %86 = getelementptr inbounds %struct.perf_record_opts, %struct.perf_record_opts* %85, i32 0, i32 0
  %87 = call i64 @perf_target__none(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.perf_evlist*, %struct.perf_evlist** %5, align 8
  %91 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.perf_evlist*, %struct.perf_evlist** %5, align 8
  %95 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 0
  store i64 %93, i64* %99, align 8
  br label %100

100:                                              ; preds = %89, %84
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @close(i32 %102)
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @close(i32 %105)
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @read(i32 %108, i8* %10, i32 1)
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %122

113:                                              ; preds = %100
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.perf_evlist*, %struct.perf_evlist** %5, align 8
  %117 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 8
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @close(i32 %120)
  store i32 0, i32* %4, align 4
  br label %136

122:                                              ; preds = %111, %32
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @close(i32 %124)
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @close(i32 %127)
  br label %129

129:                                              ; preds = %122, %20
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @close(i32 %131)
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @close(i32 %134)
  store i32 -1, i32* %4, align 4
  br label %136

136:                                              ; preds = %129, %113, %14
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getppid(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @perf_target__none(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
