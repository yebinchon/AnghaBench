; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mib_next_ififa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mib_next_ififa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibifa = type { i64 }

@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mibifa* @mib_next_ififa(%struct.mibifa* %0) #0 {
  %2 = alloca %struct.mibifa*, align 8
  %3 = alloca %struct.mibifa*, align 8
  %4 = alloca %struct.mibifa*, align 8
  store %struct.mibifa* %0, %struct.mibifa** %3, align 8
  %5 = load %struct.mibifa*, %struct.mibifa** %3, align 8
  store %struct.mibifa* %5, %struct.mibifa** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.mibifa*, %struct.mibifa** %4, align 8
  %8 = load i32, i32* @link, align 4
  %9 = call %struct.mibifa* @TAILQ_NEXT(%struct.mibifa* %7, i32 %8)
  store %struct.mibifa* %9, %struct.mibifa** %4, align 8
  %10 = icmp ne %struct.mibifa* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.mibifa*, %struct.mibifa** %4, align 8
  %13 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mibifa*, %struct.mibifa** %3, align 8
  %16 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load %struct.mibifa*, %struct.mibifa** %4, align 8
  store %struct.mibifa* %20, %struct.mibifa** %2, align 8
  br label %23

21:                                               ; preds = %11
  br label %6

22:                                               ; preds = %6
  store %struct.mibifa* null, %struct.mibifa** %2, align 8
  br label %23

23:                                               ; preds = %22, %19
  %24 = load %struct.mibifa*, %struct.mibifa** %2, align 8
  ret %struct.mibifa* %24
}

declare dso_local %struct.mibifa* @TAILQ_NEXT(%struct.mibifa*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
