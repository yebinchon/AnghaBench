; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw20k2_i2c_unlock_full_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw20k2_i2c_unlock_full_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@__const.hw20k2_i2c_unlock_full_access.UnlockKeySequence_FLASH_FULLACCESS_MODE = private unnamed_addr constant [2 x i32] [i32 179, i32 212], align 4
@I2C_IF_WLOCK = common dso_local global i32 0, align 4
@STATE_UNLOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*)* @hw20k2_i2c_unlock_full_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw20k2_i2c_unlock_full_access(%struct.hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hw*, align 8
  %4 = alloca [2 x i32], align 4
  store %struct.hw* %0, %struct.hw** %3, align 8
  %5 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast ([2 x i32]* @__const.hw20k2_i2c_unlock_full_access.UnlockKeySequence_FLASH_FULLACCESS_MODE to i8*), i64 8, i1 false)
  %6 = load %struct.hw*, %struct.hw** %3, align 8
  %7 = load i32, i32* @I2C_IF_WLOCK, align 4
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @hw_write_20kx(%struct.hw* %6, i32 %7, i32 %9)
  %11 = load %struct.hw*, %struct.hw** %3, align 8
  %12 = load i32, i32* @I2C_IF_WLOCK, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @hw_write_20kx(%struct.hw* %11, i32 %12, i32 %14)
  %16 = load %struct.hw*, %struct.hw** %3, align 8
  %17 = load i32, i32* @I2C_IF_WLOCK, align 4
  %18 = call i64 @hw_read_20kx(%struct.hw* %16, i32 %17)
  %19 = load i64, i64* @STATE_UNLOCKED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #2

declare dso_local i64 @hw_read_20kx(%struct.hw*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
