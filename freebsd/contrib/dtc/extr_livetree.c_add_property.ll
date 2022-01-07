; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_add_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_add_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.property* }
%struct.property = type { %struct.property* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_property(%struct.node* %0, %struct.property* %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.property*, align 8
  %5 = alloca %struct.property**, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  store %struct.property* %1, %struct.property** %4, align 8
  %6 = load %struct.property*, %struct.property** %4, align 8
  %7 = getelementptr inbounds %struct.property, %struct.property* %6, i32 0, i32 0
  store %struct.property* null, %struct.property** %7, align 8
  %8 = load %struct.node*, %struct.node** %3, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 0
  store %struct.property** %9, %struct.property*** %5, align 8
  br label %10

10:                                               ; preds = %14, %2
  %11 = load %struct.property**, %struct.property*** %5, align 8
  %12 = load %struct.property*, %struct.property** %11, align 8
  %13 = icmp ne %struct.property* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.property**, %struct.property*** %5, align 8
  %16 = load %struct.property*, %struct.property** %15, align 8
  %17 = getelementptr inbounds %struct.property, %struct.property* %16, i32 0, i32 0
  store %struct.property** %17, %struct.property*** %5, align 8
  br label %10

18:                                               ; preds = %10
  %19 = load %struct.property*, %struct.property** %4, align 8
  %20 = load %struct.property**, %struct.property*** %5, align 8
  store %struct.property* %19, %struct.property** %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
