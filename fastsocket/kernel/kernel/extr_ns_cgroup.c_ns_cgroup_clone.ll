; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ns_cgroup.c_ns_cgroup_clone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ns_cgroup.c_ns_cgroup_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pid = type { i32 }

@PROC_NUMBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ns_subsys = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns_cgroup_clone(%struct.task_struct* %0, %struct.pid* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.pid*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.pid* %1, %struct.pid** %4, align 8
  %7 = load i32, i32* @PROC_NUMBUF, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i32, i32* @PROC_NUMBUF, align 4
  %12 = load %struct.pid*, %struct.pid** %4, align 8
  %13 = call i32 @pid_vnr(%struct.pid* %12)
  %14 = call i32 @snprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = call i32 @cgroup_clone(%struct.task_struct* %15, i32* @ns_subsys, i8* %10)
  %17 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %17)
  ret i32 %16
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @pid_vnr(%struct.pid*) #2

declare dso_local i32 @cgroup_clone(%struct.task_struct*, i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
