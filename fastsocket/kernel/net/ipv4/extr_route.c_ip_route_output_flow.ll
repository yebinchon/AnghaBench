; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_route_output_flow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_route_output_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.rtable = type { i64, i64 }
%struct.flowi = type { i64, i64, i64 }
%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }

@XFRM_LOOKUP_WAIT = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_route_output_flow(%struct.net* %0, %struct.rtable** %1, %struct.flowi* %2, %struct.sock* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.rtable**, align 8
  %9 = alloca %struct.flowi*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.rtable** %1, %struct.rtable*** %8, align 8
  store %struct.flowi* %2, %struct.flowi** %9, align 8
  store %struct.sock* %3, %struct.sock** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.net*, %struct.net** %7, align 8
  %14 = load %struct.rtable**, %struct.rtable*** %8, align 8
  %15 = load %struct.flowi*, %struct.flowi** %9, align 8
  %16 = call i32 @__ip_route_output_key(%struct.net* %13, %struct.rtable** %14, %struct.flowi* %15)
  store i32 %16, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %6, align 4
  br label %75

20:                                               ; preds = %5
  %21 = load %struct.flowi*, %struct.flowi** %9, align 8
  %22 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %20
  %26 = load %struct.flowi*, %struct.flowi** %9, align 8
  %27 = getelementptr inbounds %struct.flowi, %struct.flowi* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.rtable**, %struct.rtable*** %8, align 8
  %32 = load %struct.rtable*, %struct.rtable** %31, align 8
  %33 = getelementptr inbounds %struct.rtable, %struct.rtable* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.flowi*, %struct.flowi** %9, align 8
  %36 = getelementptr inbounds %struct.flowi, %struct.flowi* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.flowi*, %struct.flowi** %9, align 8
  %39 = getelementptr inbounds %struct.flowi, %struct.flowi* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load %struct.rtable**, %struct.rtable*** %8, align 8
  %44 = load %struct.rtable*, %struct.rtable** %43, align 8
  %45 = getelementptr inbounds %struct.rtable, %struct.rtable* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.flowi*, %struct.flowi** %9, align 8
  %48 = getelementptr inbounds %struct.flowi, %struct.flowi* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.net*, %struct.net** %7, align 8
  %51 = load %struct.rtable**, %struct.rtable*** %8, align 8
  %52 = bitcast %struct.rtable** %51 to %struct.dst_entry**
  %53 = load %struct.flowi*, %struct.flowi** %9, align 8
  %54 = load %struct.sock*, %struct.sock** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @XFRM_LOOKUP_WAIT, align 4
  br label %60

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = call i32 @__xfrm_lookup(%struct.net* %50, %struct.dst_entry** %52, %struct.flowi* %53, %struct.sock* %54, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @EREMOTE, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.net*, %struct.net** %7, align 8
  %69 = load %struct.rtable**, %struct.rtable*** %8, align 8
  %70 = load %struct.flowi*, %struct.flowi** %9, align 8
  %71 = call i32 @ipv4_dst_blackhole(%struct.net* %68, %struct.rtable** %69, %struct.flowi* %70)
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %67, %60
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %6, align 4
  br label %75

74:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %72, %18
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @__ip_route_output_key(%struct.net*, %struct.rtable**, %struct.flowi*) #1

declare dso_local i32 @__xfrm_lookup(%struct.net*, %struct.dst_entry**, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local i32 @ipv4_dst_blackhole(%struct.net*, %struct.rtable**, %struct.flowi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
