; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_filter_dest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_filter_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_entry = type { i32 }

@nm_out_filter = common dso_local global i32 0, align 4
@filter_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @filter_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_dest() #0 {
  %1 = alloca %struct.filter_entry*, align 8
  br label %2

2:                                                ; preds = %6, %0
  %3 = call i32 @SLIST_EMPTY(i32* @nm_out_filter)
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = call %struct.filter_entry* @SLIST_FIRST(i32* @nm_out_filter)
  store %struct.filter_entry* %7, %struct.filter_entry** %1, align 8
  %8 = load i32, i32* @filter_entries, align 4
  %9 = call i32 @SLIST_REMOVE_HEAD(i32* @nm_out_filter, i32 %8)
  %10 = load %struct.filter_entry*, %struct.filter_entry** %1, align 8
  %11 = call i32 @free(%struct.filter_entry* %10)
  br label %2

12:                                               ; preds = %2
  ret void
}

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local %struct.filter_entry* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free(%struct.filter_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
