; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_fib6_ifdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_fib6_ifdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i64 }
%struct.net_device = type opaque
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rt6_info* }
%struct.arg_dev_net = type { %struct.net*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"deleted by ifdown %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt6_info*, i8*)* @fib6_ifdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_ifdown(%struct.rt6_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt6_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net*, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.arg_dev_net*
  %10 = getelementptr inbounds %struct.arg_dev_net, %struct.arg_dev_net* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.arg_dev_net*
  %15 = getelementptr inbounds %struct.arg_dev_net, %struct.arg_dev_net* %14, i32 0, i32 0
  %16 = load %struct.net*, %struct.net** %15, align 8
  store %struct.net* %16, %struct.net** %7, align 8
  %17 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %18 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = bitcast %struct.net_device* %21 to i8*
  %23 = icmp eq i8* %20, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = icmp eq %struct.net_device* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24, %2
  %28 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %29 = load %struct.net*, %struct.net** %7, align 8
  %30 = getelementptr inbounds %struct.net, %struct.net* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.rt6_info*, %struct.rt6_info** %31, align 8
  %33 = icmp ne %struct.rt6_info* %28, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %36 = call i32 @RT6_TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.rt6_info* %35)
  store i32 -1, i32* %3, align 4
  br label %38

37:                                               ; preds = %27, %24
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @RT6_TRACE(i8*, %struct.rt6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
