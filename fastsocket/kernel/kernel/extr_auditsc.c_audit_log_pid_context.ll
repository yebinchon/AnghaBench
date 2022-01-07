; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_log_pid_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_log_pid_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_context = type { i32 }
%struct.audit_buffer = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_OBJ_PID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"opid=%d oauid=%d ouid=%d oses=%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" obj=(none)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" obj=%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" ocomm=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_context*, i32, i32, i32, i32, i64, i8*)* @audit_log_pid_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_log_pid_context(%struct.audit_context* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.audit_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.audit_buffer*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.audit_context* %0, %struct.audit_context** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i32, i32* @AUDIT_OBJ_PID, align 4
  %23 = call %struct.audit_buffer* @audit_log_start(%struct.audit_context* %20, i32 %21, i32 %22)
  store %struct.audit_buffer* %23, %struct.audit_buffer** %16, align 8
  %24 = load %struct.audit_buffer*, %struct.audit_buffer** %16, align 8
  %25 = icmp ne %struct.audit_buffer* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* %19, align 4
  store i32 %27, i32* %8, align 4
  br label %61

28:                                               ; preds = %7
  %29 = load %struct.audit_buffer*, %struct.audit_buffer** %16, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i64, i64* %14, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %28
  %38 = load i64, i64* %14, align 8
  %39 = call i64 @security_secid_to_secctx(i64 %38, i8** %17, i64* %18)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.audit_buffer*, %struct.audit_buffer** %16, align 8
  %43 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %51

44:                                               ; preds = %37
  %45 = load %struct.audit_buffer*, %struct.audit_buffer** %16, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  %48 = load i8*, i8** %17, align 8
  %49 = load i64, i64* %18, align 8
  %50 = call i32 @security_release_secctx(i8* %48, i64 %49)
  br label %51

51:                                               ; preds = %44, %41
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.audit_buffer*, %struct.audit_buffer** %16, align 8
  %54 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.audit_buffer*, %struct.audit_buffer** %16, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %55, i8* %56)
  %58 = load %struct.audit_buffer*, %struct.audit_buffer** %16, align 8
  %59 = call i32 @audit_log_end(%struct.audit_buffer* %58)
  %60 = load i32, i32* %19, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %52, %26
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local %struct.audit_buffer* @audit_log_start(%struct.audit_context*, i32, i32) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i64 @security_secid_to_secctx(i64, i8**, i64*) #1

declare dso_local i32 @security_release_secctx(i8*, i64) #1

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i8*) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
