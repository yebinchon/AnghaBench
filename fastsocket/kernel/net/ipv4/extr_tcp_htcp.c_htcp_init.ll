; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_htcp.c_htcp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_htcp.c_htcp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.htcp = type { i32, i32, i32, i32 }

@ALPHA_BASE = common dso_local global i32 0, align 4
@BETA_MIN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @htcp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htcp_init(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.htcp*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.htcp* @inet_csk_ca(%struct.sock* %4)
  store %struct.htcp* %5, %struct.htcp** %3, align 8
  %6 = load %struct.htcp*, %struct.htcp** %3, align 8
  %7 = call i32 @memset(%struct.htcp* %6, i32 0, i32 16)
  %8 = load i32, i32* @ALPHA_BASE, align 4
  %9 = load %struct.htcp*, %struct.htcp** %3, align 8
  %10 = getelementptr inbounds %struct.htcp, %struct.htcp* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @BETA_MIN, align 4
  %12 = load %struct.htcp*, %struct.htcp** %3, align 8
  %13 = getelementptr inbounds %struct.htcp, %struct.htcp* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.htcp*, %struct.htcp** %3, align 8
  %15 = getelementptr inbounds %struct.htcp, %struct.htcp* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* @jiffies, align 4
  %17 = load %struct.htcp*, %struct.htcp** %3, align 8
  %18 = getelementptr inbounds %struct.htcp, %struct.htcp* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  ret void
}

declare dso_local %struct.htcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @memset(%struct.htcp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
