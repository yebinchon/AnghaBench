; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_zone.c_tipc_zone_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_zone.c_tipc_zone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct._zone** }
%struct._zone = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Zone creation failed, invalid domain 0x%x\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Zone creation failed, insufficient memory\0A\00", align 1
@tipc_net = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._zone* @tipc_zone_create(i64 %0) #0 {
  %2 = alloca %struct._zone*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._zone*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @tipc_addr_domain_valid(i64 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %10)
  store %struct._zone* null, %struct._zone** %2, align 8
  br label %31

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct._zone* @kzalloc(i32 4, i32 %13)
  store %struct._zone* %14, %struct._zone** %4, align 8
  %15 = load %struct._zone*, %struct._zone** %4, align 8
  %16 = icmp ne %struct._zone* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 @warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store %struct._zone* null, %struct._zone** %2, align 8
  br label %31

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @tipc_zone(i64 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @tipc_addr(i64 %22, i32 0, i32 0)
  %24 = load %struct._zone*, %struct._zone** %4, align 8
  %25 = getelementptr inbounds %struct._zone, %struct._zone* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct._zone*, %struct._zone** %4, align 8
  %27 = load %struct._zone**, %struct._zone*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_net, i32 0, i32 0), align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct._zone*, %struct._zone** %27, i64 %28
  store %struct._zone* %26, %struct._zone** %29, align 8
  %30 = load %struct._zone*, %struct._zone** %4, align 8
  store %struct._zone* %30, %struct._zone** %2, align 8
  br label %31

31:                                               ; preds = %19, %17, %9
  %32 = load %struct._zone*, %struct._zone** %2, align 8
  ret %struct._zone* %32
}

declare dso_local i32 @tipc_addr_domain_valid(i64) #1

declare dso_local i32 @err(i8*, i64) #1

declare dso_local %struct._zone* @kzalloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @tipc_zone(i64) #1

declare dso_local i32 @tipc_addr(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
