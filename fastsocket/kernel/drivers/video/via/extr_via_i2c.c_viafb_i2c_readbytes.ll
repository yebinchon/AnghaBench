; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_via_i2c.c_viafb_i2c_readbytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_via_i2c.c_viafb_i2c_readbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i64 }

@I2C_M_RD = common dso_local global i64 0, align 8
@viaparinfo = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @viafb_i2c_readbytes(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1 x i32], align 4
  %10 = alloca [2 x %struct.i2c_msg], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = bitcast [1 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  store i64 0, i64* %13, align 16
  %14 = load i64, i64* @I2C_M_RD, align 8
  %15 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 3
  store i64 %14, i64* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 %17, 2
  %19 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 16
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %31 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %42 = call i32 @i2c_transfer(i32* %40, %struct.i2c_msg* %41, i32 2)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
