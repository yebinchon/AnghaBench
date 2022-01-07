; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_alloc_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_alloc_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_names = type { i32, i64, i8, i32 }
%struct.audit_context = type { i64, i32, i32, %struct.audit_names* }

@AUDIT_NAMES = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audit_names* (%struct.audit_context*, i8)* @audit_alloc_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audit_names* @audit_alloc_name(%struct.audit_context* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.audit_names*, align 8
  %4 = alloca %struct.audit_context*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.audit_names*, align 8
  store %struct.audit_context* %0, %struct.audit_context** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %8 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AUDIT_NAMES, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %14 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %13, i32 0, i32 3
  %15 = load %struct.audit_names*, %struct.audit_names** %14, align 8
  %16 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %17 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %15, i64 %18
  store %struct.audit_names* %19, %struct.audit_names** %6, align 8
  %20 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %21 = call i32 @memset(%struct.audit_names* %20, i32 0, i32 24)
  br label %31

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_NOFS, align 4
  %24 = call %struct.audit_names* @kzalloc(i32 24, i32 %23)
  store %struct.audit_names* %24, %struct.audit_names** %6, align 8
  %25 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %26 = icmp ne %struct.audit_names* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store %struct.audit_names* null, %struct.audit_names** %3, align 8
  br label %47

28:                                               ; preds = %22
  %29 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %30 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %12
  %32 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %33 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %32, i32 0, i32 1
  store i64 -1, i64* %33, align 8
  %34 = load i8, i8* %5, align 1
  %35 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %36 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %35, i32 0, i32 2
  store i8 %34, i8* %36, align 8
  %37 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  %38 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %37, i32 0, i32 3
  %39 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %40 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %39, i32 0, i32 2
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  %42 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %43 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.audit_names*, %struct.audit_names** %6, align 8
  store %struct.audit_names* %46, %struct.audit_names** %3, align 8
  br label %47

47:                                               ; preds = %31, %27
  %48 = load %struct.audit_names*, %struct.audit_names** %3, align 8
  ret %struct.audit_names* %48
}

declare dso_local i32 @memset(%struct.audit_names*, i32, i32) #1

declare dso_local %struct.audit_names* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
