; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_dump_masked_av.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_dump_masked_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8**, %struct.class_datum** }
%struct.class_datum = type { %struct.TYPE_6__, %struct.common_datum* }
%struct.TYPE_6__ = type { i32 }
%struct.common_datum = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.context = type { i32 }
%struct.audit_buffer = type { i32 }

@policydb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@dump_masked_av_helper = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AUDIT_SELINUX_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"op=security_compute_av reason=%s scontext=%s tcontext=%s tclass=%s perms=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.context*, i32, i32, i8*)* @security_dump_masked_av to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @security_dump_masked_av(%struct.context* %0, %struct.context* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.context*, align 8
  %7 = alloca %struct.context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.common_datum*, align 8
  %12 = alloca %struct.class_datum*, align 8
  %13 = alloca %struct.audit_buffer*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [32 x i8*], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %6, align 8
  store %struct.context* %1, %struct.context** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  br label %132

25:                                               ; preds = %5
  %26 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @policydb, i32 0, i32 0), align 8
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %26, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %14, align 8
  %32 = load %struct.class_datum**, %struct.class_datum*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @policydb, i32 0, i32 1), align 8
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.class_datum*, %struct.class_datum** %32, i64 %35
  %37 = load %struct.class_datum*, %struct.class_datum** %36, align 8
  store %struct.class_datum* %37, %struct.class_datum** %12, align 8
  %38 = load %struct.class_datum*, %struct.class_datum** %12, align 8
  %39 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %38, i32 0, i32 1
  %40 = load %struct.common_datum*, %struct.common_datum** %39, align 8
  store %struct.common_datum* %40, %struct.common_datum** %11, align 8
  %41 = load %struct.common_datum*, %struct.common_datum** %11, align 8
  %42 = icmp ne %struct.common_datum* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %25
  %44 = load %struct.common_datum*, %struct.common_datum** %11, align 8
  %45 = getelementptr inbounds %struct.common_datum, %struct.common_datum* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @dump_masked_av_helper, align 4
  %49 = getelementptr inbounds [32 x i8*], [32 x i8*]* %17, i64 0, i64 0
  %50 = call i64 @hashtab_map(i32 %47, i32 %48, i8** %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %127

53:                                               ; preds = %43, %25
  %54 = load %struct.class_datum*, %struct.class_datum** %12, align 8
  %55 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @dump_masked_av_helper, align 4
  %59 = getelementptr inbounds [32 x i8*], [32 x i8*]* %17, i64 0, i64 0
  %60 = call i64 @hashtab_map(i32 %57, i32 %58, i8** %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %127

63:                                               ; preds = %53
  %64 = load %struct.context*, %struct.context** %6, align 8
  %65 = call i64 @context_struct_to_string(%struct.context* %64, i8** %15, i32* %19)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %127

68:                                               ; preds = %63
  %69 = load %struct.context*, %struct.context** %7, align 8
  %70 = call i64 @context_struct_to_string(%struct.context* %69, i8** %16, i32* %19)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %127

73:                                               ; preds = %68
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @GFP_ATOMIC, align 4
  %78 = load i32, i32* @AUDIT_SELINUX_ERR, align 4
  %79 = call %struct.audit_buffer* @audit_log_start(i32 %76, i32 %77, i32 %78)
  store %struct.audit_buffer* %79, %struct.audit_buffer** %13, align 8
  %80 = load %struct.audit_buffer*, %struct.audit_buffer** %13, align 8
  %81 = icmp ne %struct.audit_buffer* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  br label %127

83:                                               ; preds = %73
  %84 = load %struct.audit_buffer*, %struct.audit_buffer** %13, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = call i32 (%struct.audit_buffer*, i8*, i8*, i8*, ...) @audit_log_format(%struct.audit_buffer* %84, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %85, i8* %86, i8* %87, i8* %88)
  store i32 0, i32* %18, align 4
  br label %90

90:                                               ; preds = %121, %83
  %91 = load i32, i32* %18, align 4
  %92 = icmp slt i32 %91, 32
  br i1 %92, label %93, label %124

93:                                               ; preds = %90
  %94 = load i32, i32* %18, align 4
  %95 = shl i32 1, %94
  store i32 %95, i32* %21, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %121

101:                                              ; preds = %93
  %102 = load %struct.audit_buffer*, %struct.audit_buffer** %13, align 8
  %103 = load i32, i32* %20, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %107 = load i32, i32* %18, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [32 x i8*], [32 x i8*]* %17, i64 0, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %101
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [32 x i8*], [32 x i8*]* %17, i64 0, i64 %114
  %116 = load i8*, i8** %115, align 8
  br label %118

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117, %112
  %119 = phi i8* [ %116, %112 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %117 ]
  %120 = call i32 (%struct.audit_buffer*, i8*, i8*, i8*, ...) @audit_log_format(%struct.audit_buffer* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %106, i8* %119)
  store i32 1, i32* %20, align 4
  br label %121

121:                                              ; preds = %118, %100
  %122 = load i32, i32* %18, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %18, align 4
  br label %90

124:                                              ; preds = %90
  %125 = load %struct.audit_buffer*, %struct.audit_buffer** %13, align 8
  %126 = call i32 @audit_log_end(%struct.audit_buffer* %125)
  br label %127

127:                                              ; preds = %124, %82, %72, %67, %62, %52
  %128 = load i8*, i8** %16, align 8
  %129 = call i32 @kfree(i8* %128)
  %130 = load i8*, i8** %15, align 8
  %131 = call i32 @kfree(i8* %130)
  br label %132

132:                                              ; preds = %127, %24
  ret void
}

declare dso_local i64 @hashtab_map(i32, i32, i8**) #1

declare dso_local i64 @context_struct_to_string(%struct.context*, i8**, i32*) #1

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
