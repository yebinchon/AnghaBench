; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node_subscr.c_tipc_nodesub_subscribe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node_subscr.c_tipc_nodesub_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node_subscr = type { %struct.TYPE_4__*, i32, i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@tipc_own_addr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Node subscription rejected, unknown node 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_nodesub_subscribe(%struct.tipc_node_subscr* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tipc_node_subscr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.tipc_node_subscr* %0, %struct.tipc_node_subscr** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @tipc_own_addr, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.tipc_node_subscr*, %struct.tipc_node_subscr** %5, align 8
  %14 = getelementptr inbounds %struct.tipc_node_subscr, %struct.tipc_node_subscr* %13, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %14, align 8
  br label %49

15:                                               ; preds = %4
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.TYPE_4__* @tipc_node_find(i64 %16)
  %18 = load %struct.tipc_node_subscr*, %struct.tipc_node_subscr** %5, align 8
  %19 = getelementptr inbounds %struct.tipc_node_subscr, %struct.tipc_node_subscr* %18, i32 0, i32 0
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %19, align 8
  %20 = load %struct.tipc_node_subscr*, %struct.tipc_node_subscr** %5, align 8
  %21 = getelementptr inbounds %struct.tipc_node_subscr, %struct.tipc_node_subscr* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %49

27:                                               ; preds = %15
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.tipc_node_subscr*, %struct.tipc_node_subscr** %5, align 8
  %30 = getelementptr inbounds %struct.tipc_node_subscr, %struct.tipc_node_subscr* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.tipc_node_subscr*, %struct.tipc_node_subscr** %5, align 8
  %33 = getelementptr inbounds %struct.tipc_node_subscr, %struct.tipc_node_subscr* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.tipc_node_subscr*, %struct.tipc_node_subscr** %5, align 8
  %35 = getelementptr inbounds %struct.tipc_node_subscr, %struct.tipc_node_subscr* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @tipc_node_lock(%struct.TYPE_4__* %36)
  %38 = load %struct.tipc_node_subscr*, %struct.tipc_node_subscr** %5, align 8
  %39 = getelementptr inbounds %struct.tipc_node_subscr, %struct.tipc_node_subscr* %38, i32 0, i32 1
  %40 = load %struct.tipc_node_subscr*, %struct.tipc_node_subscr** %5, align 8
  %41 = getelementptr inbounds %struct.tipc_node_subscr, %struct.tipc_node_subscr* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @list_add_tail(i32* %39, i32* %43)
  %45 = load %struct.tipc_node_subscr*, %struct.tipc_node_subscr** %5, align 8
  %46 = getelementptr inbounds %struct.tipc_node_subscr, %struct.tipc_node_subscr* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @tipc_node_unlock(%struct.TYPE_4__* %47)
  br label %49

49:                                               ; preds = %27, %24, %12
  ret void
}

declare dso_local %struct.TYPE_4__* @tipc_node_find(i64) #1

declare dso_local i32 @warn(i8*, i64) #1

declare dso_local i32 @tipc_node_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tipc_node_unlock(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
