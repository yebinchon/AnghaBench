; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_cleanup_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_cleanup_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_set = type { i64 }
%struct.set_telem = type { i64 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_set*)* @cleanup_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_entries(%struct.list_set* %0) #0 {
  %2 = alloca %struct.list_set*, align 8
  %3 = alloca %struct.set_telem*, align 8
  %4 = alloca i64, align 8
  store %struct.list_set* %0, %struct.list_set** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.list_set*, %struct.list_set** %2, align 8
  %8 = getelementptr inbounds %struct.list_set, %struct.list_set* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %6, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %5
  %12 = load %struct.list_set*, %struct.list_set** %2, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call %struct.set_telem* @list_set_telem(%struct.list_set* %12, i64 %13)
  store %struct.set_telem* %14, %struct.set_telem** %3, align 8
  %15 = load %struct.set_telem*, %struct.set_telem** %3, align 8
  %16 = getelementptr inbounds %struct.set_telem, %struct.set_telem* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IPSET_INVALID_ID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load %struct.list_set*, %struct.list_set** %2, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @list_set_expired(%struct.list_set* %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.list_set*, %struct.list_set** %2, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @list_set_del(%struct.list_set* %26, i64 %27)
  br label %29

29:                                               ; preds = %25, %20, %11
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %4, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %5

33:                                               ; preds = %5
  ret void
}

declare dso_local %struct.set_telem* @list_set_telem(%struct.list_set*, i64) #1

declare dso_local i64 @list_set_expired(%struct.list_set*, i64) #1

declare dso_local i32 @list_set_del(%struct.list_set*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
