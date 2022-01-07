; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_copy_udest_compat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_copy_udest_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest_user_kern = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ip_vs_dest_user = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user*)* @ip_vs_copy_udest_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_copy_udest_compat(%struct.ip_vs_dest_user_kern* %0, %struct.ip_vs_dest_user* %1) #0 {
  %3 = alloca %struct.ip_vs_dest_user_kern*, align 8
  %4 = alloca %struct.ip_vs_dest_user*, align 8
  store %struct.ip_vs_dest_user_kern* %0, %struct.ip_vs_dest_user_kern** %3, align 8
  store %struct.ip_vs_dest_user* %1, %struct.ip_vs_dest_user** %4, align 8
  %5 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %3, align 8
  %6 = call i32 @memset(%struct.ip_vs_dest_user_kern* %5, i32 0, i32 24)
  %7 = load %struct.ip_vs_dest_user*, %struct.ip_vs_dest_user** %4, align 8
  %8 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %3, align 8
  %11 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.ip_vs_dest_user*, %struct.ip_vs_dest_user** %4, align 8
  %14 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %3, align 8
  %17 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ip_vs_dest_user*, %struct.ip_vs_dest_user** %4, align 8
  %19 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %3, align 8
  %22 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ip_vs_dest_user*, %struct.ip_vs_dest_user** %4, align 8
  %24 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %3, align 8
  %27 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ip_vs_dest_user*, %struct.ip_vs_dest_user** %4, align 8
  %29 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %3, align 8
  %32 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ip_vs_dest_user*, %struct.ip_vs_dest_user** %4, align 8
  %34 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %3, align 8
  %37 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  ret void
}

declare dso_local i32 @memset(%struct.ip_vs_dest_user_kern*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
