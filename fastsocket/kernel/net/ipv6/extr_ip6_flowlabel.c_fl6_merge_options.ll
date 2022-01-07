; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_fl6_merge_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_fl6_merge_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_flowlabel = type { %struct.ipv6_txoptions* }
%struct.ipv6_txoptions = type { i64, i64, i32, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipv6_txoptions* @fl6_merge_options(%struct.ipv6_txoptions* %0, %struct.ip6_flowlabel* %1, %struct.ipv6_txoptions* %2) #0 {
  %4 = alloca %struct.ipv6_txoptions*, align 8
  %5 = alloca %struct.ipv6_txoptions*, align 8
  %6 = alloca %struct.ip6_flowlabel*, align 8
  %7 = alloca %struct.ipv6_txoptions*, align 8
  %8 = alloca %struct.ipv6_txoptions*, align 8
  store %struct.ipv6_txoptions* %0, %struct.ipv6_txoptions** %5, align 8
  store %struct.ip6_flowlabel* %1, %struct.ip6_flowlabel** %6, align 8
  store %struct.ipv6_txoptions* %2, %struct.ipv6_txoptions** %7, align 8
  %9 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %10 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %9, i32 0, i32 0
  %11 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %10, align 8
  store %struct.ipv6_txoptions* %11, %struct.ipv6_txoptions** %8, align 8
  %12 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %7, align 8
  %13 = icmp eq %struct.ipv6_txoptions* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %7, align 8
  %16 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %3
  %20 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  store %struct.ipv6_txoptions* %20, %struct.ipv6_txoptions** %4, align 8
  br label %73

21:                                               ; preds = %14
  %22 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %23 = icmp ne %struct.ipv6_txoptions* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %26 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %29 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %28, i32 0, i32 5
  store i32* %27, i32** %29, align 8
  %30 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %31 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %34 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %33, i32 0, i32 4
  store i32* %32, i32** %34, align 8
  %35 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %36 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %39 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %38, i32 0, i32 3
  store i32* %37, i32** %39, align 8
  %40 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %41 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %44 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %61

45:                                               ; preds = %21
  %46 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %7, align 8
  %47 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %7, align 8
  store %struct.ipv6_txoptions* %51, %struct.ipv6_txoptions** %4, align 8
  br label %73

52:                                               ; preds = %45
  %53 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %54 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %53, i32 0, i32 5
  store i32* null, i32** %54, align 8
  %55 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %56 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %55, i32 0, i32 4
  store i32* null, i32** %56, align 8
  %57 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %58 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %57, i32 0, i32 3
  store i32* null, i32** %58, align 8
  %59 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %60 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %52, %24
  %62 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %7, align 8
  %63 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %66 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %7, align 8
  %68 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %71 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  store %struct.ipv6_txoptions* %72, %struct.ipv6_txoptions** %4, align 8
  br label %73

73:                                               ; preds = %61, %50, %19
  %74 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  ret %struct.ipv6_txoptions* %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
