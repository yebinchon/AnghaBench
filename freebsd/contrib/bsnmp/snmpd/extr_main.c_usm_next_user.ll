; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_usm_next_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_usm_next_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usm_user = type { i32 }

@up = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usm_user* @usm_next_user(%struct.usm_user* %0) #0 {
  %2 = alloca %struct.usm_user*, align 8
  %3 = alloca %struct.usm_user*, align 8
  store %struct.usm_user* %0, %struct.usm_user** %3, align 8
  %4 = load %struct.usm_user*, %struct.usm_user** %3, align 8
  %5 = icmp eq %struct.usm_user* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.usm_user* null, %struct.usm_user** %2, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.usm_user*, %struct.usm_user** %3, align 8
  %9 = load i32, i32* @up, align 4
  %10 = call %struct.usm_user* @SLIST_NEXT(%struct.usm_user* %8, i32 %9)
  store %struct.usm_user* %10, %struct.usm_user** %2, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load %struct.usm_user*, %struct.usm_user** %2, align 8
  ret %struct.usm_user* %12
}

declare dso_local %struct.usm_user* @SLIST_NEXT(%struct.usm_user*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
