; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_dst_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_dst_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.xfrm_state = type { i32*, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.net = type { i32 }

@XFRM_TYPE_LOCAL_COADDR = common dso_local global i32 0, align 4
@XFRM_TYPE_REMOTE_COADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.xfrm_state*, i32, i32*, i32*, i32)* @xfrm_dst_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @xfrm_dst_lookup(%struct.xfrm_state* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dst_entry*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %16 = call %struct.net* @xs_net(%struct.xfrm_state* %15)
  store %struct.net* %16, %struct.net** %11, align 8
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32* %19, i32** %12, align 8
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %21 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32* %22, i32** %13, align 8
  %23 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %24 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @XFRM_TYPE_LOCAL_COADDR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %5
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %33 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %9, align 8
  store i32* %35, i32** %13, align 8
  br label %36

36:                                               ; preds = %31, %5
  %37 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %38 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @XFRM_TYPE_REMOTE_COADDR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i32*, i32** %8, align 8
  store i32* %46, i32** %12, align 8
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %48 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %13, align 8
  br label %50

50:                                               ; preds = %45, %36
  %51 = load %struct.net*, %struct.net** %11, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call %struct.dst_entry* @__xfrm_dst_lookup(%struct.net* %51, i32 %52, i32* %53, i32* %54, i32 %55)
  store %struct.dst_entry* %56, %struct.dst_entry** %14, align 8
  %57 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %58 = call i32 @IS_ERR(%struct.dst_entry* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %50
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = icmp ne i32* %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @memcpy(i32* %65, i32* %66, i32 4)
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i32*, i32** %9, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = icmp ne i32* %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @memcpy(i32* %73, i32* %74, i32 4)
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %76, %50
  %78 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  ret %struct.dst_entry* %78
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local %struct.dst_entry* @__xfrm_dst_lookup(%struct.net*, i32, i32*, i32*, i32) #1

declare dso_local i32 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
