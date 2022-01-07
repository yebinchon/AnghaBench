; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_reverse_properties.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_reverse_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { %struct.property* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.property* @reverse_properties(%struct.property* %0) #0 {
  %2 = alloca %struct.property*, align 8
  %3 = alloca %struct.property*, align 8
  %4 = alloca %struct.property*, align 8
  %5 = alloca %struct.property*, align 8
  store %struct.property* %0, %struct.property** %2, align 8
  %6 = load %struct.property*, %struct.property** %2, align 8
  store %struct.property* %6, %struct.property** %3, align 8
  store %struct.property* null, %struct.property** %4, align 8
  br label %7

7:                                                ; preds = %10, %1
  %8 = load %struct.property*, %struct.property** %3, align 8
  %9 = icmp ne %struct.property* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load %struct.property*, %struct.property** %3, align 8
  %12 = getelementptr inbounds %struct.property, %struct.property* %11, i32 0, i32 0
  %13 = load %struct.property*, %struct.property** %12, align 8
  store %struct.property* %13, %struct.property** %5, align 8
  %14 = load %struct.property*, %struct.property** %4, align 8
  %15 = load %struct.property*, %struct.property** %3, align 8
  %16 = getelementptr inbounds %struct.property, %struct.property* %15, i32 0, i32 0
  store %struct.property* %14, %struct.property** %16, align 8
  %17 = load %struct.property*, %struct.property** %3, align 8
  store %struct.property* %17, %struct.property** %4, align 8
  %18 = load %struct.property*, %struct.property** %5, align 8
  store %struct.property* %18, %struct.property** %3, align 8
  br label %7

19:                                               ; preds = %7
  %20 = load %struct.property*, %struct.property** %4, align 8
  ret %struct.property* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
