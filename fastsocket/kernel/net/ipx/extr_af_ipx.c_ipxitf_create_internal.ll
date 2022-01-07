; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_create_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_create_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipx_interface = type { i32 }
%struct.ipx_interface_definition = type { i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@ipx_primary_net = common dso_local global %struct.ipx_interface* null, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@IPX_NODE_LEN = common dso_local global i32 0, align 4
@ipx_internal_net = common dso_local global %struct.ipx_interface* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipx_interface_definition*)* @ipxitf_create_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipxitf_create_internal(%struct.ipx_interface_definition* %0) #0 {
  %2 = alloca %struct.ipx_interface_definition*, align 8
  %3 = alloca %struct.ipx_interface*, align 8
  %4 = alloca i32, align 4
  store %struct.ipx_interface_definition* %0, %struct.ipx_interface_definition** %2, align 8
  %5 = load i32, i32* @EEXIST, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.ipx_interface*, %struct.ipx_interface** @ipx_primary_net, align 8
  %8 = icmp ne %struct.ipx_interface* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %58

10:                                               ; preds = %1
  %11 = load i32, i32* @EADDRNOTAVAIL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ipx_interface_definition*, %struct.ipx_interface_definition** %2, align 8
  %14 = getelementptr inbounds %struct.ipx_interface_definition, %struct.ipx_interface_definition* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %58

18:                                               ; preds = %10
  %19 = load %struct.ipx_interface_definition*, %struct.ipx_interface_definition** %2, align 8
  %20 = getelementptr inbounds %struct.ipx_interface_definition, %struct.ipx_interface_definition* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ipx_interface* @ipxitf_find_using_net(i32 %21)
  store %struct.ipx_interface* %22, %struct.ipx_interface** %3, align 8
  %23 = load i32, i32* @EADDRINUSE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %26 = icmp ne %struct.ipx_interface* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %29 = call i32 @ipxitf_put(%struct.ipx_interface* %28)
  br label %58

30:                                               ; preds = %18
  %31 = load %struct.ipx_interface_definition*, %struct.ipx_interface_definition** %2, align 8
  %32 = getelementptr inbounds %struct.ipx_interface_definition, %struct.ipx_interface_definition* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.ipx_interface* @ipxitf_alloc(i32* null, i32 %33, i32 0, i32* null, i32 1, i32 0)
  store %struct.ipx_interface* %34, %struct.ipx_interface** %3, align 8
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  %37 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %38 = icmp ne %struct.ipx_interface* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %58

40:                                               ; preds = %30
  %41 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %42 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %41, i32 0, i32 0
  %43 = bitcast i32* %42 to i8*
  %44 = load %struct.ipx_interface_definition*, %struct.ipx_interface_definition** %2, align 8
  %45 = getelementptr inbounds %struct.ipx_interface_definition, %struct.ipx_interface_definition* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IPX_NODE_LEN, align 4
  %48 = call i32 @memcpy(i8* %43, i32 %46, i32 %47)
  %49 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  store %struct.ipx_interface* %49, %struct.ipx_interface** @ipx_primary_net, align 8
  store %struct.ipx_interface* %49, %struct.ipx_interface** @ipx_internal_net, align 8
  %50 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %51 = call i32 @ipxitf_hold(%struct.ipx_interface* %50)
  %52 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %53 = call i32 @ipxitf_insert(%struct.ipx_interface* %52)
  %54 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %55 = call i32 @ipxitf_add_local_route(%struct.ipx_interface* %54)
  store i32 %55, i32* %4, align 4
  %56 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %57 = call i32 @ipxitf_put(%struct.ipx_interface* %56)
  br label %58

58:                                               ; preds = %40, %39, %27, %17, %9
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.ipx_interface* @ipxitf_find_using_net(i32) #1

declare dso_local i32 @ipxitf_put(%struct.ipx_interface*) #1

declare dso_local %struct.ipx_interface* @ipxitf_alloc(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ipxitf_hold(%struct.ipx_interface*) #1

declare dso_local i32 @ipxitf_insert(%struct.ipx_interface*) #1

declare dso_local i32 @ipxitf_add_local_route(%struct.ipx_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
