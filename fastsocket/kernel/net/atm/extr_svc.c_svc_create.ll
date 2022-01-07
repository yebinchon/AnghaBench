; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@svc_proto_ops = common dso_local global i32 0, align 4
@AF_ATMSVC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @svc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
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
  br label %39

16:                                               ; preds = %4
  %17 = load %struct.socket*, %struct.socket** %7, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  store i32* @svc_proto_ops, i32** %18, align 8
  %19 = load %struct.net*, %struct.net** %6, align 8
  %20 = load %struct.socket*, %struct.socket** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** @AF_ATMSVC, align 8
  %23 = call i32 @vcc_create(%struct.net* %19, %struct.socket* %20, i32 %21, i8* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %39

28:                                               ; preds = %16
  %29 = load i8*, i8** @AF_ATMSVC, align 8
  %30 = load %struct.socket*, %struct.socket** %7, align 8
  %31 = call %struct.TYPE_6__* @ATM_SD(%struct.socket* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i8* %29, i8** %33, align 8
  %34 = load i8*, i8** @AF_ATMSVC, align 8
  %35 = load %struct.socket*, %struct.socket** %7, align 8
  %36 = call %struct.TYPE_6__* @ATM_SD(%struct.socket* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i8* %34, i8** %38, align 8
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %28, %26, %13
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @vcc_create(%struct.net*, %struct.socket*, i32, i8*) #1

declare dso_local %struct.TYPE_6__* @ATM_SD(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
