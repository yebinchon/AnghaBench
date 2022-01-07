; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_callforward_do_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_callforward_do_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.nf_inet_addr = type { i32 }
%struct.nf_afinfo = type { i32 (%struct.dst_entry**, %struct.flowi*)* }
%struct.dst_entry = type opaque
%struct.flowi = type opaque
%struct.flowi.0 = type { i32, i32 }
%struct.rtable = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dst_entry.1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.nf_inet_addr*, %union.nf_inet_addr*, i32)* @callforward_do_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callforward_do_filter(%union.nf_inet_addr* %0, %union.nf_inet_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.nf_inet_addr*, align 8
  %6 = alloca %union.nf_inet_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_afinfo*, align 8
  %9 = alloca %struct.flowi.0, align 4
  %10 = alloca %struct.flowi.0, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtable*, align 8
  %13 = alloca %struct.rtable*, align 8
  store %union.nf_inet_addr* %0, %union.nf_inet_addr** %5, align 8
  store %union.nf_inet_addr* %1, %union.nf_inet_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.nf_afinfo* @nf_get_afinfo(i32 %14)
  store %struct.nf_afinfo* %15, %struct.nf_afinfo** %8, align 8
  %16 = load %struct.nf_afinfo*, %struct.nf_afinfo** %8, align 8
  %17 = icmp ne %struct.nf_afinfo* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

19:                                               ; preds = %3
  %20 = call i32 @memset(%struct.flowi.0* %9, i32 0, i32 8)
  %21 = call i32 @memset(%struct.flowi.0* %10, i32 0, i32 8)
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %81 [
    i32 129, label %23
  ]

23:                                               ; preds = %19
  %24 = load %union.nf_inet_addr*, %union.nf_inet_addr** %5, align 8
  %25 = bitcast %union.nf_inet_addr* %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.flowi.0, %struct.flowi.0* %9, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %union.nf_inet_addr*, %union.nf_inet_addr** %6, align 8
  %29 = bitcast %union.nf_inet_addr* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.flowi.0, %struct.flowi.0* %10, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.nf_afinfo*, %struct.nf_afinfo** %8, align 8
  %33 = getelementptr inbounds %struct.nf_afinfo, %struct.nf_afinfo* %32, i32 0, i32 0
  %34 = load i32 (%struct.dst_entry**, %struct.flowi*)*, i32 (%struct.dst_entry**, %struct.flowi*)** %33, align 8
  %35 = bitcast %struct.rtable** %12 to %struct.dst_entry.1**
  %36 = bitcast %struct.dst_entry.1** %35 to %struct.dst_entry**
  %37 = bitcast %struct.flowi.0* %9 to %struct.flowi*
  %38 = call i32 %34(%struct.dst_entry** %36, %struct.flowi* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %80, label %40

40:                                               ; preds = %23
  %41 = load %struct.nf_afinfo*, %struct.nf_afinfo** %8, align 8
  %42 = getelementptr inbounds %struct.nf_afinfo, %struct.nf_afinfo* %41, i32 0, i32 0
  %43 = load i32 (%struct.dst_entry**, %struct.flowi*)*, i32 (%struct.dst_entry**, %struct.flowi*)** %42, align 8
  %44 = bitcast %struct.rtable** %13 to %struct.dst_entry.1**
  %45 = bitcast %struct.dst_entry.1** %44 to %struct.dst_entry**
  %46 = bitcast %struct.flowi.0* %10 to %struct.flowi*
  %47 = call i32 %43(%struct.dst_entry** %45, %struct.flowi* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %75, label %49

49:                                               ; preds = %40
  %50 = load %struct.rtable*, %struct.rtable** %12, align 8
  %51 = getelementptr inbounds %struct.rtable, %struct.rtable* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.rtable*, %struct.rtable** %13, align 8
  %54 = getelementptr inbounds %struct.rtable, %struct.rtable* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %49
  %58 = load %struct.rtable*, %struct.rtable** %12, align 8
  %59 = getelementptr inbounds %struct.rtable, %struct.rtable* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rtable*, %struct.rtable** %13, align 8
  %64 = getelementptr inbounds %struct.rtable, %struct.rtable* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  store i32 1, i32* %11, align 4
  br label %70

70:                                               ; preds = %69, %57, %49
  %71 = load %struct.rtable*, %struct.rtable** %13, align 8
  %72 = getelementptr inbounds %struct.rtable, %struct.rtable* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @dst_release(%struct.TYPE_6__* %73)
  br label %75

75:                                               ; preds = %70, %40
  %76 = load %struct.rtable*, %struct.rtable** %12, align 8
  %77 = getelementptr inbounds %struct.rtable, %struct.rtable* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @dst_release(%struct.TYPE_6__* %78)
  br label %80

80:                                               ; preds = %75, %23
  br label %81

81:                                               ; preds = %19, %80
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %18
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.nf_afinfo* @nf_get_afinfo(i32) #1

declare dso_local i32 @memset(%struct.flowi.0*, i32, i32) #1

declare dso_local i32 @dst_release(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
