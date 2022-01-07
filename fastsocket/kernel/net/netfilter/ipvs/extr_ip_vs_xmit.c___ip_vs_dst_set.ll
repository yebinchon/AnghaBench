; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_xmit.c___ip_vs_dst_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_xmit.c___ip_vs_dst_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest = type { i8*, i8*, %struct.dst_entry* }
%struct.dst_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_dest*, i8*, %struct.dst_entry*, i8*)* @__ip_vs_dst_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ip_vs_dst_set(%struct.ip_vs_dest* %0, i8* %1, %struct.dst_entry* %2, i8* %3) #0 {
  %5 = alloca %struct.ip_vs_dest*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  store %struct.ip_vs_dest* %0, %struct.ip_vs_dest** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.dst_entry* %2, %struct.dst_entry** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %11 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %10, i32 0, i32 2
  %12 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  store %struct.dst_entry* %12, %struct.dst_entry** %9, align 8
  %13 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %14 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %15 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %14, i32 0, i32 2
  store %struct.dst_entry* %13, %struct.dst_entry** %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %18 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %21 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %23 = call i32 @dst_release(%struct.dst_entry* %22)
  ret void
}

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
