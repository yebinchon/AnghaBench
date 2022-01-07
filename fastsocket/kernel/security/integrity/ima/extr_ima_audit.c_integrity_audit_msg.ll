; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_audit.c_integrity_audit_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_audit.c_integrity_audit_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32 }
%struct.inode = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.audit_buffer = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ima_audit = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pid=%d uid=%u auid=%u ses=%u\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" op=\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" cause=\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" comm=\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" name=\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" dev=%s ino=%lu\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" res=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @integrity_audit_msg(i32 %0, %struct.inode* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.audit_buffer*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* @ima_audit, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %7
  %19 = load i32, i32* %14, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %91

22:                                               ; preds = %18, %7
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.audit_buffer* @audit_log_start(i32 %25, i32 %26, i32 %27)
  store %struct.audit_buffer* %28, %struct.audit_buffer** %15, align 8
  %29 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.TYPE_7__* (...) @current_cred()
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %37 = call i32 @audit_get_loginuid(%struct.TYPE_8__* %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %39 = call i32 @audit_get_sessionid(%struct.TYPE_8__* %38)
  %40 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %37, i32 %39)
  %41 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %42 = call i32 @audit_log_task_context(%struct.audit_buffer* %41)
  %43 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %44 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @audit_log_string(%struct.audit_buffer* %45, i8* %46)
  %48 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %49 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @audit_log_string(%struct.audit_buffer* %50, i8* %51)
  %53 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %54 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %55, i8* %58)
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %22
  %63 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %64 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %65, i8* %66)
  br label %68

68:                                               ; preds = %62, %22
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = icmp ne %struct.inode* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %73 = load %struct.inode*, %struct.inode** %9, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.inode*, %struct.inode** %9, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %71, %68
  %83 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  %89 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %90 = call i32 @audit_log_end(%struct.audit_buffer* %89)
  br label %91

91:                                               ; preds = %82, %21
  ret void
}

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @current_cred(...) #1

declare dso_local i32 @audit_get_loginuid(%struct.TYPE_8__*) #1

declare dso_local i32 @audit_get_sessionid(%struct.TYPE_8__*) #1

declare dso_local i32 @audit_log_task_context(%struct.audit_buffer*) #1

declare dso_local i32 @audit_log_string(%struct.audit_buffer*, i8*) #1

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i8*) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
