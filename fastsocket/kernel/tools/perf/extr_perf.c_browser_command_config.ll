; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_perf.c_browser_command_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_perf.c_browser_command_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pager_config = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"tui.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gtk.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @browser_command_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @browser_command_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pager_config*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.pager_config*
  store %struct.pager_config* %9, %struct.pager_config** %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @prefixcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 4
  %16 = load %struct.pager_config*, %struct.pager_config** %7, align 8
  %17 = getelementptr inbounds %struct.pager_config, %struct.pager_config* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strcmp(i8* %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @perf_config_bool(i8* %22, i8* %23)
  %25 = load %struct.pager_config*, %struct.pager_config** %7, align 8
  %26 = getelementptr inbounds %struct.pager_config, %struct.pager_config* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %13, %3
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @prefixcmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = load %struct.pager_config*, %struct.pager_config** %7, align 8
  %35 = getelementptr inbounds %struct.pager_config, %struct.pager_config* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strcmp(i8* %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %31
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @perf_config_bool(i8* %40, i8* %41)
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 2, i32 0
  %46 = load %struct.pager_config*, %struct.pager_config** %7, align 8
  %47 = getelementptr inbounds %struct.pager_config, %struct.pager_config* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %31, %27
  ret i32 0
}

declare dso_local i32 @prefixcmp(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @perf_config_bool(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
