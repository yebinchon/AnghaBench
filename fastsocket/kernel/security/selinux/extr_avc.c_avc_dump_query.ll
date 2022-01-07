; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_avc.c_avc_dump_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_avc.c_avc_dump_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.audit_buffer = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"ssid=%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"scontext=%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" tsid=%d\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" tcontext=%s\00", align 1
@secclass_map = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c" tclass=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, i8*, i8*, i32)* @avc_dump_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_dump_query(%struct.audit_buffer* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.audit_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @security_sid_to_context(i8* %12, i8** %10, i8** %11)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @audit_log_format(%struct.audit_buffer* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %26

20:                                               ; preds = %4
  %21 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @audit_log_format(%struct.audit_buffer* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @kfree(i8* %24)
  br label %26

26:                                               ; preds = %20, %16
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @security_sid_to_context(i8* %27, i8** %10, i8** %11)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @audit_log_format(%struct.audit_buffer* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %41

35:                                               ; preds = %26
  %36 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @audit_log_format(%struct.audit_buffer* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @kfree(i8* %39)
  br label %41

41:                                               ; preds = %35, %31
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @secclass_map, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %43)
  %45 = icmp sge i32 %42, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @secclass_map, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @audit_log_format(%struct.audit_buffer* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  ret void
}

declare dso_local i32 @security_sid_to_context(i8*, i8**, i8**) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
