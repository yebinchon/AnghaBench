; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_load_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_load_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_register = type { i32, i32, i32 }

@BIT0 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_load_reg(i32 %0, i32 %1, %struct.io_register* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_register*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.io_register* %2, %struct.io_register** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %88, %4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %91

23:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %24 = load %struct.io_register*, %struct.io_register** %7, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.io_register, %struct.io_register* %24, i64 %26
  %28 = getelementptr inbounds %struct.io_register, %struct.io_register* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load %struct.io_register*, %struct.io_register** %7, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.io_register, %struct.io_register* %30, i64 %32
  %34 = getelementptr inbounds %struct.io_register, %struct.io_register* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %16, align 4
  %36 = load %struct.io_register*, %struct.io_register** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.io_register, %struct.io_register* %36, i64 %38
  %40 = getelementptr inbounds %struct.io_register, %struct.io_register* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %68, %23
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @BIT0, align 4
  %51 = load i32, i32* %13, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %49, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @BIT0, align 4
  %56 = load i32, i32* %10, align 4
  %57 = shl i32 %55, %56
  %58 = and i32 %54, %57
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %14, align 4
  %62 = ashr i32 %60, %61
  %63 = load i32, i32* %15, align 4
  %64 = shl i32 %62, %63
  %65 = or i32 %59, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %48
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %44

71:                                               ; preds = %44
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @VIACR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* @VIACR, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @viafb_write_reg_mask(i32 %76, i32 %77, i32 %78, i32 %79)
  br label %87

81:                                               ; preds = %71
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @VIASR, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @viafb_write_reg_mask(i32 %82, i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %75
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %19

91:                                               ; preds = %19
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
