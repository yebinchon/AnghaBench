; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_ipx_route.c_ipxrtr_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_ipx_route.c_ipxrtr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipx_route_definition = type { i32, i32, i32 }
%struct.ipx_interface = type { i32 }

@ENETUNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipx_route_definition*)* @ipxrtr_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipxrtr_create(%struct.ipx_route_definition* %0) #0 {
  %2 = alloca %struct.ipx_route_definition*, align 8
  %3 = alloca %struct.ipx_interface*, align 8
  %4 = alloca i32, align 4
  store %struct.ipx_route_definition* %0, %struct.ipx_route_definition** %2, align 8
  %5 = load i32, i32* @ENETUNREACH, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.ipx_route_definition*, %struct.ipx_route_definition** %2, align 8
  %8 = getelementptr inbounds %struct.ipx_route_definition, %struct.ipx_route_definition* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ipx_interface* @ipxitf_find_using_net(i32 %9)
  store %struct.ipx_interface* %10, %struct.ipx_interface** %3, align 8
  %11 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %12 = icmp ne %struct.ipx_interface* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.ipx_route_definition*, %struct.ipx_route_definition** %2, align 8
  %16 = getelementptr inbounds %struct.ipx_route_definition, %struct.ipx_route_definition* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %19 = load %struct.ipx_route_definition*, %struct.ipx_route_definition** %2, align 8
  %20 = getelementptr inbounds %struct.ipx_route_definition, %struct.ipx_route_definition* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ipxrtr_add_route(i32 %17, %struct.ipx_interface* %18, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %24 = call i32 @ipxitf_put(%struct.ipx_interface* %23)
  br label %25

25:                                               ; preds = %14, %13
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.ipx_interface* @ipxitf_find_using_net(i32) #1

declare dso_local i32 @ipxrtr_add_route(i32, %struct.ipx_interface*, i32) #1

declare dso_local i32 @ipxitf_put(%struct.ipx_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
