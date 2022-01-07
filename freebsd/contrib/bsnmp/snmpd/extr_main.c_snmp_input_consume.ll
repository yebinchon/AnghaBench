; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_snmp_input_consume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_snmp_input_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_input = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_input*)* @snmp_input_consume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmp_input_consume(%struct.port_input* %0) #0 {
  %2 = alloca %struct.port_input*, align 8
  store %struct.port_input* %0, %struct.port_input** %2, align 8
  %3 = load %struct.port_input*, %struct.port_input** %2, align 8
  %4 = getelementptr inbounds %struct.port_input, %struct.port_input* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.port_input*, %struct.port_input** %2, align 8
  %9 = getelementptr inbounds %struct.port_input, %struct.port_input* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.port_input*, %struct.port_input** %2, align 8
  %12 = getelementptr inbounds %struct.port_input, %struct.port_input* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.port_input*, %struct.port_input** %2, align 8
  %15 = getelementptr inbounds %struct.port_input, %struct.port_input* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.port_input*, %struct.port_input** %2, align 8
  %20 = getelementptr inbounds %struct.port_input, %struct.port_input* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %47

21:                                               ; preds = %10
  %22 = load %struct.port_input*, %struct.port_input** %2, align 8
  %23 = getelementptr inbounds %struct.port_input, %struct.port_input* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.port_input*, %struct.port_input** %2, align 8
  %26 = getelementptr inbounds %struct.port_input, %struct.port_input* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.port_input*, %struct.port_input** %2, align 8
  %29 = getelementptr inbounds %struct.port_input, %struct.port_input* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.port_input*, %struct.port_input** %2, align 8
  %33 = getelementptr inbounds %struct.port_input, %struct.port_input* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.port_input*, %struct.port_input** %2, align 8
  %36 = getelementptr inbounds %struct.port_input, %struct.port_input* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = call i32 @memmove(i64 %24, i64 %31, i64 %38)
  %40 = load %struct.port_input*, %struct.port_input** %2, align 8
  %41 = getelementptr inbounds %struct.port_input, %struct.port_input* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.port_input*, %struct.port_input** %2, align 8
  %44 = getelementptr inbounds %struct.port_input, %struct.port_input* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %21, %18, %7
  ret void
}

declare dso_local i32 @memmove(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
