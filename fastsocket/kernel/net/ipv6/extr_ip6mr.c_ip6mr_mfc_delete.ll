; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ip6mr_mfc_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ip6mr_mfc_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mfc6_cache** }
%struct.mfc6_cache = type { %struct.mfc6_cache*, i32, i32 }
%struct.mf6cctl = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@mrt_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.mf6cctl*)* @ip6mr_mfc_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6mr_mfc_delete(%struct.net* %0, %struct.mf6cctl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.mf6cctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mfc6_cache*, align 8
  %8 = alloca %struct.mfc6_cache**, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.mf6cctl* %1, %struct.mf6cctl** %5, align 8
  %9 = load %struct.mf6cctl*, %struct.mf6cctl** %5, align 8
  %10 = getelementptr inbounds %struct.mf6cctl, %struct.mf6cctl* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.mf6cctl*, %struct.mf6cctl** %5, align 8
  %13 = getelementptr inbounds %struct.mf6cctl, %struct.mf6cctl* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @MFC6_HASH(i32* %11, i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.net*, %struct.net** %4, align 8
  %17 = getelementptr inbounds %struct.net, %struct.net* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.mfc6_cache**, %struct.mfc6_cache*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mfc6_cache*, %struct.mfc6_cache** %19, i64 %21
  store %struct.mfc6_cache** %22, %struct.mfc6_cache*** %8, align 8
  br label %23

23:                                               ; preds = %53, %2
  %24 = load %struct.mfc6_cache**, %struct.mfc6_cache*** %8, align 8
  %25 = load %struct.mfc6_cache*, %struct.mfc6_cache** %24, align 8
  store %struct.mfc6_cache* %25, %struct.mfc6_cache** %7, align 8
  %26 = icmp ne %struct.mfc6_cache* %25, null
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load %struct.mfc6_cache*, %struct.mfc6_cache** %7, align 8
  %29 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %28, i32 0, i32 2
  %30 = load %struct.mf6cctl*, %struct.mf6cctl** %5, align 8
  %31 = getelementptr inbounds %struct.mf6cctl, %struct.mf6cctl* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i64 @ipv6_addr_equal(i32* %29, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %27
  %36 = load %struct.mfc6_cache*, %struct.mfc6_cache** %7, align 8
  %37 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %36, i32 0, i32 1
  %38 = load %struct.mf6cctl*, %struct.mf6cctl** %5, align 8
  %39 = getelementptr inbounds %struct.mf6cctl, %struct.mf6cctl* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = call i64 @ipv6_addr_equal(i32* %37, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = call i32 @write_lock_bh(i32* @mrt_lock)
  %45 = load %struct.mfc6_cache*, %struct.mfc6_cache** %7, align 8
  %46 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %45, i32 0, i32 0
  %47 = load %struct.mfc6_cache*, %struct.mfc6_cache** %46, align 8
  %48 = load %struct.mfc6_cache**, %struct.mfc6_cache*** %8, align 8
  store %struct.mfc6_cache* %47, %struct.mfc6_cache** %48, align 8
  %49 = call i32 @write_unlock_bh(i32* @mrt_lock)
  %50 = load %struct.mfc6_cache*, %struct.mfc6_cache** %7, align 8
  %51 = call i32 @ip6mr_cache_free(%struct.mfc6_cache* %50)
  store i32 0, i32* %3, align 4
  br label %59

52:                                               ; preds = %35, %27
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.mfc6_cache*, %struct.mfc6_cache** %7, align 8
  %55 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %54, i32 0, i32 0
  store %struct.mfc6_cache** %55, %struct.mfc6_cache*** %8, align 8
  br label %23

56:                                               ; preds = %23
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %43
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @MFC6_HASH(i32*, i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @ip6mr_cache_free(%struct.mfc6_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
