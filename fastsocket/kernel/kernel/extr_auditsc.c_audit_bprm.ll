; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_bprm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_bprm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.audit_context* }
%struct.audit_context = type { i8*, i64 }
%struct.linux_binprm = type { i32, i32, i32 }
%struct.audit_aux_data_execve = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@audit_enabled = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AUDIT_EXECVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_bprm(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca %struct.audit_aux_data_execve*, align 8
  %5 = alloca %struct.audit_context*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.audit_context*, %struct.audit_context** %7, align 8
  store %struct.audit_context* %8, %struct.audit_context** %5, align 8
  %9 = load i32, i32* @audit_enabled, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %13 = icmp ne %struct.audit_context* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %16 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %11, %1
  %20 = phi i1 [ true, %11 ], [ true, %1 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %63

25:                                               ; preds = %19
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.audit_aux_data_execve* @kmalloc(i32 32, i32 %26)
  store %struct.audit_aux_data_execve* %27, %struct.audit_aux_data_execve** %4, align 8
  %28 = load %struct.audit_aux_data_execve*, %struct.audit_aux_data_execve** %4, align 8
  %29 = icmp ne %struct.audit_aux_data_execve* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %63

33:                                               ; preds = %25
  %34 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %35 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.audit_aux_data_execve*, %struct.audit_aux_data_execve** %4, align 8
  %38 = getelementptr inbounds %struct.audit_aux_data_execve, %struct.audit_aux_data_execve* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %40 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.audit_aux_data_execve*, %struct.audit_aux_data_execve** %4, align 8
  %43 = getelementptr inbounds %struct.audit_aux_data_execve, %struct.audit_aux_data_execve* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %45 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.audit_aux_data_execve*, %struct.audit_aux_data_execve** %4, align 8
  %48 = getelementptr inbounds %struct.audit_aux_data_execve, %struct.audit_aux_data_execve* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @AUDIT_EXECVE, align 4
  %50 = load %struct.audit_aux_data_execve*, %struct.audit_aux_data_execve** %4, align 8
  %51 = getelementptr inbounds %struct.audit_aux_data_execve, %struct.audit_aux_data_execve* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %54 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.audit_aux_data_execve*, %struct.audit_aux_data_execve** %4, align 8
  %57 = getelementptr inbounds %struct.audit_aux_data_execve, %struct.audit_aux_data_execve* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load %struct.audit_aux_data_execve*, %struct.audit_aux_data_execve** %4, align 8
  %60 = bitcast %struct.audit_aux_data_execve* %59 to i8*
  %61 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %62 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %33, %30, %24
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.audit_aux_data_execve* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
