; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_Read93C46.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_Read93C46.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@__const.Read93C46.cs = private unnamed_addr constant [1 x i32] [i32 136], align 4
@__const.Read93C46.cssk = private unnamed_addr constant [1 x i32] [i32 140], align 4
@__const.Read93C46.csdi = private unnamed_addr constant [1 x i32] [i32 138], align 4
@__const.Read93C46.csskdi = private unnamed_addr constant [1 x i32] [i32 142], align 4
@EPROM_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Read93C46(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x i32], align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca [1 x i32], align 4
  %9 = alloca [1 x i32], align 4
  %10 = alloca [1 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca [1 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca [1 x i32], align 4
  %15 = alloca [1 x i32], align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = bitcast [1 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = bitcast [1 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast ([1 x i32]* @__const.Read93C46.cs to i8*), i64 4, i1 false)
  %18 = bitcast [1 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast ([1 x i32]* @__const.Read93C46.cssk to i8*), i64 4, i1 false)
  %19 = bitcast [1 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ([1 x i32]* @__const.Read93C46.csdi to i8*), i64 4, i1 false)
  %20 = bitcast [1 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast ([1 x i32]* @__const.Read93C46.csskdi to i8*), i64 4, i1 false)
  %21 = bitcast [1 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = bitcast [1 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = load i32, i32* @EPROM_CMD, align 4
  %26 = call i32 @read_nic_byte(%struct.net_device* %24, i32 %25)
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 16
  br i1 %31, label %32, label %48

32:                                               ; preds = %2
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, 128
  store i32 %34, i32* %11, align 4
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load i32, i32* @EPROM_CMD, align 4
  %37 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @write_nic_byte(%struct.net_device* %35, i32 %36, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = load i32, i32* @EPROM_CMD, align 4
  %42 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @write_nic_byte(%struct.net_device* %40, i32 %41, i32 %43)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @do_93c46(%struct.net_device* %45, i32 %46)
  br label %48

48:                                               ; preds = %32, %2
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %95, %48
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 16
  br i1 %51, label %52, label %98

52:                                               ; preds = %49
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = load i32, i32* @EPROM_CMD, align 4
  %55 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @write_nic_byte(%struct.net_device* %53, i32 %54, i32 %56)
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = load i32, i32* @EPROM_CMD, align 4
  %60 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @write_nic_byte(%struct.net_device* %58, i32 %59, i32 %61)
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = load i32, i32* @EPROM_CMD, align 4
  %65 = call i32 @read_nic_byte(%struct.net_device* %63, i32 %64)
  %66 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 141
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %52
  %72 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 1
  %75 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  store i32 %77, i32* %78, align 4
  br label %87

79:                                               ; preds = %52
  %80 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 1
  %83 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %79, %71
  %88 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 1
  %91 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %90, %92
  %94 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %49

98:                                               ; preds = %49
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = load i32, i32* @EPROM_CMD, align 4
  %101 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @write_nic_byte(%struct.net_device* %99, i32 %100, i32 %102)
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = load i32, i32* @EPROM_CMD, align 4
  %106 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @write_nic_byte(%struct.net_device* %104, i32 %105, i32 %107)
  %109 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %110 = load i32, i32* %109, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #2

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #2

declare dso_local i32 @do_93c46(%struct.net_device*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
