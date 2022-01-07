; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_ipx_route.c_ipxrtr_add_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_ipx_route.c_ipxrtr_add_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipx_interface = type { i32 }
%struct.ipx_route = type { i32, i32, %struct.ipx_interface*, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ipx_routes_lock = common dso_local global i32 0, align 4
@ipx_routes = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ipx_internal_net = common dso_local global %struct.ipx_interface* null, align 8
@IPX_NODE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipxrtr_add_route(i32 %0, %struct.ipx_interface* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipx_interface*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ipx_route*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ipx_interface* %1, %struct.ipx_interface** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ipx_route* @ipxrtr_lookup(i32 %9)
  store %struct.ipx_route* %10, %struct.ipx_route** %7, align 8
  %11 = load %struct.ipx_route*, %struct.ipx_route** %7, align 8
  %12 = icmp ne %struct.ipx_route* %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.ipx_route* @kmalloc(i32 32, i32 %14)
  store %struct.ipx_route* %15, %struct.ipx_route** %7, align 8
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ipx_route*, %struct.ipx_route** %7, align 8
  %19 = icmp ne %struct.ipx_route* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %70

21:                                               ; preds = %13
  %22 = load %struct.ipx_route*, %struct.ipx_route** %7, align 8
  %23 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %22, i32 0, i32 5
  %24 = call i32 @atomic_set(i32* %23, i32 1)
  %25 = load %struct.ipx_route*, %struct.ipx_route** %7, align 8
  %26 = call i32 @ipxrtr_hold(%struct.ipx_route* %25)
  %27 = call i32 @write_lock_bh(i32* @ipx_routes_lock)
  %28 = load %struct.ipx_route*, %struct.ipx_route** %7, align 8
  %29 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %28, i32 0, i32 4
  %30 = call i32 @list_add(i32* %29, i32* @ipx_routes)
  %31 = call i32 @write_unlock_bh(i32* @ipx_routes_lock)
  br label %40

32:                                               ; preds = %3
  %33 = load i32, i32* @EEXIST, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %36 = load %struct.ipx_interface*, %struct.ipx_interface** @ipx_internal_net, align 8
  %37 = icmp eq %struct.ipx_interface* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %67

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.ipx_route*, %struct.ipx_route** %7, align 8
  %43 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %45 = load %struct.ipx_route*, %struct.ipx_route** %7, align 8
  %46 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %45, i32 0, i32 2
  store %struct.ipx_interface* %44, %struct.ipx_interface** %46, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %40
  %50 = load %struct.ipx_route*, %struct.ipx_route** %7, align 8
  %51 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IPX_NODE_LEN, align 4
  %54 = call i32 @memset(i32 %52, i8 signext 0, i32 %53)
  %55 = load %struct.ipx_route*, %struct.ipx_route** %7, align 8
  %56 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %66

57:                                               ; preds = %40
  %58 = load %struct.ipx_route*, %struct.ipx_route** %7, align 8
  %59 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @IPX_NODE_LEN, align 4
  %63 = call i32 @memcpy(i32 %60, i8* %61, i32 %62)
  %64 = load %struct.ipx_route*, %struct.ipx_route** %7, align 8
  %65 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %57, %49
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %66, %38
  %68 = load %struct.ipx_route*, %struct.ipx_route** %7, align 8
  %69 = call i32 @ipxrtr_put(%struct.ipx_route* %68)
  br label %70

70:                                               ; preds = %67, %20
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local %struct.ipx_route* @ipxrtr_lookup(i32) #1

declare dso_local %struct.ipx_route* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ipxrtr_hold(%struct.ipx_route*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ipxrtr_put(%struct.ipx_route*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
