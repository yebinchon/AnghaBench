; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_free_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_free_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_entry = type { i32, %struct.audit_entry*, %struct.audit_krule }
%struct.audit_krule = type { i32, %struct.audit_field*, %struct.audit_field*, i64 }
%struct.audit_field = type { i32, %struct.audit_field*, %struct.audit_krule }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_entry*)* @audit_free_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_free_rule(%struct.audit_entry* %0) #0 {
  %2 = alloca %struct.audit_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_krule*, align 8
  %5 = alloca %struct.audit_field*, align 8
  store %struct.audit_entry* %0, %struct.audit_entry** %2, align 8
  %6 = load %struct.audit_entry*, %struct.audit_entry** %2, align 8
  %7 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %6, i32 0, i32 2
  store %struct.audit_krule* %7, %struct.audit_krule** %4, align 8
  %8 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %9 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %14 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @audit_put_watch(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %19 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %18, i32 0, i32 2
  %20 = load %struct.audit_field*, %struct.audit_field** %19, align 8
  %21 = icmp ne %struct.audit_field* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %26 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %31 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %30, i32 0, i32 2
  %32 = load %struct.audit_field*, %struct.audit_field** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %32, i64 %34
  store %struct.audit_field* %35, %struct.audit_field** %5, align 8
  %36 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %37 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %36, i32 0, i32 1
  %38 = load %struct.audit_field*, %struct.audit_field** %37, align 8
  %39 = call i32 @kfree(%struct.audit_field* %38)
  %40 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %41 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @security_audit_rule_free(i32 %42)
  br label %44

44:                                               ; preds = %29
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %23

47:                                               ; preds = %23
  br label %48

48:                                               ; preds = %47, %17
  %49 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %50 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %49, i32 0, i32 2
  %51 = load %struct.audit_field*, %struct.audit_field** %50, align 8
  %52 = call i32 @kfree(%struct.audit_field* %51)
  %53 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %54 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %53, i32 0, i32 1
  %55 = load %struct.audit_field*, %struct.audit_field** %54, align 8
  %56 = call i32 @kfree(%struct.audit_field* %55)
  %57 = load %struct.audit_entry*, %struct.audit_entry** %2, align 8
  %58 = bitcast %struct.audit_entry* %57 to %struct.audit_field*
  %59 = call i32 @kfree(%struct.audit_field* %58)
  ret void
}

declare dso_local i32 @audit_put_watch(i64) #1

declare dso_local i32 @kfree(%struct.audit_field*) #1

declare dso_local i32 @security_audit_rule_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
