; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-i2c.c_cx25821_i2c_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-i2c.c_cx25821_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_i2c = type { %struct.i2c_client }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_i2c_read(%struct.cx25821_i2c* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.cx25821_i2c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.cx25821_i2c* %0, %struct.cx25821_i2c** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load %struct.cx25821_i2c*, %struct.cx25821_i2c** %4, align 8
  %14 = getelementptr inbounds %struct.cx25821_i2c, %struct.cx25821_i2c* %13, i32 0, i32 0
  store %struct.i2c_client* %14, %struct.i2c_client** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = bitcast [2 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 0
  %19 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 1
  store i32 2, i32* %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 2
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 3
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i64 1
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 0
  %28 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 1
  store i32 4, i32* %31, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 2
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32* %33, i32** %32, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 3
  %35 = load i32, i32* @I2C_M_RD, align 4
  store i32 %35, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 8
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 255
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 0
  store i32 68, i32* %43, align 16
  %44 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 1
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 0
  store i32 68, i32* %45, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %50 = call i32 @i2c_xfer(i32 %48, %struct.i2c_msg* %49, i32 2)
  store i32 %50, i32* %8, align 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 24
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 %55, 16
  %57 = or i32 %53, %56
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = or i32 %57, %60
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = or i32 %61, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_xfer(i32, %struct.i2c_msg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
