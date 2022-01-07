; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_app_inc_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_app_inc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_app = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_vs_app_inc_get(%struct.ip_vs_app* %0) #0 {
  %2 = alloca %struct.ip_vs_app*, align 8
  %3 = alloca i32, align 4
  store %struct.ip_vs_app* %0, %struct.ip_vs_app** %2, align 8
  %4 = load %struct.ip_vs_app*, %struct.ip_vs_app** %2, align 8
  %5 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %4, i32 0, i32 0
  %6 = call i32 @atomic_inc(i32* %5)
  %7 = load %struct.ip_vs_app*, %struct.ip_vs_app** %2, align 8
  %8 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ip_vs_app_get(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = icmp ne i32 %10, 1
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.ip_vs_app*, %struct.ip_vs_app** %2, align 8
  %17 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %16, i32 0, i32 0
  %18 = call i32 @atomic_dec(i32* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_vs_app_get(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
