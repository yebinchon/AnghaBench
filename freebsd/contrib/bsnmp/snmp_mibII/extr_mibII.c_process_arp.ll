; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_process_arp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_process_arp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_msghdr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_dl = type { i32, i64, i64, i32 }
%struct.sockaddr_in = type { i32 }
%struct.mibif = type { i32 }
%struct.mibarp = type { i32 }

@MIBARP_PERM = common dso_local global i32 0, align 4
@MIBARP_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_msghdr*, %struct.sockaddr_dl*, %struct.sockaddr_in*)* @process_arp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_arp(%struct.rt_msghdr* %0, %struct.sockaddr_dl* %1, %struct.sockaddr_in* %2) #0 {
  %4 = alloca %struct.rt_msghdr*, align 8
  %5 = alloca %struct.sockaddr_dl*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.mibif*, align 8
  %8 = alloca %struct.mibarp*, align 8
  store %struct.rt_msghdr* %0, %struct.rt_msghdr** %4, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %5, align 8
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %6, align 8
  %9 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %10 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %71

14:                                               ; preds = %3
  %15 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %16 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.mibif* @mib_find_if_sys(i32 %17)
  store %struct.mibif* %18, %struct.mibif** %7, align 8
  %19 = icmp eq %struct.mibif* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %71

21:                                               ; preds = %14
  %22 = load %struct.mibif*, %struct.mibif** %7, align 8
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.mibarp* @mib_find_arp(%struct.mibif* %22, i32 %25)
  store %struct.mibarp* %26, %struct.mibarp** %8, align 8
  %27 = icmp eq %struct.mibarp* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = load %struct.mibif*, %struct.mibif** %7, align 8
  %30 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %34 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %37 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %41 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.mibarp* @mib_arp_create(%struct.mibif* %29, i32 %32, i64 %39, i32 %42)
  store %struct.mibarp* %43, %struct.mibarp** %8, align 8
  %44 = icmp eq %struct.mibarp* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %71

46:                                               ; preds = %28, %21
  %47 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %48 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* @MIBARP_PERM, align 4
  %54 = load %struct.mibarp*, %struct.mibarp** %8, align 8
  %55 = getelementptr inbounds %struct.mibarp, %struct.mibarp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %65

58:                                               ; preds = %46
  %59 = load i32, i32* @MIBARP_PERM, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.mibarp*, %struct.mibarp** %8, align 8
  %62 = getelementptr inbounds %struct.mibarp, %struct.mibarp* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %52
  %66 = load i32, i32* @MIBARP_FOUND, align 4
  %67 = load %struct.mibarp*, %struct.mibarp** %8, align 8
  %68 = getelementptr inbounds %struct.mibarp, %struct.mibarp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %45, %20, %13
  ret void
}

declare dso_local %struct.mibif* @mib_find_if_sys(i32) #1

declare dso_local %struct.mibarp* @mib_find_arp(%struct.mibif*, i32) #1

declare dso_local %struct.mibarp* @mib_arp_create(%struct.mibif*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
