; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_l3proto_generic.c_generic_invert_tuple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_l3proto_generic.c_generic_invert_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*)* @generic_invert_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_invert_tuple(%struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple* %1) #0 {
  %3 = alloca %struct.nf_conntrack_tuple*, align 8
  %4 = alloca %struct.nf_conntrack_tuple*, align 8
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %3, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %4, align 8
  %5 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %3, align 8
  %6 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call i32 @memset(i32* %7, i32 0, i32 4)
  %9 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %3, align 8
  %10 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @memset(i32* %11, i32 0, i32 4)
  ret i32 1
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
