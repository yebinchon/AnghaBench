; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c_cvmx_helper_link_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c_cvmx_helper_link_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_helper_link_get(%struct.TYPE_9__* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  store i32 %1, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @cvmx_helper_get_interface_num(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @cvmx_helper_get_interface_index_num(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @cvmx_helper_ports_on_interface(i32 %17)
  %19 = icmp sge i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %58

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @cvmx_helper_interface_get_mode(i32 %22)
  switch i32 %23, label %57 [
    i32 137, label %24
    i32 133, label %24
    i32 128, label %25
    i32 136, label %29
    i32 131, label %44
    i32 129, label %48
    i32 130, label %52
    i32 132, label %52
    i32 134, label %56
    i32 135, label %56
  ]

24:                                               ; preds = %21, %21
  br label %57

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  call void @__cvmx_helper_xaui_link_get(%struct.TYPE_9__* sret %6, i32 %26)
  %27 = bitcast %struct.TYPE_9__* %0 to i8*
  %28 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 24, i1 false)
  br label %57

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  call void @__cvmx_helper_rgmii_link_get(%struct.TYPE_9__* sret %7, i32 %33)
  %34 = bitcast %struct.TYPE_9__* %0 to i8*
  %35 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 24, i1 false)
  br label %43

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  store i32 1000, i32* %42, align 8
  br label %43

43:                                               ; preds = %36, %32
  br label %57

44:                                               ; preds = %21
  %45 = load i32, i32* %3, align 4
  call void @__cvmx_helper_rgmii_link_get(%struct.TYPE_9__* sret %8, i32 %45)
  %46 = bitcast %struct.TYPE_9__* %0 to i8*
  %47 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 24, i1 false)
  br label %57

48:                                               ; preds = %21
  %49 = load i32, i32* %3, align 4
  call void @__cvmx_helper_spi_link_get(%struct.TYPE_9__* sret %9, i32 %49)
  %50 = bitcast %struct.TYPE_9__* %0 to i8*
  %51 = bitcast %struct.TYPE_9__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 24, i1 false)
  br label %57

52:                                               ; preds = %21, %21
  %53 = load i32, i32* %3, align 4
  call void @__cvmx_helper_sgmii_link_get(%struct.TYPE_9__* sret %10, i32 %53)
  %54 = bitcast %struct.TYPE_9__* %0 to i8*
  %55 = bitcast %struct.TYPE_9__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 24, i1 false)
  br label %57

56:                                               ; preds = %21, %21
  br label %57

57:                                               ; preds = %21, %56, %52, %48, %44, %43, %25, %24
  br label %58

58:                                               ; preds = %57, %20
  ret void
}

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i32 @cvmx_helper_get_interface_index_num(i32) #1

declare dso_local i32 @cvmx_helper_ports_on_interface(i32) #1

declare dso_local i32 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local void @__cvmx_helper_xaui_link_get(%struct.TYPE_9__* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__cvmx_helper_rgmii_link_get(%struct.TYPE_9__* sret, i32) #1

declare dso_local void @__cvmx_helper_spi_link_get(%struct.TYPE_9__* sret, i32) #1

declare dso_local void @__cvmx_helper_sgmii_link_get(%struct.TYPE_9__* sret, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
