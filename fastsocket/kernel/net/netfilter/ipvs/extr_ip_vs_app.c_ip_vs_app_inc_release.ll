; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_app_inc_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_app_inc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_app = type { %struct.ip_vs_app*, i32, i32, i32, i32 }
%struct.ip_vs_protocol = type { i32, i32 (%struct.ip_vs_app.0*)* }
%struct.ip_vs_app.0 = type opaque

@.str = private unnamed_addr constant [27 x i8] c"%s App %s:%u unregistered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_app*)* @ip_vs_app_inc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_app_inc_release(%struct.ip_vs_app* %0) #0 {
  %2 = alloca %struct.ip_vs_app*, align 8
  %3 = alloca %struct.ip_vs_protocol*, align 8
  store %struct.ip_vs_app* %0, %struct.ip_vs_app** %2, align 8
  %4 = load %struct.ip_vs_app*, %struct.ip_vs_app** %2, align 8
  %5 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ip_vs_protocol* @ip_vs_proto_get(i32 %6)
  store %struct.ip_vs_protocol* %7, %struct.ip_vs_protocol** %3, align 8
  %8 = icmp ne %struct.ip_vs_protocol* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %42

10:                                               ; preds = %1
  %11 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %3, align 8
  %12 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %11, i32 0, i32 1
  %13 = load i32 (%struct.ip_vs_app.0*)*, i32 (%struct.ip_vs_app.0*)** %12, align 8
  %14 = icmp ne i32 (%struct.ip_vs_app.0*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %3, align 8
  %17 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %16, i32 0, i32 1
  %18 = load i32 (%struct.ip_vs_app.0*)*, i32 (%struct.ip_vs_app.0*)** %17, align 8
  %19 = load %struct.ip_vs_app*, %struct.ip_vs_app** %2, align 8
  %20 = bitcast %struct.ip_vs_app* %19 to %struct.ip_vs_app.0*
  %21 = call i32 %18(%struct.ip_vs_app.0* %20)
  br label %22

22:                                               ; preds = %15, %10
  %23 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %3, align 8
  %24 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ip_vs_app*, %struct.ip_vs_app** %2, align 8
  %27 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ip_vs_app*, %struct.ip_vs_app** %2, align 8
  %30 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IP_VS_DBG(i32 9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31)
  %33 = load %struct.ip_vs_app*, %struct.ip_vs_app** %2, align 8
  %34 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %33, i32 0, i32 1
  %35 = call i32 @list_del(i32* %34)
  %36 = load %struct.ip_vs_app*, %struct.ip_vs_app** %2, align 8
  %37 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %36, i32 0, i32 0
  %38 = load %struct.ip_vs_app*, %struct.ip_vs_app** %37, align 8
  %39 = call i32 @kfree(%struct.ip_vs_app* %38)
  %40 = load %struct.ip_vs_app*, %struct.ip_vs_app** %2, align 8
  %41 = call i32 @kfree(%struct.ip_vs_app* %40)
  br label %42

42:                                               ; preds = %22, %9
  ret void
}

declare dso_local %struct.ip_vs_protocol* @ip_vs_proto_get(i32) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.ip_vs_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
