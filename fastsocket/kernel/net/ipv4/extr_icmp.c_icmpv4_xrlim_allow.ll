; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_icmp.c_icmpv4_xrlim_allow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_icmp.c_icmpv4_xrlim_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rtable = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.dst_entry }
%struct.dst_entry = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@NR_ICMP_TYPES = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.rtable*, i32, i32)* @icmpv4_xrlim_allow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmpv4_xrlim_allow(%struct.net* %0, %struct.rtable* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.rtable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.rtable* %1, %struct.rtable** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.rtable*, %struct.rtable** %6, align 8
  %12 = getelementptr inbounds %struct.rtable, %struct.rtable* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.dst_entry* %13, %struct.dst_entry** %9, align 8
  store i32 1, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @NR_ICMP_TYPES, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %59

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %59

27:                                               ; preds = %22, %18
  %28 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %29 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %34 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_LOOPBACK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %59

42:                                               ; preds = %32, %27
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 1, %43
  %45 = load %struct.net*, %struct.net** %5, align 8
  %46 = getelementptr inbounds %struct.net, %struct.net* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %44, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %53 = load %struct.net*, %struct.net** %5, align 8
  %54 = getelementptr inbounds %struct.net, %struct.net* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @xrlim_allow(%struct.dst_entry* %52, i32 %56)
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %51, %42
  br label %59

59:                                               ; preds = %58, %41, %26, %17
  %60 = load i32, i32* %10, align 4
  ret i32 %60
}

declare dso_local i32 @xrlim_allow(%struct.dst_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
