; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_ct_invert_tuple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_ct_invert_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nf_conntrack_l3proto = type { i64 (%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*)* }
%struct.nf_conntrack_l4proto = type { i32 (%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_l3proto* %2, %struct.nf_conntrack_l4proto* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conntrack_tuple*, align 8
  %7 = alloca %struct.nf_conntrack_tuple*, align 8
  %8 = alloca %struct.nf_conntrack_l3proto*, align 8
  %9 = alloca %struct.nf_conntrack_l4proto*, align 8
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %6, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %7, align 8
  store %struct.nf_conntrack_l3proto* %2, %struct.nf_conntrack_l3proto** %8, align 8
  store %struct.nf_conntrack_l4proto* %3, %struct.nf_conntrack_l4proto** %9, align 8
  %10 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %11 = call i32 @memset(%struct.nf_conntrack_tuple* %10, i32 0, i32 12)
  %12 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %13 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %17 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l3proto** %8, align 8
  %20 = getelementptr inbounds %struct.nf_conntrack_l3proto, %struct.nf_conntrack_l3proto* %19, i32 0, i32 0
  %21 = load i64 (%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*)*, i64 (%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*)** %20, align 8
  %22 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %23 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %24 = call i64 %21(%struct.nf_conntrack_tuple* %22, %struct.nf_conntrack_tuple* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %51

27:                                               ; preds = %4
  %28 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %29 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %36 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %39 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %43 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %9, align 8
  %46 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %45, i32 0, i32 0
  %47 = load i32 (%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*)*, i32 (%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*)** %46, align 8
  %48 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %49 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %50 = call i32 %47(%struct.nf_conntrack_tuple* %48, %struct.nf_conntrack_tuple* %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %27, %26
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.nf_conntrack_tuple*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
