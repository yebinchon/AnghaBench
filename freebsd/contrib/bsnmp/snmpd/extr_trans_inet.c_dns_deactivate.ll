; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_dns_deactivate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_dns_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_port = type { i32, i32 }
%struct.port_sock = type { i32 }

@link = common dso_local global i32 0, align 4
@RowStatus_notInService = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet_port*)* @dns_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dns_deactivate(%struct.inet_port* %0) #0 {
  %2 = alloca %struct.inet_port*, align 8
  %3 = alloca %struct.port_sock*, align 8
  store %struct.inet_port* %0, %struct.inet_port** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.inet_port*, %struct.inet_port** %2, align 8
  %6 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %5, i32 0, i32 1
  %7 = call i32 @TAILQ_EMPTY(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %24

10:                                               ; preds = %4
  %11 = load %struct.inet_port*, %struct.inet_port** %2, align 8
  %12 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %11, i32 0, i32 1
  %13 = call %struct.port_sock* @TAILQ_FIRST(i32* %12)
  store %struct.port_sock* %13, %struct.port_sock** %3, align 8
  %14 = load %struct.inet_port*, %struct.inet_port** %2, align 8
  %15 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %14, i32 0, i32 1
  %16 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %17 = load i32, i32* @link, align 4
  %18 = call i32 @TAILQ_REMOVE(i32* %15, %struct.port_sock* %16, i32 %17)
  %19 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %20 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %19, i32 0, i32 0
  %21 = call i32 @snmpd_input_close(i32* %20)
  %22 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %23 = call i32 @free(%struct.port_sock* %22)
  br label %4

24:                                               ; preds = %4
  %25 = load i32, i32* @RowStatus_notInService, align 4
  %26 = load %struct.inet_port*, %struct.inet_port** %2, align 8
  %27 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.port_sock* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.port_sock*, i32) #1

declare dso_local i32 @snmpd_input_close(i32*) #1

declare dso_local i32 @free(%struct.port_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
