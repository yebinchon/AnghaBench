; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_i2c-matroxfb.c_i2c_bus_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_i2c-matroxfb.c_i2c_bus_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.i2c_bit_adapter* }
%struct.i2c_bit_adapter = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_8__, %struct.matrox_fb_info* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.matrox_fb_info = type { %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@matrox_i2c_algo_template = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_bit_adapter*, %struct.matrox_fb_info*, i32, i32, i8*, i32)* @i2c_bus_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_bus_reg(%struct.i2c_bit_adapter* %0, %struct.matrox_fb_info* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.i2c_bit_adapter*, align 8
  %8 = alloca %struct.matrox_fb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_bit_adapter* %0, %struct.i2c_bit_adapter** %7, align 8
  store %struct.matrox_fb_info* %1, %struct.matrox_fb_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %8, align 8
  %15 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %16 = getelementptr inbounds %struct.i2c_bit_adapter, %struct.i2c_bit_adapter* %15, i32 0, i32 4
  store %struct.matrox_fb_info* %14, %struct.matrox_fb_info** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %19 = getelementptr inbounds %struct.i2c_bit_adapter, %struct.i2c_bit_adapter* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %23 = getelementptr inbounds %struct.i2c_bit_adapter, %struct.i2c_bit_adapter* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @THIS_MODULE, align 4
  %26 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %27 = getelementptr inbounds %struct.i2c_bit_adapter, %struct.i2c_bit_adapter* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 4
  %29 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %30 = getelementptr inbounds %struct.i2c_bit_adapter, %struct.i2c_bit_adapter* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %8, align 8
  %35 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @snprintf(i32 %32, i32 4, i8* %33, i32 %37)
  %39 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %40 = getelementptr inbounds %struct.i2c_bit_adapter, %struct.i2c_bit_adapter* %39, i32 0, i32 1
  %41 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %42 = call i32 @i2c_set_adapdata(%struct.TYPE_13__* %40, %struct.i2c_bit_adapter* %41)
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %45 = getelementptr inbounds %struct.i2c_bit_adapter, %struct.i2c_bit_adapter* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %48 = getelementptr inbounds %struct.i2c_bit_adapter, %struct.i2c_bit_adapter* %47, i32 0, i32 2
  %49 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %50 = getelementptr inbounds %struct.i2c_bit_adapter, %struct.i2c_bit_adapter* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %51, align 8
  %52 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %8, align 8
  %53 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %57 = getelementptr inbounds %struct.i2c_bit_adapter, %struct.i2c_bit_adapter* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i32* %55, i32** %59, align 8
  %60 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %61 = getelementptr inbounds %struct.i2c_bit_adapter, %struct.i2c_bit_adapter* %60, i32 0, i32 2
  %62 = bitcast %struct.TYPE_12__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 bitcast (%struct.TYPE_12__* @matrox_i2c_algo_template to i8*), i64 8, i1 false)
  %63 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %64 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %65 = getelementptr inbounds %struct.i2c_bit_adapter, %struct.i2c_bit_adapter* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store %struct.i2c_bit_adapter* %63, %struct.i2c_bit_adapter** %66, align 8
  %67 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %68 = getelementptr inbounds %struct.i2c_bit_adapter, %struct.i2c_bit_adapter* %67, i32 0, i32 1
  %69 = call i32 @i2c_bit_add_bus(%struct.TYPE_13__* %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load %struct.i2c_bit_adapter*, %struct.i2c_bit_adapter** %7, align 8
  %75 = getelementptr inbounds %struct.i2c_bit_adapter, %struct.i2c_bit_adapter* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %13, align 4
  ret i32 %76
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_13__*, %struct.i2c_bit_adapter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
