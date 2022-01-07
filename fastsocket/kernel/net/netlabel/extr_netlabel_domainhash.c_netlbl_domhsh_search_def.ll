; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_domainhash.c_netlbl_domhsh_search_def.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_domainhash.c_netlbl_domhsh_search_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_dom_map = type { i32 }

@netlbl_domhsh_def = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netlbl_dom_map* (i8*)* @netlbl_domhsh_search_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netlbl_dom_map* @netlbl_domhsh_search_def(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.netlbl_dom_map*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.netlbl_dom_map* @netlbl_domhsh_search(i8* %4)
  store %struct.netlbl_dom_map* %5, %struct.netlbl_dom_map** %3, align 8
  %6 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %3, align 8
  %7 = icmp eq %struct.netlbl_dom_map* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load i32, i32* @netlbl_domhsh_def, align 4
  %10 = call %struct.netlbl_dom_map* @rcu_dereference(i32 %9)
  store %struct.netlbl_dom_map* %10, %struct.netlbl_dom_map** %3, align 8
  %11 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %3, align 8
  %12 = icmp ne %struct.netlbl_dom_map* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %3, align 8
  %15 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store %struct.netlbl_dom_map* null, %struct.netlbl_dom_map** %3, align 8
  br label %19

19:                                               ; preds = %18, %13, %8
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %3, align 8
  ret %struct.netlbl_dom_map* %21
}

declare dso_local %struct.netlbl_dom_map* @netlbl_domhsh_search(i8*) #1

declare dso_local %struct.netlbl_dom_map* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
