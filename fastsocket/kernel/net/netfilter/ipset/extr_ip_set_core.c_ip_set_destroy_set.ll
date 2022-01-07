; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_destroy_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_destroy_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.ip_set*)* }

@ip_set_list = common dso_local global %struct.ip_set** null, align 8
@.str = private unnamed_addr constant [9 x i8] c"set: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ip_set_destroy_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_set_destroy_set(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ip_set*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.ip_set**, %struct.ip_set*** @ip_set_list, align 8
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %4, i64 %5
  %7 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  store %struct.ip_set* %7, %struct.ip_set** %3, align 8
  %8 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %9 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.ip_set**, %struct.ip_set*** @ip_set_list, align 8
  %13 = load i64, i64* %2, align 8
  %14 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %12, i64 %13
  store %struct.ip_set* null, %struct.ip_set** %14, align 8
  %15 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %16 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.ip_set*)*, i32 (%struct.ip_set*)** %18, align 8
  %20 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %21 = call i32 %19(%struct.ip_set* %20)
  %22 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %23 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @module_put(i32 %26)
  %28 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %29 = call i32 @kfree(%struct.ip_set* %28)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.ip_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
