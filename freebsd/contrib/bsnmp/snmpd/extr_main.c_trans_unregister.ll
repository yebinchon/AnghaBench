; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_trans_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_trans_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i32, i32 }

@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@transport_list = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trans_unregister(%struct.transport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.transport*, align 8
  store %struct.transport* %0, %struct.transport** %3, align 8
  %4 = load %struct.transport*, %struct.transport** %3, align 8
  %5 = getelementptr inbounds %struct.transport, %struct.transport* %4, i32 0, i32 1
  %6 = call i32 @TAILQ_EMPTY(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %9, i32* %2, align 4
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.transport*, %struct.transport** %3, align 8
  %12 = getelementptr inbounds %struct.transport, %struct.transport* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @or_unregister(i32 %13)
  %15 = load %struct.transport*, %struct.transport** %3, align 8
  %16 = load i32, i32* @link, align 4
  %17 = call i32 @TAILQ_REMOVE(i32* @transport_list, %struct.transport* %15, i32 %16)
  %18 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %10, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @or_unregister(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.transport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
