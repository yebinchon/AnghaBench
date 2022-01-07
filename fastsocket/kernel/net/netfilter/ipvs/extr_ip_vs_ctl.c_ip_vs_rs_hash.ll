; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_rs_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_rs_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest = type { i32, i32, i32, i32 }

@ip_vs_rtable = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_dest*)* @ip_vs_rs_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_rs_hash(%struct.ip_vs_dest* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_dest*, align 8
  %4 = alloca i32, align 4
  store %struct.ip_vs_dest* %0, %struct.ip_vs_dest** %3, align 8
  %5 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %6 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %5, i32 0, i32 0
  %7 = call i32 @list_empty(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %12 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %15 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %14, i32 0, i32 2
  %16 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %17 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ip_vs_rs_hashkey(i32 %13, i32* %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %21 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %20, i32 0, i32 0
  %22 = load i32*, i32** @ip_vs_rtable, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @list_add(i32* %21, i32* %25)
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %10, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ip_vs_rs_hashkey(i32, i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
