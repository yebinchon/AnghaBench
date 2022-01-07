; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_do_93c46.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_do_93c46.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@__const.do_93c46.cs = private unnamed_addr constant [1 x i32] [i32 136], align 4
@__const.do_93c46.cssk = private unnamed_addr constant [1 x i32] [i32 140], align 4
@__const.do_93c46.csdi = private unnamed_addr constant [1 x i32] [i32 138], align 4
@__const.do_93c46.csskdi = private unnamed_addr constant [1 x i32] [i32 142], align 4
@EPROM_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_93c46(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x i32], align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca [1 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = bitcast [1 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([1 x i32]* @__const.do_93c46.cs to i8*), i64 4, i1 false)
  %11 = bitcast [1 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([1 x i32]* @__const.do_93c46.cssk to i8*), i64 4, i1 false)
  %12 = bitcast [1 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast ([1 x i32]* @__const.do_93c46.csdi to i8*), i64 4, i1 false)
  %13 = bitcast [1 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([1 x i32]* @__const.do_93c46.csskdi to i8*), i64 4, i1 false)
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %46, %2
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 128
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = load i32, i32* @EPROM_CMD, align 4
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @write_nic_byte(%struct.net_device* %22, i32 %23, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load i32, i32* @EPROM_CMD, align 4
  %29 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @write_nic_byte(%struct.net_device* %27, i32 %28, i32 %30)
  br label %43

32:                                               ; preds = %17
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = load i32, i32* @EPROM_CMD, align 4
  %35 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @write_nic_byte(%struct.net_device* %33, i32 %34, i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load i32, i32* @EPROM_CMD, align 4
  %40 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @write_nic_byte(%struct.net_device* %38, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %32, %21
  %44 = load i32, i32* %4, align 4
  %45 = shl i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %14

49:                                               ; preds = %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
