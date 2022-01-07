; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_stop_mpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_stop_mpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpoa_client = type { i32*, i32, %struct.net_device* }
%struct.net_device = type { i32*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"mpoa: (%s) stop_mpc:\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c" mpc already stopped, not fatal\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpoa_client*)* @stop_mpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_mpc(%struct.mpoa_client* %0) #0 {
  %2 = alloca %struct.mpoa_client*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.mpoa_client* %0, %struct.mpoa_client** %2, align 8
  %4 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %5 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %4, i32 0, i32 2
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %8 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %7, i32 0, i32 2
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %17 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %16, i32 0, i32 1
  %18 = icmp ne i32* %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %30

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %24 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %29 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %21, %19
  ret void
}

declare dso_local i32 @dprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
