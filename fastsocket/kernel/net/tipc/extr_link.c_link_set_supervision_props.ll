; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_set_supervision_props.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_set_supervision_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link*, i32)* @link_set_supervision_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_set_supervision_props(%struct.link* %0, i32 %1) #0 {
  %3 = alloca %struct.link*, align 8
  %4 = alloca i32, align 4
  store %struct.link* %0, %struct.link** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.link*, %struct.link** %3, align 8
  %7 = getelementptr inbounds %struct.link, %struct.link* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sdiv i32 %8, 4
  %10 = icmp sgt i32 %9, 500
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = sdiv i32 %13, 4
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi i32 [ 500, %11 ], [ %14, %12 ]
  %17 = load %struct.link*, %struct.link** %3, align 8
  %18 = getelementptr inbounds %struct.link, %struct.link* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.link*, %struct.link** %3, align 8
  %21 = getelementptr inbounds %struct.link, %struct.link* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 4
  %24 = sdiv i32 %19, %23
  %25 = load %struct.link*, %struct.link** %3, align 8
  %26 = getelementptr inbounds %struct.link, %struct.link* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
