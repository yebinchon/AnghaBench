; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_init_dac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_init_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@IGA1 = common dso_local global i32 0, align 4
@SR1A = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i64 0, align 8
@SR1B = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i64 0, align 8
@BIT6 = common dso_local global i64 0, align 8
@palLUT_table = common dso_local global %struct.TYPE_2__* null, align 8
@VIACR = common dso_local global i32 0, align 4
@CR6A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_init_dac(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @IGA1, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %53

8:                                                ; preds = %1
  %9 = load i32, i32* @SR1A, align 4
  %10 = load i32, i32* @VIASR, align 4
  %11 = load i64, i64* @BIT0, align 8
  %12 = call i32 @viafb_write_reg_mask(i32 %9, i32 %10, i32 0, i64 %11)
  %13 = load i32, i32* @SR1B, align 4
  %14 = load i32, i32* @VIASR, align 4
  %15 = load i64, i64* @BIT7, align 8
  %16 = load i64, i64* @BIT6, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @viafb_write_reg_mask(i32 %13, i32 %14, i32 0, i64 %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %43, %8
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @palLUT_table, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @palLUT_table, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @palLUT_table, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @write_dac_reg(i32 %23, i32 %29, i32 %35, i32 %41)
  br label %43

43:                                               ; preds = %22
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %19

46:                                               ; preds = %19
  %47 = load i32, i32* @SR1B, align 4
  %48 = load i32, i32* @VIASR, align 4
  %49 = load i64, i64* @BIT7, align 8
  %50 = load i64, i64* @BIT6, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @viafb_write_reg_mask(i32 %47, i32 %48, i32 192, i64 %51)
  br label %101

53:                                               ; preds = %1
  %54 = load i32, i32* @VIACR, align 4
  %55 = load i32, i32* @CR6A, align 4
  %56 = call i32 @viafb_read_reg(i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @CR6A, align 4
  %58 = load i32, i32* @VIACR, align 4
  %59 = load i64, i64* @BIT6, align 8
  %60 = call i32 @viafb_write_reg_mask(i32 %57, i32 %58, i32 64, i64 %59)
  %61 = load i32, i32* @SR1A, align 4
  %62 = load i32, i32* @VIASR, align 4
  %63 = load i64, i64* @BIT0, align 8
  %64 = call i32 @viafb_write_reg_mask(i32 %61, i32 %62, i32 1, i64 %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %89, %53
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %66, 256
  br i1 %67, label %68, label %92

68:                                               ; preds = %65
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @palLUT_table, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @palLUT_table, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @palLUT_table, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @write_dac_reg(i32 %69, i32 %75, i32 %81, i32 %87)
  br label %89

89:                                               ; preds = %68
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %65

92:                                               ; preds = %65
  %93 = load i32, i32* @SR1A, align 4
  %94 = load i32, i32* @VIASR, align 4
  %95 = load i64, i64* @BIT0, align 8
  %96 = call i32 @viafb_write_reg_mask(i32 %93, i32 %94, i32 0, i64 %95)
  %97 = load i32, i32* @CR6A, align 4
  %98 = load i32, i32* @VIACR, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @viafb_write_reg(i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %92, %46
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i64) #1

declare dso_local i32 @write_dac_reg(i32, i32, i32, i32) #1

declare dso_local i32 @viafb_read_reg(i32, i32) #1

declare dso_local i32 @viafb_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
