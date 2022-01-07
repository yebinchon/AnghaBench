; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mib_modify_ifa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mib_modify_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibifa = type { i32, i32, i32, i32 }
%struct.mibif = type { i32 }

@mib_iflist_bad = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mib_modify_ifa(%struct.mibifa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mibifa*, align 8
  %4 = alloca %struct.mibif*, align 8
  store %struct.mibifa* %0, %struct.mibifa** %3, align 8
  %5 = load %struct.mibifa*, %struct.mibifa** %3, align 8
  %6 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mibif* @mib_find_if(i32 %7)
  store %struct.mibif* %8, %struct.mibif** %4, align 8
  %9 = icmp eq %struct.mibif* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* @mib_iflist_bad, align 4
  store i32 -1, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.mibif*, %struct.mibif** %4, align 8
  %13 = getelementptr inbounds %struct.mibif, %struct.mibif* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mibifa*, %struct.mibifa** %3, align 8
  %16 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mibifa*, %struct.mibifa** %3, align 8
  %19 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mibifa*, %struct.mibifa** %3, align 8
  %22 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @siocaifaddr(i32 %14, i32 %17, i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  store i32 1, i32* @mib_iflist_bad, align 4
  store i32 -1, i32* %2, align 4
  br label %36

27:                                               ; preds = %11
  %28 = load %struct.mibif*, %struct.mibif** %4, align 8
  %29 = getelementptr inbounds %struct.mibif, %struct.mibif* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mibifa*, %struct.mibifa** %3, align 8
  %32 = call i64 @verify_ifa(i32 %30, %struct.mibifa* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* @mib_iflist_bad, align 4
  store i32 -1, i32* %2, align 4
  br label %36

35:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %34, %26, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.mibif* @mib_find_if(i32) #1

declare dso_local i64 @siocaifaddr(i32, i32, i32, i32) #1

declare dso_local i64 @verify_ifa(i32, %struct.mibifa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
