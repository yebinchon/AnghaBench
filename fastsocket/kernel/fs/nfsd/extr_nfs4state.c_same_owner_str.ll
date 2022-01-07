; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_same_owner_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_same_owner_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_stateowner = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.xdr_netobj = type { i64, i32 }
%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_stateowner*, %struct.xdr_netobj*, %struct.TYPE_9__*)* @same_owner_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @same_owner_str(%struct.nfs4_stateowner* %0, %struct.xdr_netobj* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.nfs4_stateowner*, align 8
  %5 = alloca %struct.xdr_netobj*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.nfs4_stateowner* %0, %struct.nfs4_stateowner** %4, align 8
  store %struct.xdr_netobj* %1, %struct.xdr_netobj** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %7 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  %8 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %12 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  %17 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %21 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %24 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @memcmp(i32 %19, i32 %22, i64 %25)
  %27 = icmp eq i64 0, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %15
  %29 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  %30 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br label %39

39:                                               ; preds = %28, %15, %3
  %40 = phi i1 [ false, %15 ], [ false, %3 ], [ %38, %28 ]
  %41 = zext i1 %40 to i32
  ret i32 %41
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
