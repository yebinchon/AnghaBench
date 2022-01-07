; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_af_bluetooth.c_bt_sock_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_af_bluetooth.c_bt_sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.net*, %struct.socket*, i32, i32)*, i32 }
%struct.socket = type { i32 }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@BT_MAX_PROTO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@bt_proto = common dso_local global %struct.TYPE_2__** null, align 8
@.str = private unnamed_addr constant [12 x i8] c"bt-proto-%d\00", align 1
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@bt_proto_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @bt_sock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_sock_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.net*, %struct.net** %6, align 8
  %12 = icmp ne %struct.net* %11, @init_net
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @EAFNOSUPPORT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %83

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @BT_MAX_PROTO, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %83

26:                                               ; preds = %19
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @bt_proto, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @request_module(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* @EPROTONOSUPPORT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  %39 = call i32 @read_lock(i32* @bt_proto_lock)
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @bt_proto, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %80

46:                                               ; preds = %36
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @bt_proto, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @try_module_get(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %46
  %57 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @bt_proto, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %57, i64 %59
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.net*, %struct.socket*, i32, i32)*, i32 (%struct.net*, %struct.socket*, i32, i32)** %62, align 8
  %64 = load %struct.net*, %struct.net** %6, align 8
  %65 = load %struct.socket*, %struct.socket** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 %63(%struct.net* %64, %struct.socket* %65, i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.socket*, %struct.socket** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @bt_sock_reclassify_lock(%struct.socket* %69, i32 %70)
  %72 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @bt_proto, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %72, i64 %74
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @module_put(i32 %78)
  br label %80

80:                                               ; preds = %56, %46, %36
  %81 = call i32 @read_unlock(i32* @bt_proto_lock)
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %23, %13
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @request_module(i8*, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @bt_sock_reclassify_lock(%struct.socket*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
