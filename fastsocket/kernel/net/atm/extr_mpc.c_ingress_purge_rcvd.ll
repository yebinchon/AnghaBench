; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_ingress_purge_rcvd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_ingress_purge_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_message = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mpoa_client = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32* (i32, %struct.mpoa_client*, i32)*, i32 (i32*)*, i32 (i32*, %struct.mpoa_client*)* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"mpoa: (%s) ingress_purge_rcvd: purge for a non-existing entry, ip = %pI4\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"mpoa: (%s) ingress_purge_rcvd: removing an ingress entry, ip = %pI4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_message*, %struct.mpoa_client*)* @ingress_purge_rcvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ingress_purge_rcvd(%struct.k_message* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.k_message*, align 8
  %4 = alloca %struct.mpoa_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.k_message* %0, %struct.k_message** %3, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %4, align 8
  %8 = load %struct.k_message*, %struct.k_message** %3, align 8
  %9 = getelementptr inbounds %struct.k_message, %struct.k_message* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.k_message*, %struct.k_message** %3, align 8
  %14 = getelementptr inbounds %struct.k_message, %struct.k_message* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %17 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32* (i32, %struct.mpoa_client*, i32)*, i32* (i32, %struct.mpoa_client*, i32)** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32* %20(i32 %21, %struct.mpoa_client* %22, i32 %23)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %29 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %32, i32* %5)
  br label %76

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %72, %34
  %36 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %37 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dprintk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32* %5)
  %42 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %43 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %42, i32 0, i32 1
  %44 = call i32 @write_lock_bh(i32* %43)
  %45 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %46 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32 (i32*, %struct.mpoa_client*)*, i32 (i32*, %struct.mpoa_client*)** %48, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %52 = call i32 %49(i32* %50, %struct.mpoa_client* %51)
  %53 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %54 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %53, i32 0, i32 1
  %55 = call i32 @write_unlock_bh(i32* %54)
  %56 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %57 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32 (i32*)*, i32 (i32*)** %59, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 %60(i32* %61)
  %63 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %64 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32* (i32, %struct.mpoa_client*, i32)*, i32* (i32, %struct.mpoa_client*, i32)** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32* %67(i32 %68, %struct.mpoa_client* %69, i32 %70)
  store i32* %71, i32** %7, align 8
  br label %72

72:                                               ; preds = %35
  %73 = load i32*, i32** %7, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %35, label %75

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %75, %27
  ret void
}

declare dso_local i32 @printk(i8*, i32, i32*) #1

declare dso_local i32 @dprintk(i8*, i32, i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
