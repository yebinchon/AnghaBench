; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_log_fcaps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_log_fcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.audit_names = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"cap_fp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"cap_fi\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c" cap_fe=%d cap_fver=%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, %struct.audit_names*)* @audit_log_fcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_log_fcaps(%struct.audit_buffer* %0, %struct.audit_names* %1) #0 {
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca %struct.audit_names*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.audit_buffer* %0, %struct.audit_buffer** %3, align 8
  store %struct.audit_names* %1, %struct.audit_names** %4, align 8
  %8 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %9 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32* %10, i32** %5, align 8
  %11 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %12 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32* %13, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cap_isclear(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @audit_log_cap(%struct.audit_buffer* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %20)
  store i32 1, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cap_isclear(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @audit_log_cap(%struct.audit_buffer* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %36 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %37 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %41 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @audit_log_format(%struct.audit_buffer* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @cap_isclear(i32) #1

declare dso_local i32 @audit_log_cap(%struct.audit_buffer*, i8*, i32*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
