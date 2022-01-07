; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_nfsl.c_amfs_nfsl_umounted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_nfsl.c_amfs_nfsl_umounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_7__*)* }

@MFF_NFSLINK = common dso_local global i32 0, align 4
@amfs_link_ops = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@nfs_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @amfs_nfsl_umounted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amfs_nfsl_umounted(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MFF_NFSLINK, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @amfs_link_ops, i32 0, i32 0), align 8
  %11 = icmp ne i32 (%struct.TYPE_7__*)* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @amfs_link_ops, i32 0, i32 0), align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = call i32 %13(%struct.TYPE_7__* %14)
  br label %16

16:                                               ; preds = %12, %9
  br label %25

17:                                               ; preds = %1
  %18 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @nfs_ops, i32 0, i32 0), align 8
  %19 = icmp ne i32 (%struct.TYPE_7__*)* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @nfs_ops, i32 0, i32 0), align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = call i32 %21(%struct.TYPE_7__* %22)
  br label %24

24:                                               ; preds = %20, %17
  br label %25

25:                                               ; preds = %24, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
