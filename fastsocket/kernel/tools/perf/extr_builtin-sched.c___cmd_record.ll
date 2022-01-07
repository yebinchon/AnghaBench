; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c___cmd_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c___cmd_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"sched:sched_switch\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"sched:sched_stat_wait\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"sched:sched_stat_sleep\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"sched:sched_stat_iowait\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"sched:sched_stat_runtime\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"sched:sched_process_exit\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"sched:sched_process_fork\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"sched:sched_wakeup\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"sched:sched_migrate_task\00", align 1
@__const.__cmd_record.record_args = private unnamed_addr constant [26 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0)], align 16
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @__cmd_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmd_record(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca [26 x i8*], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = bitcast [26 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([26 x i8*]* @__const.__cmd_record.record_args to i8*), i64 208, i1 false)
  %12 = getelementptr inbounds [26 x i8*], [26 x i8*]* %10, i64 0, i64 0
  %13 = call i32 @ARRAY_SIZE(i8** %12)
  %14 = load i32, i32* %4, align 4
  %15 = add i32 %13, %14
  %16 = sub i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %17, 1
  %19 = call i8** @calloc(i32 %18, i32 8)
  store i8** %19, i8*** %9, align 8
  %20 = load i8**, i8*** %9, align 8
  %21 = icmp eq i8** %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %73

25:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds [26 x i8*], [26 x i8*]* %10, i64 0, i64 0
  %29 = call i32 @ARRAY_SIZE(i8** %28)
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [26 x i8*], [26 x i8*]* %10, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @strdup(i8* %35)
  %37 = load i8**, i8*** %9, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  store i8* %36, i8** %40, align 8
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %26

44:                                               ; preds = %26
  store i32 1, i32* %8, align 4
  br label %45

45:                                               ; preds = %59, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* %54, i8** %58, align 8
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %45

64:                                               ; preds = %45
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i8**, i8*** %9, align 8
  %72 = call i32 @cmd_record(i32 %70, i8** %71, i32* null)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %64, %22
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i8** @calloc(i32, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @cmd_record(i32, i8**, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
