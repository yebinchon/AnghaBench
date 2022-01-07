; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_get_exit_reason.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_get_exit_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_kvm_stat = type { i32, i32, %struct.exit_reasons_table* }
%struct.exit_reasons_table = type { i64, i8* }

@.str = private unnamed_addr constant [34 x i8] c"unknown kvm exit code:%lld on %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.perf_kvm_stat*, i64)* @get_exit_reason to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_exit_reason(%struct.perf_kvm_stat* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.perf_kvm_stat*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.exit_reasons_table*, align 8
  store %struct.perf_kvm_stat* %0, %struct.perf_kvm_stat** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %4, align 8
  %9 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %4, align 8
  %12 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %11, i32 0, i32 2
  %13 = load %struct.exit_reasons_table*, %struct.exit_reasons_table** %12, align 8
  store %struct.exit_reasons_table* %13, %struct.exit_reasons_table** %7, align 8
  br label %14

14:                                               ; preds = %28, %2
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.exit_reasons_table*, %struct.exit_reasons_table** %7, align 8
  %20 = getelementptr inbounds %struct.exit_reasons_table, %struct.exit_reasons_table* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.exit_reasons_table*, %struct.exit_reasons_table** %7, align 8
  %26 = getelementptr inbounds %struct.exit_reasons_table, %struct.exit_reasons_table* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %3, align 8
  br label %37

28:                                               ; preds = %18
  %29 = load %struct.exit_reasons_table*, %struct.exit_reasons_table** %7, align 8
  %30 = getelementptr inbounds %struct.exit_reasons_table, %struct.exit_reasons_table* %29, i32 1
  store %struct.exit_reasons_table* %30, %struct.exit_reasons_table** %7, align 8
  br label %14

31:                                               ; preds = %14
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %4, align 8
  %34 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %35)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %37

37:                                               ; preds = %31, %24
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local i32 @pr_err(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
