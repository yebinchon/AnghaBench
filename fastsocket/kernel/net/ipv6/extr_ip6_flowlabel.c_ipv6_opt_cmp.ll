; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_ipv6_opt_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_ipv6_opt_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_txoptions = type { i64, i64, %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr* }
%struct.ipv6_opt_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipv6_txoptions*, %struct.ipv6_txoptions*)* @ipv6_opt_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_opt_cmp(%struct.ipv6_txoptions* %0, %struct.ipv6_txoptions* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipv6_txoptions*, align 8
  %5 = alloca %struct.ipv6_txoptions*, align 8
  store %struct.ipv6_txoptions* %0, %struct.ipv6_txoptions** %4, align 8
  store %struct.ipv6_txoptions* %1, %struct.ipv6_txoptions** %5, align 8
  %6 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %7 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %8 = icmp eq %struct.ipv6_txoptions* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

10:                                               ; preds = %2
  %11 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %12 = icmp eq %struct.ipv6_txoptions* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %15 = icmp eq %struct.ipv6_txoptions* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10
  store i32 1, i32* %3, align 4
  br label %59

17:                                               ; preds = %13
  %18 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %19 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %22 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %59

26:                                               ; preds = %17
  %27 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %28 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %27, i32 0, i32 3
  %29 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %28, align 8
  %30 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %31 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %30, i32 0, i32 3
  %32 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %31, align 8
  %33 = call i64 @ipv6_hdr_cmp(%struct.ipv6_opt_hdr* %29, %struct.ipv6_opt_hdr* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %59

36:                                               ; preds = %26
  %37 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %38 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %37, i32 0, i32 2
  %39 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %38, align 8
  %40 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %41 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %40, i32 0, i32 2
  %42 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %41, align 8
  %43 = call i64 @ipv6_hdr_cmp(%struct.ipv6_opt_hdr* %39, %struct.ipv6_opt_hdr* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %59

46:                                               ; preds = %36
  %47 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %48 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.ipv6_opt_hdr*
  %51 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %52 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.ipv6_opt_hdr*
  %55 = call i64 @ipv6_hdr_cmp(%struct.ipv6_opt_hdr* %50, %struct.ipv6_opt_hdr* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %59

58:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %57, %45, %35, %25, %16, %9
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @ipv6_hdr_cmp(%struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
