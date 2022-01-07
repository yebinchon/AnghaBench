; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rar/extr_rar_driver.c_get_rar_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rar/extr_rar_driver.c_get_rar_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RAR_address_struct = type { i32, i32 }

@registered = common dso_local global i64 0, align 8
@rar_addr = common dso_local global %struct.RAR_address_struct* null, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_rar_address(i32 %0, %struct.RAR_address_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.RAR_address_struct*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.RAR_address_struct* %1, %struct.RAR_address_struct** %5, align 8
  %6 = load i64, i64* @registered, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load %struct.RAR_address_struct*, %struct.RAR_address_struct** %5, align 8
  %16 = load %struct.RAR_address_struct*, %struct.RAR_address_struct** @rar_addr, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.RAR_address_struct, %struct.RAR_address_struct* %16, i64 %18
  %20 = bitcast %struct.RAR_address_struct* %15 to i8*
  %21 = bitcast %struct.RAR_address_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  %22 = load %struct.RAR_address_struct*, %struct.RAR_address_struct** %5, align 8
  %23 = getelementptr inbounds %struct.RAR_address_struct, %struct.RAR_address_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -16
  %26 = load %struct.RAR_address_struct*, %struct.RAR_address_struct** %5, align 8
  %27 = getelementptr inbounds %struct.RAR_address_struct, %struct.RAR_address_struct* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.RAR_address_struct*, %struct.RAR_address_struct** %5, align 8
  %29 = getelementptr inbounds %struct.RAR_address_struct, %struct.RAR_address_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, -16
  %32 = load %struct.RAR_address_struct*, %struct.RAR_address_struct** %5, align 8
  %33 = getelementptr inbounds %struct.RAR_address_struct, %struct.RAR_address_struct* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %37

34:                                               ; preds = %11, %8, %2
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
