; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_inet_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_inet_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tport = type { i32 }
%struct.inet_port = type { i32 (%struct.inet_port*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tport*)* @inet_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_activate(%struct.tport* %0) #0 {
  %2 = alloca %struct.tport*, align 8
  %3 = alloca %struct.inet_port*, align 8
  store %struct.tport* %0, %struct.tport** %2, align 8
  %4 = load %struct.tport*, %struct.tport** %2, align 8
  %5 = bitcast %struct.tport* %4 to %struct.inet_port*
  store %struct.inet_port* %5, %struct.inet_port** %3, align 8
  %6 = load %struct.inet_port*, %struct.inet_port** %3, align 8
  %7 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %6, i32 0, i32 0
  %8 = load i32 (%struct.inet_port*)*, i32 (%struct.inet_port*)** %7, align 8
  %9 = load %struct.inet_port*, %struct.inet_port** %3, align 8
  %10 = call i32 %8(%struct.inet_port* %9)
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
