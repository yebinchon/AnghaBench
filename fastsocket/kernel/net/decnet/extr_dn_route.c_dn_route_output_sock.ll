; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_route_output_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_route_output_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.flowi = type { i64 }
%struct.sock = type { i32 }

@MSG_TRYHARD = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@XFRM_LOOKUP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_route_output_sock(%struct.dst_entry** %0, %struct.flowi* %1, %struct.sock* %2, i32 %3) #0 {
  %5 = alloca %struct.dst_entry**, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dst_entry** %0, %struct.dst_entry*** %5, align 8
  store %struct.flowi* %1, %struct.flowi** %6, align 8
  store %struct.sock* %2, %struct.sock** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.dst_entry**, %struct.dst_entry*** %5, align 8
  %11 = load %struct.flowi*, %struct.flowi** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @MSG_TRYHARD, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @__dn_route_output_key(%struct.dst_entry** %10, %struct.flowi* %11, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %4
  %19 = load %struct.flowi*, %struct.flowi** %6, align 8
  %20 = getelementptr inbounds %struct.flowi, %struct.flowi* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.dst_entry**, %struct.dst_entry*** %5, align 8
  %25 = load %struct.flowi*, %struct.flowi** %6, align 8
  %26 = load %struct.sock*, %struct.sock** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @MSG_DONTWAIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @XFRM_LOOKUP_WAIT, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ 0, %31 ], [ %33, %32 ]
  %36 = call i32 @xfrm_lookup(i32* @init_net, %struct.dst_entry** %24, %struct.flowi* %25, %struct.sock* %26, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %18, %4
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @__dn_route_output_key(%struct.dst_entry**, %struct.flowi*, i32) #1

declare dso_local i32 @xfrm_lookup(i32*, %struct.dst_entry**, %struct.flowi*, %struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
