; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_audit_get_stamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_audit_get_stamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.audit_context = type { i32 }

@CURRENT_TIME = common dso_local global %struct.timespec zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_context*, %struct.timespec*, i32*)* @audit_get_stamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_get_stamp(%struct.audit_context* %0, %struct.timespec* %1, i32* %2) #0 {
  %4 = alloca %struct.audit_context*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i32*, align 8
  store %struct.audit_context* %0, %struct.audit_context** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %8 = icmp ne %struct.audit_context* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %11 = load %struct.timespec*, %struct.timespec** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @auditsc_get_stamp(%struct.audit_context* %10, %struct.timespec* %11, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9, %3
  %16 = load %struct.timespec*, %struct.timespec** %5, align 8
  %17 = bitcast %struct.timespec* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.timespec* @CURRENT_TIME to i8*), i64 4, i1 false)
  %18 = call i32 (...) @audit_serial()
  %19 = load i32*, i32** %6, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %15, %9
  ret void
}

declare dso_local i32 @auditsc_get_stamp(%struct.audit_context*, %struct.timespec*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @audit_serial(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
