; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_dst_update_pmtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_dst_update_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i64*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.dn_dev = type { i64 }

@RTAX_MTU = common dso_local global i32 0, align 4
@dn_rt_mtu_expires = common dso_local global i32 0, align 4
@RTAX_ADVMSS = common dso_local global i32 0, align 4
@DN_MAX_NSP_DATA_HEADER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*, i64)* @dn_dst_update_pmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_dst_update_pmtu(%struct.dst_entry* %0, i64 %1) #0 {
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dn_dev*, align 8
  %7 = alloca i64, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 230, i64* %5, align 8
  %8 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %9 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %14 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.dn_dev*
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %12
  %23 = phi %struct.dn_dev* [ %20, %12 ], [ null, %21 ]
  store %struct.dn_dev* %23, %struct.dn_dev** %6, align 8
  %24 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %25 = icmp ne %struct.dn_dev* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %28 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i64, i64* %5, align 8
  %33 = sub nsw i64 %32, 6
  store i64 %33, i64* %5, align 8
  br label %37

34:                                               ; preds = %26, %22
  %35 = load i64, i64* %5, align 8
  %36 = sub nsw i64 %35, 21
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %39 = load i32, i32* @RTAX_MTU, align 4
  %40 = call i64 @dst_metric(%struct.dst_entry* %38, i32 %39)
  %41 = load i64, i64* %4, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %89

43:                                               ; preds = %37
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %89

47:                                               ; preds = %43
  %48 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %49 = load i32, i32* @RTAX_MTU, align 4
  %50 = call i32 @dst_metric_locked(%struct.dst_entry* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %55 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* @RTAX_MTU, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  store i64 %53, i64* %60, align 8
  %61 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %62 = load i32, i32* @dn_rt_mtu_expires, align 4
  %63 = call i32 @dst_set_expires(%struct.dst_entry* %61, i32 %62)
  br label %64

64:                                               ; preds = %52, %47
  %65 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %66 = load i32, i32* @RTAX_ADVMSS, align 4
  %67 = call i32 @dst_metric_locked(%struct.dst_entry* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %88, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @DN_MAX_NSP_DATA_HEADER, align 8
  %72 = sub nsw i64 %70, %71
  store i64 %72, i64* %7, align 8
  %73 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %74 = load i32, i32* @RTAX_ADVMSS, align 4
  %75 = call i64 @dst_metric(%struct.dst_entry* %73, i32 %74)
  %76 = load i64, i64* %7, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %81 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* @RTAX_ADVMSS, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  store i64 %79, i64* %86, align 8
  br label %87

87:                                               ; preds = %78, %69
  br label %88

88:                                               ; preds = %87, %64
  br label %89

89:                                               ; preds = %88, %43, %37
  ret void
}

declare dso_local i64 @dst_metric(%struct.dst_entry*, i32) #1

declare dso_local i32 @dst_metric_locked(%struct.dst_entry*, i32) #1

declare dso_local i32 @dst_set_expires(%struct.dst_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
