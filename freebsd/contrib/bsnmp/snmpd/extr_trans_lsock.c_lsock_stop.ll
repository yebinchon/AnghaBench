; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_lsock.c_lsock_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_lsock.c_lsock_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@my_trans = common dso_local global i32* null, align 8
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@lsock_remove = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lsock_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsock_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32*, i32** @my_trans, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load i32*, i32** @my_trans, align 8
  %11 = call i32* @trans_first_port(i32* %10)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %14, i32* %2, align 4
  br label %23

15:                                               ; preds = %9, %6
  %16 = load i32*, i32** @my_trans, align 8
  %17 = load i32, i32* @lsock_remove, align 4
  %18 = call i32 @trans_iter_port(i32* %16, i32 %17, i32 0)
  %19 = load i32*, i32** @my_trans, align 8
  %20 = call i32 @trans_unregister(i32* %19)
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %15, %13
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32* @trans_first_port(i32*) #1

declare dso_local i32 @trans_iter_port(i32*, i32, i32) #1

declare dso_local i32 @trans_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
