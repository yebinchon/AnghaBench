; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_audit_log_common_recv_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_audit_log_common_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }

@audit_enabled = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"user pid=%d uid=%u auid=%u ses=%u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" ssid=%u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" subj=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_buffer**, i32, i8*, i8*, i32, i8*, i8*)* @audit_log_common_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_log_common_recv_msg(%struct.audit_buffer** %0, i32 %1, i8* %2, i8* %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.audit_buffer**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.audit_buffer** %0, %struct.audit_buffer*** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %19 = load i32, i32* @audit_enabled, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load %struct.audit_buffer**, %struct.audit_buffer*** %9, align 8
  store %struct.audit_buffer* null, %struct.audit_buffer** %22, align 8
  %23 = load i32, i32* %16, align 4
  store i32 %23, i32* %8, align 4
  br label %59

24:                                               ; preds = %7
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.audit_buffer* @audit_log_start(i32* null, i32 %25, i32 %26)
  %28 = load %struct.audit_buffer**, %struct.audit_buffer*** %9, align 8
  store %struct.audit_buffer* %27, %struct.audit_buffer** %28, align 8
  %29 = load %struct.audit_buffer**, %struct.audit_buffer*** %9, align 8
  %30 = load %struct.audit_buffer*, %struct.audit_buffer** %29, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 (%struct.audit_buffer*, i8*, i8*, ...) @audit_log_format(%struct.audit_buffer* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32, i32 %33, i8* %34)
  %36 = load i8*, i8** %15, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %24
  %39 = load i8*, i8** %15, align 8
  %40 = call i32 @security_secid_to_secctx(i8* %39, i8** %17, i8** %18)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.audit_buffer**, %struct.audit_buffer*** %9, align 8
  %45 = load %struct.audit_buffer*, %struct.audit_buffer** %44, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = call i32 (%struct.audit_buffer*, i8*, i8*, ...) @audit_log_format(%struct.audit_buffer* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %56

48:                                               ; preds = %38
  %49 = load %struct.audit_buffer**, %struct.audit_buffer*** %9, align 8
  %50 = load %struct.audit_buffer*, %struct.audit_buffer** %49, align 8
  %51 = load i8*, i8** %17, align 8
  %52 = call i32 (%struct.audit_buffer*, i8*, i8*, ...) @audit_log_format(%struct.audit_buffer* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i8*, i8** %17, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = call i32 @security_release_secctx(i8* %53, i8* %54)
  br label %56

56:                                               ; preds = %48, %43
  br label %57

57:                                               ; preds = %56, %24
  %58 = load i32, i32* %16, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %21
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local %struct.audit_buffer* @audit_log_start(i32*, i32, i32) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i8*, ...) #1

declare dso_local i32 @security_secid_to_secctx(i8*, i8**, i8**) #1

declare dso_local i32 @security_release_secctx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
