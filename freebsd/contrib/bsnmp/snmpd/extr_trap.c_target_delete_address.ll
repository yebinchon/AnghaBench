; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_target_delete_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_target_delete_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_address = type { i64, i32 }

@target_addresslist = common dso_local global i32 0, align 4
@target_address = common dso_local global i32 0, align 4
@ta = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_delete_address(%struct.target_address* %0) #0 {
  %2 = alloca %struct.target_address*, align 8
  store %struct.target_address* %0, %struct.target_address** %2, align 8
  %3 = load %struct.target_address*, %struct.target_address** %2, align 8
  %4 = load i32, i32* @target_address, align 4
  %5 = load i32, i32* @ta, align 4
  %6 = call i32 @SLIST_REMOVE(i32* @target_addresslist, %struct.target_address* %3, i32 %4, i32 %5)
  %7 = load %struct.target_address*, %struct.target_address** %2, align 8
  %8 = getelementptr inbounds %struct.target_address, %struct.target_address* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RowStatus_active, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.target_address*, %struct.target_address** %2, align 8
  %14 = getelementptr inbounds %struct.target_address, %struct.target_address* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @close(i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.target_address*, %struct.target_address** %2, align 8
  %19 = call i32 @free(%struct.target_address* %18)
  ret i32 0
}

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.target_address*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.target_address*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
