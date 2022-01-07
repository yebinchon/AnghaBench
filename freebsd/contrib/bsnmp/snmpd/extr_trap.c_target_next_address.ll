; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_target_next_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_target_next_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_address = type { i32 }

@ta = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.target_address* @target_next_address(%struct.target_address* %0) #0 {
  %2 = alloca %struct.target_address*, align 8
  %3 = alloca %struct.target_address*, align 8
  store %struct.target_address* %0, %struct.target_address** %3, align 8
  %4 = load %struct.target_address*, %struct.target_address** %3, align 8
  %5 = icmp eq %struct.target_address* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.target_address* null, %struct.target_address** %2, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.target_address*, %struct.target_address** %3, align 8
  %9 = load i32, i32* @ta, align 4
  %10 = call %struct.target_address* @SLIST_NEXT(%struct.target_address* %8, i32 %9)
  store %struct.target_address* %10, %struct.target_address** %2, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load %struct.target_address*, %struct.target_address** %2, align 8
  ret %struct.target_address* %12
}

declare dso_local %struct.target_address* @SLIST_NEXT(%struct.target_address*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
