; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_kvm_cmd_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_kvm_cmd_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_kvm_stat = type { i8*, i32, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"vmexit\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SVM\00", align 1
@svm_exit_reasons = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"rec\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"rep\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @kvm_cmd_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_cmd_stat(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.perf_kvm_stat, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %8, i32 0, i32 0
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %8, i32 0, i32 1
  store i32 -1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %8, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %8, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %8, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %8, i32 0, i32 5
  %16 = load i32, i32* @svm_exit_reasons, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  store i32 %17, i32* %15, align 8
  %18 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %8, i32 0, i32 6
  %19 = load i32, i32* @svm_exit_reasons, align 4
  store i32 %19, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32 (...) @print_kvm_stat_usage()
  br label %49

24:                                               ; preds = %3
  %25 = load i8**, i8*** %7, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i8**, i8*** %7, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = call i32 @kvm_events_record(%struct.perf_kvm_stat* %8, i32 %32, i8** %34)
  store i32 %35, i32* %4, align 4
  br label %53

36:                                               ; preds = %24
  %37 = load i8**, i8*** %7, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strncmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i8**, i8*** %7, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = call i32 @kvm_events_report(%struct.perf_kvm_stat* %8, i32 %44, i8** %46)
  store i32 %47, i32* %4, align 4
  br label %53

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %22
  %50 = load i32, i32* %6, align 4
  %51 = load i8**, i8*** %7, align 8
  %52 = call i32 @cmd_stat(i32 %50, i8** %51, i32* null)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %42, %30
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @print_kvm_stat_usage(...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @kvm_events_record(%struct.perf_kvm_stat*, i32, i8**) #1

declare dso_local i32 @kvm_events_report(%struct.perf_kvm_stat*, i32, i8**) #1

declare dso_local i32 @cmd_stat(i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
