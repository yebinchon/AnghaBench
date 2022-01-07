; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_addrlist.c_netlbl_af4list_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_addrlist.c_netlbl_af4list_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_af4list = type { i32 }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netlbl_af4list* @netlbl_af4list_remove(i32 %0, i32 %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.netlbl_af4list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.netlbl_af4list*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.list_head*, %struct.list_head** %7, align 8
  %12 = call %struct.netlbl_af4list* @netlbl_af4list_search_exact(i32 %9, i32 %10, %struct.list_head* %11)
  store %struct.netlbl_af4list* %12, %struct.netlbl_af4list** %8, align 8
  %13 = load %struct.netlbl_af4list*, %struct.netlbl_af4list** %8, align 8
  %14 = icmp eq %struct.netlbl_af4list* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.netlbl_af4list* null, %struct.netlbl_af4list** %4, align 8
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.netlbl_af4list*, %struct.netlbl_af4list** %8, align 8
  %18 = call i32 @netlbl_af4list_remove_entry(%struct.netlbl_af4list* %17)
  %19 = load %struct.netlbl_af4list*, %struct.netlbl_af4list** %8, align 8
  store %struct.netlbl_af4list* %19, %struct.netlbl_af4list** %4, align 8
  br label %20

20:                                               ; preds = %16, %15
  %21 = load %struct.netlbl_af4list*, %struct.netlbl_af4list** %4, align 8
  ret %struct.netlbl_af4list* %21
}

declare dso_local %struct.netlbl_af4list* @netlbl_af4list_search_exact(i32, i32, %struct.list_head*) #1

declare dso_local i32 @netlbl_af4list_remove_entry(%struct.netlbl_af4list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
