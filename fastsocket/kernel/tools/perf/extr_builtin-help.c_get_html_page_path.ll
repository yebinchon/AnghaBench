; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-help.c_get_html_page_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-help.c_get_html_page_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.stat = type { i32 }

@PERF_HTML_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s/perf.html\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"'%s': not a documentation directory.\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s/%s.html\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i8*)* @get_html_page_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_html_page_path(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @PERF_HTML_PATH, align 4
  %9 = call i8* @system_path(i32 %8)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @mkpath(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = call i64 @stat(i32 %11, %struct.stat* %6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @S_ISREG(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %2
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %3, align 4
  br label %29

22:                                               ; preds = %14
  %23 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %24 = call i32 @strbuf_init(%struct.strbuf* %23, i32 0)
  %25 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strbuf_addf(%struct.strbuf* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %26, i8* %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i8* @system_path(i32) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @mkpath(i8*, i8*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
