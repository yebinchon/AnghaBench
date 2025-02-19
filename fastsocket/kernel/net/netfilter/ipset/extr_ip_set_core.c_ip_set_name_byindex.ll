; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_name_byindex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_name_byindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i64, i8* }

@ip_set_list = common dso_local global %struct.ip_set** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ip_set_name_byindex(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ip_set*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.ip_set**, %struct.ip_set*** @ip_set_list, align 8
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %4, i64 %5
  %7 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  store %struct.ip_set* %7, %struct.ip_set** %3, align 8
  %8 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %9 = icmp eq %struct.ip_set* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %13 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %19 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  ret i8* %20
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
