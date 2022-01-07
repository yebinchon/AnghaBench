; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_avc.c_avc_dump_av.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_avc.c_avc_dump_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8** }
%struct.audit_buffer = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c" null\00", align 1
@secclass_map = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, i32, i32)* @avc_dump_av to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_dump_av(%struct.audit_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.audit_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.audit_buffer* %0, %struct.audit_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %14 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %68

15:                                               ; preds = %3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @secclass_map, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  store i8** %22, i8*** %7, align 8
  %23 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %24 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %25

25:                                               ; preds = %53, %15
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 32
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load i8**, i8*** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %43 = load i8**, i8*** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* %9, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %41, %34, %29
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %25

58:                                               ; preds = %25
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %67 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %12
  ret void
}

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
