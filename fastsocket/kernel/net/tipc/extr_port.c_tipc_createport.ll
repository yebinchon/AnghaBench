; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_createport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_createport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.port = type { %struct.TYPE_2__, %struct.user_port* }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Port creation failed, no memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@port_dispatcher = common dso_local global i32 0, align 4
@port_wakeup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_createport(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.user_port*, align 8
  %25 = alloca %struct.port*, align 8
  store i32 %0, i32* %13, align 4
  store i8* %1, i8** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.user_port* @kmalloc(i32 56, i32 %26)
  store %struct.user_port* %27, %struct.user_port** %24, align 8
  %28 = load %struct.user_port*, %struct.user_port** %24, align 8
  %29 = icmp ne %struct.user_port* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %11
  %31 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %12, align 4
  br label %96

34:                                               ; preds = %11
  %35 = load i32, i32* @port_dispatcher, align 4
  %36 = load i32, i32* @port_wakeup, align 4
  %37 = load i32, i32* %15, align 4
  %38 = call i64 @tipc_createport_raw(i32* null, i32 %35, i32 %36, i32 %37)
  %39 = inttoptr i64 %38 to %struct.port*
  store %struct.port* %39, %struct.port** %25, align 8
  %40 = load %struct.port*, %struct.port** %25, align 8
  %41 = icmp ne %struct.port* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load %struct.user_port*, %struct.user_port** %24, align 8
  %44 = call i32 @kfree(%struct.user_port* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %96

47:                                               ; preds = %34
  %48 = load %struct.user_port*, %struct.user_port** %24, align 8
  %49 = load %struct.port*, %struct.port** %25, align 8
  %50 = getelementptr inbounds %struct.port, %struct.port* %49, i32 0, i32 1
  store %struct.user_port* %48, %struct.user_port** %50, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.user_port*, %struct.user_port** %24, align 8
  %53 = getelementptr inbounds %struct.user_port, %struct.user_port* %52, i32 0, i32 10
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load %struct.user_port*, %struct.user_port** %24, align 8
  %56 = getelementptr inbounds %struct.user_port, %struct.user_port* %55, i32 0, i32 9
  store i8* %54, i8** %56, align 8
  %57 = load %struct.port*, %struct.port** %25, align 8
  %58 = getelementptr inbounds %struct.port, %struct.port* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.user_port*, %struct.user_port** %24, align 8
  %62 = getelementptr inbounds %struct.user_port, %struct.user_port* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load %struct.user_port*, %struct.user_port** %24, align 8
  %65 = getelementptr inbounds %struct.user_port, %struct.user_port* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load %struct.user_port*, %struct.user_port** %24, align 8
  %68 = getelementptr inbounds %struct.user_port, %struct.user_port* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %18, align 4
  %70 = load %struct.user_port*, %struct.user_port** %24, align 8
  %71 = getelementptr inbounds %struct.user_port, %struct.user_port* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %19, align 4
  %73 = load %struct.user_port*, %struct.user_port** %24, align 8
  %74 = getelementptr inbounds %struct.user_port, %struct.user_port* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %20, align 4
  %76 = load %struct.user_port*, %struct.user_port** %24, align 8
  %77 = getelementptr inbounds %struct.user_port, %struct.user_port* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %21, align 4
  %79 = load %struct.user_port*, %struct.user_port** %24, align 8
  %80 = getelementptr inbounds %struct.user_port, %struct.user_port* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %22, align 4
  %82 = load %struct.user_port*, %struct.user_port** %24, align 8
  %83 = getelementptr inbounds %struct.user_port, %struct.user_port* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.user_port*, %struct.user_port** %24, align 8
  %85 = getelementptr inbounds %struct.user_port, %struct.user_port* %84, i32 0, i32 0
  %86 = call i32 @INIT_LIST_HEAD(i32* %85)
  %87 = load %struct.user_port*, %struct.user_port** %24, align 8
  %88 = call i32 @tipc_reg_add_port(%struct.user_port* %87)
  %89 = load %struct.port*, %struct.port** %25, align 8
  %90 = getelementptr inbounds %struct.port, %struct.port* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** %23, align 8
  store i32 %92, i32* %93, align 4
  %94 = load %struct.port*, %struct.port** %25, align 8
  %95 = call i32 @tipc_port_unlock(%struct.port* %94)
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %47, %42, %30
  %97 = load i32, i32* %12, align 4
  ret i32 %97
}

declare dso_local %struct.user_port* @kmalloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @tipc_createport_raw(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.user_port*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tipc_reg_add_port(%struct.user_port*) #1

declare dso_local i32 @tipc_port_unlock(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
