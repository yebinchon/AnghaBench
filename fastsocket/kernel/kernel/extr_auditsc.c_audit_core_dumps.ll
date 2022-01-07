; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_core_dumps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_core_dumps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.audit_buffer = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@audit_enabled = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_ANOM_ABEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"auid=%u uid=%u gid=%u ses=%u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" ssid=%u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" subj=%s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" pid=%d comm=\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" sig=%ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_core_dumps(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %12 = call i32 @audit_get_loginuid(%struct.TYPE_5__* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %14 = call i32 @audit_get_sessionid(%struct.TYPE_5__* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @audit_enabled, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %70

18:                                               ; preds = %1
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @SIGQUIT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %70

23:                                               ; preds = %18
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = load i32, i32* @AUDIT_ANOM_ABEND, align 4
  %26 = call %struct.audit_buffer* @audit_log_start(i32* null, i32 %24, i32 %25)
  store %struct.audit_buffer* %26, %struct.audit_buffer** %3, align 8
  %27 = call i32 @current_uid_gid(i32* %6, i32* %7)
  %28 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %35 = call i32 @security_task_getsecid(%struct.TYPE_5__* %34, i64* %4)
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %23
  store i8* null, i8** %9, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @security_secid_to_secctx(i64 %39, i8** %9, i64* %10)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  br label %53

46:                                               ; preds = %38
  %47 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @security_release_secctx(i8* %50, i64 %51)
  br label %53

53:                                               ; preds = %46, %42
  br label %54

54:                                               ; preds = %53, %23
  %55 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %60, i32 %63)
  %65 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %66 = load i64, i64* %2, align 8
  %67 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %66)
  %68 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %69 = call i32 @audit_log_end(%struct.audit_buffer* %68)
  br label %70

70:                                               ; preds = %54, %22, %17
  ret void
}

declare dso_local i32 @audit_get_loginuid(%struct.TYPE_5__*) #1

declare dso_local i32 @audit_get_sessionid(%struct.TYPE_5__*) #1

declare dso_local %struct.audit_buffer* @audit_log_start(i32*, i32, i32) #1

declare dso_local i32 @current_uid_gid(i32*, i32*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @security_task_getsecid(%struct.TYPE_5__*, i64*) #1

declare dso_local i64 @security_secid_to_secctx(i64, i8**, i64*) #1

declare dso_local i32 @security_release_secctx(i8*, i64) #1

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
