; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_mps_death.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_mps_death.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_message = type { i32 }
%struct.mpoa_client = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.mpoa_client*)* }
%struct.TYPE_6__ = type { i32 (%struct.mpoa_client*)* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"mpoa: (%s) mps_death:\0A\00", align 1
@ATM_ESA_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"mpoa: (%s) mps_death: wrong MPS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_message*, %struct.mpoa_client*)* @mps_death to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps_death(%struct.k_message* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.k_message*, align 8
  %4 = alloca %struct.mpoa_client*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.k_message* %0, %struct.k_message** %3, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %4, align 8
  %6 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %7 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %6, i32 0, i32 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.k_message*, %struct.k_message** %3, align 8
  %13 = getelementptr inbounds %struct.k_message, %struct.k_message* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %16 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ATM_ESA_LEN, align 4
  %19 = call i64 @memcmp(i32 %14, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %23 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %22, i32 0, i32 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %65

28:                                               ; preds = %2
  %29 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %30 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %29, i32 0, i32 2
  %31 = call i32 @read_lock_irq(i32* %30)
  %32 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %33 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %32, i32 0, i32 3
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %5, align 8
  br label %35

35:                                               ; preds = %38, %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = icmp ne %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = call i32 @purge_egress_shortcut(i32 %41, %struct.TYPE_9__* %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %5, align 8
  br label %35

47:                                               ; preds = %35
  %48 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %49 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %48, i32 0, i32 2
  %50 = call i32 @read_unlock_irq(i32* %49)
  %51 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %52 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32 (%struct.mpoa_client*)*, i32 (%struct.mpoa_client*)** %54, align 8
  %56 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %57 = call i32 %55(%struct.mpoa_client* %56)
  %58 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %59 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32 (%struct.mpoa_client*)*, i32 (%struct.mpoa_client*)** %61, align 8
  %63 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %64 = call i32 %62(%struct.mpoa_client* %63)
  br label %65

65:                                               ; preds = %47, %21
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @read_lock_irq(i32*) #1

declare dso_local i32 @purge_egress_shortcut(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @read_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
