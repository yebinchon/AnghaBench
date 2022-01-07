; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_bprm_committing_creds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_bprm_committing_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i64, i32 }
%struct.TYPE_8__ = type { %struct.rlimit* }
%struct.rlimit = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.rlimit* }
%struct.linux_binprm = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.task_security_struct* }
%struct.task_security_struct = type { i64, i64 }

@current = common dso_local global %struct.TYPE_9__* null, align 8
@SECCLASS_PROCESS = common dso_local global i32 0, align 4
@PROCESS__RLIMITINH = common dso_local global i32 0, align 4
@RLIM_NLIMITS = common dso_local global i32 0, align 4
@init_task = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@RLIMIT_CPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linux_binprm*)* @selinux_bprm_committing_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selinux_bprm_committing_creds(%struct.linux_binprm* %0) #0 {
  %2 = alloca %struct.linux_binprm*, align 8
  %3 = alloca %struct.task_security_struct*, align 8
  %4 = alloca %struct.rlimit*, align 8
  %5 = alloca %struct.rlimit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %2, align 8
  %8 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %9 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.task_security_struct*, %struct.task_security_struct** %11, align 8
  store %struct.task_security_struct* %12, %struct.task_security_struct** %3, align 8
  %13 = load %struct.task_security_struct*, %struct.task_security_struct** %3, align 8
  %14 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.task_security_struct*, %struct.task_security_struct** %3, align 8
  %17 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %86

21:                                               ; preds = %1
  %22 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %23 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @flush_unauthorized_files(%struct.TYPE_11__* %24, i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.task_security_struct*, %struct.task_security_struct** %3, align 8
  %32 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.task_security_struct*, %struct.task_security_struct** %3, align 8
  %35 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @SECCLASS_PROCESS, align 4
  %38 = load i32, i32* @PROCESS__RLIMITINH, align 4
  %39 = call i32 @avc_has_perm(i64 %33, i64 %36, i32 %37, i32 %38, i32* null)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %71, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @RLIM_NLIMITS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.rlimit*, %struct.rlimit** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %52, i64 %54
  store %struct.rlimit* %55, %struct.rlimit** %4, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @init_task, i32 0, i32 0), align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.rlimit*, %struct.rlimit** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %58, i64 %60
  store %struct.rlimit* %61, %struct.rlimit** %5, align 8
  %62 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %63 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rlimit*, %struct.rlimit** %5, align 8
  %66 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @min(i32 %64, i32 %67)
  %69 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %70 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %47
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %43

74:                                               ; preds = %43
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.rlimit*, %struct.rlimit** %79, align 8
  %81 = load i64, i64* @RLIMIT_CPU, align 8
  %82 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %80, i64 %81
  %83 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @update_rlimit_cpu(%struct.TYPE_9__* %75, i32 %84)
  br label %86

86:                                               ; preds = %20, %74, %21
  ret void
}

declare dso_local i32 @flush_unauthorized_files(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @avc_has_perm(i64, i64, i32, i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @update_rlimit_cpu(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
