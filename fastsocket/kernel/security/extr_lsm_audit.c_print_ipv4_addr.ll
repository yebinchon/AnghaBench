; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_lsm_audit.c_print_ipv4_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_lsm_audit.c_print_ipv4_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c" %s=%pI4\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" %s=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, i64, i64, i8*, i8*)* @print_ipv4_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ipv4_addr(%struct.audit_buffer* %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.audit_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = load %struct.audit_buffer*, %struct.audit_buffer** %6, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @audit_log_format(%struct.audit_buffer* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %15, i64* %7)
  br label %17

17:                                               ; preds = %13, %5
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.audit_buffer*, %struct.audit_buffer** %6, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64* @ntohs(i64 %23)
  %25 = call i32 @audit_log_format(%struct.audit_buffer* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %22, i64* %24)
  br label %26

26:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i8*, i64*) #1

declare dso_local i64* @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
