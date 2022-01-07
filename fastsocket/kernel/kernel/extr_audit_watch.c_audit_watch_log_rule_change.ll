; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_watch.c_audit_watch_log_rule_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_watch.c_audit_watch_log_rule_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_krule = type { i32, i32 }
%struct.audit_watch = type { i32 }
%struct.audit_buffer = type { i32 }

@audit_enabled = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@AUDIT_CONFIG_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"auid=%u ses=%u op=\00", align 1
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" path=\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" list=%d res=1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_krule*, %struct.audit_watch*, i8*)* @audit_watch_log_rule_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_watch_log_rule_change(%struct.audit_krule* %0, %struct.audit_watch* %1, i8* %2) #0 {
  %4 = alloca %struct.audit_krule*, align 8
  %5 = alloca %struct.audit_watch*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.audit_buffer*, align 8
  store %struct.audit_krule* %0, %struct.audit_krule** %4, align 8
  store %struct.audit_watch* %1, %struct.audit_watch** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i64, i64* @audit_enabled, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %3
  %11 = load i32, i32* @GFP_NOFS, align 4
  %12 = load i32, i32* @AUDIT_CONFIG_CHANGE, align 4
  %13 = call %struct.audit_buffer* @audit_log_start(i32* null, i32 %11, i32 %12)
  store %struct.audit_buffer* %13, %struct.audit_buffer** %7, align 8
  %14 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %15 = load i32, i32* @current, align 4
  %16 = call i32 @audit_get_loginuid(i32 %15)
  %17 = load i32, i32* @current, align 4
  %18 = call i32 @audit_get_sessionid(i32 %17)
  %19 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18)
  %20 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @audit_log_string(%struct.audit_buffer* %20, i8* %21)
  %23 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %24 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %26 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %27 = getelementptr inbounds %struct.audit_watch, %struct.audit_watch* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %25, i32 %28)
  %30 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %31 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %32 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @audit_log_key(%struct.audit_buffer* %30, i32 %33)
  %35 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %36 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %37 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %41 = call i32 @audit_log_end(%struct.audit_buffer* %40)
  br label %42

42:                                               ; preds = %10, %3
  ret void
}

declare dso_local %struct.audit_buffer* @audit_log_start(i32*, i32, i32) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @audit_get_loginuid(i32) #1

declare dso_local i32 @audit_get_sessionid(i32) #1

declare dso_local i32 @audit_log_string(%struct.audit_buffer*, i8*) #1

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i32) #1

declare dso_local i32 @audit_log_key(%struct.audit_buffer*, i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
