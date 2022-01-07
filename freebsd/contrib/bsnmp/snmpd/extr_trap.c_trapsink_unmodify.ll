; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_trapsink_unmodify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_trapsink_unmodify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapsink = type { i32, i32, i32 }
%struct.trapsink_dep = type { i32, i32, i32, i32 }

@TDEP_STATUS = common dso_local global i32 0, align 4
@TDEP_VERSION = common dso_local global i32 0, align 4
@TDEP_COMM = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapsink*, %struct.trapsink_dep*)* @trapsink_unmodify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trapsink_unmodify(%struct.trapsink* %0, %struct.trapsink_dep* %1) #0 {
  %3 = alloca %struct.trapsink*, align 8
  %4 = alloca %struct.trapsink_dep*, align 8
  store %struct.trapsink* %0, %struct.trapsink** %3, align 8
  store %struct.trapsink_dep* %1, %struct.trapsink_dep** %4, align 8
  %5 = load %struct.trapsink_dep*, %struct.trapsink_dep** %4, align 8
  %6 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TDEP_STATUS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.trapsink_dep*, %struct.trapsink_dep** %4, align 8
  %13 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.trapsink*, %struct.trapsink** %3, align 8
  %16 = getelementptr inbounds %struct.trapsink, %struct.trapsink* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.trapsink_dep*, %struct.trapsink_dep** %4, align 8
  %19 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TDEP_VERSION, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.trapsink_dep*, %struct.trapsink_dep** %4, align 8
  %26 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.trapsink*, %struct.trapsink** %3, align 8
  %29 = getelementptr inbounds %struct.trapsink, %struct.trapsink* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %24, %17
  %31 = load %struct.trapsink_dep*, %struct.trapsink_dep** %4, align 8
  %32 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TDEP_COMM, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.trapsink*, %struct.trapsink** %3, align 8
  %39 = getelementptr inbounds %struct.trapsink, %struct.trapsink* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.trapsink_dep*, %struct.trapsink_dep** %4, align 8
  %42 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strcpy(i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %37, %30
  %46 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  ret i32 %46
}

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
