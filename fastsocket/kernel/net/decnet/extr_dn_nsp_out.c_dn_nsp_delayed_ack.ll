; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_delayed_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_delayed_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dn_scp = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_nsp_delayed_ack(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.dn_scp*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.dn_scp* @DN_SK(%struct.sock* %4)
  store %struct.dn_scp* %5, %struct.dn_scp** %3, align 8
  %6 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %7 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %10 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call i32 @dn_nsp_send_oth_ack(%struct.sock* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %18 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %21 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call i32 @dn_nsp_send_data_ack(%struct.sock* %25)
  br label %27

27:                                               ; preds = %24, %16
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @dn_nsp_send_oth_ack(%struct.sock*) #1

declare dso_local i32 @dn_nsp_send_data_ack(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
