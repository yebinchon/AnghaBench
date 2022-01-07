; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_flush_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_flush_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_lro_mgr = type { i32, %struct.net_lro_desc* }
%struct.net_lro_desc = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lro_flush_all(%struct.net_lro_mgr* %0) #0 {
  %2 = alloca %struct.net_lro_mgr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_lro_desc*, align 8
  store %struct.net_lro_mgr* %0, %struct.net_lro_mgr** %2, align 8
  %5 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %2, align 8
  %6 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %5, i32 0, i32 1
  %7 = load %struct.net_lro_desc*, %struct.net_lro_desc** %6, align 8
  store %struct.net_lro_desc* %7, %struct.net_lro_desc** %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %2, align 8
  %11 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %15, i64 %17
  %19 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %2, align 8
  %24 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %24, i64 %26
  %28 = call i32 @lro_flush(%struct.net_lro_mgr* %23, %struct.net_lro_desc* %27)
  br label %29

29:                                               ; preds = %22, %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %8

33:                                               ; preds = %8
  ret void
}

declare dso_local i32 @lro_flush(%struct.net_lro_mgr*, %struct.net_lro_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
