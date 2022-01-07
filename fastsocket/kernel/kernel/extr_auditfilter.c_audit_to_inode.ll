; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_to_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_to_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_krule = type { i64, %struct.audit_field*, i64, i64 }
%struct.audit_field = type { i64 }

@AUDIT_FILTER_EXIT = common dso_local global i64 0, align 8
@Audit_equal = common dso_local global i64 0, align 8
@Audit_not_equal = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_krule*, %struct.audit_field*)* @audit_to_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_to_inode(%struct.audit_krule* %0, %struct.audit_field* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_krule*, align 8
  %5 = alloca %struct.audit_field*, align 8
  store %struct.audit_krule* %0, %struct.audit_krule** %4, align 8
  store %struct.audit_field* %1, %struct.audit_field** %5, align 8
  %6 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %7 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AUDIT_FILTER_EXIT, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %38, label %11

11:                                               ; preds = %2
  %12 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %13 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %11
  %17 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %18 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %17, i32 0, i32 1
  %19 = load %struct.audit_field*, %struct.audit_field** %18, align 8
  %20 = icmp ne %struct.audit_field* %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %16
  %22 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %23 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %21
  %27 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %28 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @Audit_equal, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %34 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @Audit_not_equal, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %21, %16, %11, %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %32, %26
  %42 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %43 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %44 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %43, i32 0, i32 1
  store %struct.audit_field* %42, %struct.audit_field** %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
