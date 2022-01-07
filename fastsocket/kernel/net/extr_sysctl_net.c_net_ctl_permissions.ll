; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_sysctl_net.c_net_ctl_permissions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_sysctl_net.c_net_ctl_permissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_root = type { i32 }
%struct.nsproxy = type { i32 }
%struct.ctl_table = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_table_root*, %struct.nsproxy*, %struct.ctl_table*)* @net_ctl_permissions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_ctl_permissions(%struct.ctl_table_root* %0, %struct.nsproxy* %1, %struct.ctl_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_table_root*, align 8
  %6 = alloca %struct.nsproxy*, align 8
  %7 = alloca %struct.ctl_table*, align 8
  %8 = alloca i32, align 4
  store %struct.ctl_table_root* %0, %struct.ctl_table_root** %5, align 8
  store %struct.nsproxy* %1, %struct.nsproxy** %6, align 8
  store %struct.ctl_table* %2, %struct.ctl_table** %7, align 8
  %9 = load i32, i32* @CAP_NET_ADMIN, align 4
  %10 = call i64 @capable(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %14 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 6
  %17 = and i32 %16, 7
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = shl i32 %18, 6
  %20 = load i32, i32* %8, align 4
  %21 = shl i32 %20, 3
  %22 = or i32 %19, %21
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %4, align 4
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %27 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %12
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
