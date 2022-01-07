; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_egress_purge_rcvd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_egress_purge_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_message = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mpoa_client = type { %struct.TYPE_8__*, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 (i32*)*, i32 (i32*, %struct.mpoa_client*)*, i32* (i32, %struct.mpoa_client*)* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"mpoa: (%s) egress_purge_rcvd: purge for a non-existing entry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_message*, %struct.mpoa_client*)* @egress_purge_rcvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @egress_purge_rcvd(%struct.k_message* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.k_message*, align 8
  %4 = alloca %struct.mpoa_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.k_message* %0, %struct.k_message** %3, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %4, align 8
  %7 = load %struct.k_message*, %struct.k_message** %3, align 8
  %8 = getelementptr inbounds %struct.k_message, %struct.k_message* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %13 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i32* (i32, %struct.mpoa_client*)*, i32* (i32, %struct.mpoa_client*)** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %19 = call i32* %16(i32 %17, %struct.mpoa_client* %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %24 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dprintk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %51

29:                                               ; preds = %2
  %30 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %31 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %30, i32 0, i32 1
  %32 = call i32 @write_lock_irq(i32* %31)
  %33 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %34 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32 (i32*, %struct.mpoa_client*)*, i32 (i32*, %struct.mpoa_client*)** %36, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %40 = call i32 %37(i32* %38, %struct.mpoa_client* %39)
  %41 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %42 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %41, i32 0, i32 1
  %43 = call i32 @write_unlock_irq(i32* %42)
  %44 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %45 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32 (i32*)*, i32 (i32*)** %47, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 %48(i32* %49)
  br label %51

51:                                               ; preds = %29, %22
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
