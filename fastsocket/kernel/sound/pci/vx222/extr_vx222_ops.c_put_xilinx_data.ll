; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_put_xilinx_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_put_xilinx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }

@VX_CNTRL_REGISTER_VALUE = common dso_local global i32 0, align 4
@VX_USERBIT0_MASK = common dso_local global i32 0, align 4
@VX_USERBIT1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, i32, i32, i8)* @put_xilinx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_xilinx_data(%struct.vx_core* %0, i32 %1, i32 %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8 %3, i8* %8, align 1
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %62, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  %16 = load i32, i32* @VX_CNTRL_REGISTER_VALUE, align 4
  %17 = load i32, i32* @VX_USERBIT0_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @vx2_outl(%struct.vx_core* %20, i32 %21, i32 %22)
  %24 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @vx2_inl(%struct.vx_core* %24, i32 %25)
  %27 = call i32 @udelay(i32 1)
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i32
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %15
  %35 = load i32, i32* @VX_USERBIT1_MASK, align 4
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  br label %43

38:                                               ; preds = %15
  %39 = load i32, i32* @VX_USERBIT1_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %38, %34
  %44 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @vx2_outl(%struct.vx_core* %44, i32 %45, i32 %46)
  %48 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @vx2_inl(%struct.vx_core* %48, i32 %49)
  %51 = load i32, i32* @VX_USERBIT0_MASK, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @vx2_outl(%struct.vx_core* %54, i32 %55, i32 %56)
  %58 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @vx2_inl(%struct.vx_core* %58, i32 %59)
  %61 = call i32 @udelay(i32 1)
  br label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %11

65:                                               ; preds = %11
  ret i32 0
}

declare dso_local i32 @vx2_outl(%struct.vx_core*, i32, i32) #1

declare dso_local i32 @vx2_inl(%struct.vx_core*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
