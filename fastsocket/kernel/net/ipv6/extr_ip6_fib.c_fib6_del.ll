; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, %struct.fib6_node* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.rt6_info* }
%struct.TYPE_6__ = type { i64 }
%struct.fib6_node = type { i32, %struct.rt6_info*, %struct.fib6_node* }
%struct.nl_info = type { %struct.net* }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rt6_info* }

@ENOENT = common dso_local global i32 0, align 4
@RTN_RTINFO = common dso_local global i32 0, align 4
@RTF_CACHE = common dso_local global i32 0, align 4
@RTN_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib6_del(%struct.rt6_info* %0, %struct.nl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt6_info*, align 8
  %5 = alloca %struct.nl_info*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.fib6_node*, align 8
  %8 = alloca %struct.rt6_info**, align 8
  %9 = alloca %struct.fib6_node*, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %4, align 8
  store %struct.nl_info* %1, %struct.nl_info** %5, align 8
  %10 = load %struct.nl_info*, %struct.nl_info** %5, align 8
  %11 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %10, i32 0, i32 0
  %12 = load %struct.net*, %struct.net** %11, align 8
  store %struct.net* %12, %struct.net** %6, align 8
  %13 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %14 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %13, i32 0, i32 3
  %15 = load %struct.fib6_node*, %struct.fib6_node** %14, align 8
  store %struct.fib6_node* %15, %struct.fib6_node** %7, align 8
  %16 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %17 = icmp eq %struct.fib6_node* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %20 = load %struct.net*, %struct.net** %6, align 8
  %21 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.rt6_info*, %struct.rt6_info** %22, align 8
  %24 = icmp eq %struct.rt6_info* %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18, %2
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %79

28:                                               ; preds = %18
  %29 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %30 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RTN_RTINFO, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %39 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @RTF_CACHE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %28
  %45 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  store %struct.fib6_node* %45, %struct.fib6_node** %9, align 8
  %46 = load %struct.nl_info*, %struct.nl_info** %5, align 8
  %47 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %46, i32 0, i32 0
  %48 = load %struct.net*, %struct.net** %47, align 8
  %49 = load %struct.fib6_node*, %struct.fib6_node** %9, align 8
  %50 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %51 = call i32 @fib6_prune_clones(%struct.net* %48, %struct.fib6_node* %49, %struct.rt6_info* %50)
  br label %52

52:                                               ; preds = %44, %28
  %53 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %54 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %53, i32 0, i32 1
  store %struct.rt6_info** %54, %struct.rt6_info*** %8, align 8
  br label %55

55:                                               ; preds = %70, %52
  %56 = load %struct.rt6_info**, %struct.rt6_info*** %8, align 8
  %57 = load %struct.rt6_info*, %struct.rt6_info** %56, align 8
  %58 = icmp ne %struct.rt6_info* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load %struct.rt6_info**, %struct.rt6_info*** %8, align 8
  %61 = load %struct.rt6_info*, %struct.rt6_info** %60, align 8
  %62 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %63 = icmp eq %struct.rt6_info* %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %66 = load %struct.rt6_info**, %struct.rt6_info*** %8, align 8
  %67 = load %struct.nl_info*, %struct.nl_info** %5, align 8
  %68 = call i32 @fib6_del_route(%struct.fib6_node* %65, %struct.rt6_info** %66, %struct.nl_info* %67)
  store i32 0, i32* %3, align 4
  br label %79

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.rt6_info**, %struct.rt6_info*** %8, align 8
  %72 = load %struct.rt6_info*, %struct.rt6_info** %71, align 8
  %73 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store %struct.rt6_info** %75, %struct.rt6_info*** %8, align 8
  br label %55

76:                                               ; preds = %55
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %64, %25
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fib6_prune_clones(%struct.net*, %struct.fib6_node*, %struct.rt6_info*) #1

declare dso_local i32 @fib6_del_route(%struct.fib6_node*, %struct.rt6_info**, %struct.nl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
