; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sched.c_ip_vs_scheduler_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sched.c_ip_vs_scheduler_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_scheduler = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ip_vs_%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip_vs_scheduler* @ip_vs_scheduler_get(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ip_vs_scheduler*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.ip_vs_scheduler* @ip_vs_sched_getbyname(i8* %4)
  store %struct.ip_vs_scheduler* %5, %struct.ip_vs_scheduler** %3, align 8
  %6 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %3, align 8
  %7 = icmp eq %struct.ip_vs_scheduler* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @request_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i8*, i8** %2, align 8
  %12 = call %struct.ip_vs_scheduler* @ip_vs_sched_getbyname(i8* %11)
  store %struct.ip_vs_scheduler* %12, %struct.ip_vs_scheduler** %3, align 8
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %3, align 8
  ret %struct.ip_vs_scheduler* %14
}

declare dso_local %struct.ip_vs_scheduler* @ip_vs_sched_getbyname(i8*) #1

declare dso_local i32 @request_module(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
