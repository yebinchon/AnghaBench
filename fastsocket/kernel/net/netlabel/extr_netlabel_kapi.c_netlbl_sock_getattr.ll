; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_sock_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_sock_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.netlbl_lsm_secattr = type { i32 }

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_sock_getattr(%struct.sock* %0, %struct.netlbl_lsm_secattr* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.netlbl_lsm_secattr*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.netlbl_lsm_secattr* %1, %struct.netlbl_lsm_secattr** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %13 [
    i32 129, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %12 = call i32 @cipso_v4_sock_getattr(%struct.sock* %10, %struct.netlbl_lsm_secattr* %11)
  store i32 %12, i32* %5, align 4
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EPROTONOSUPPORT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local i32 @cipso_v4_sock_getattr(%struct.sock*, %struct.netlbl_lsm_secattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
