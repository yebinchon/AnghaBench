; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_load_fix_bit_crtc_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_load_fix_bit_crtc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@CR03 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i64 0, align 8
@CR18 = common dso_local global i32 0, align 4
@CR07 = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i64 0, align 8
@CR09 = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i64 0, align 8
@CR35 = common dso_local global i32 0, align 4
@CR33 = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i64 0, align 8
@BIT1 = common dso_local global i64 0, align 8
@BIT2 = common dso_local global i64 0, align 8
@CR17 = common dso_local global i32 0, align 4
@CR08 = common dso_local global i32 0, align 4
@CR14 = common dso_local global i32 0, align 4
@viaparinfo = common dso_local global %struct.TYPE_4__* null, align 8
@UNICHROME_K800 = common dso_local global i64 0, align 8
@UNICHROME_K8M890 = common dso_local global i64 0, align 8
@BIT3 = common dso_local global i64 0, align 8
@UNICHROME_CLE266 = common dso_local global i64 0, align 8
@CLE266_REVISION_AX = common dso_local global i64 0, align 8
@SR1A = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_fix_bit_crtc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_fix_bit_crtc_reg() #0 {
  %1 = load i32, i32* @CR03, align 4
  %2 = load i32, i32* @VIACR, align 4
  %3 = load i64, i64* @BIT7, align 8
  %4 = call i32 @viafb_write_reg_mask(i32 %1, i32 %2, i32 128, i64 %3)
  %5 = load i32, i32* @CR18, align 4
  %6 = load i32, i32* @VIACR, align 4
  %7 = call i32 @viafb_write_reg(i32 %5, i32 %6, i32 255)
  %8 = load i32, i32* @CR07, align 4
  %9 = load i32, i32* @VIACR, align 4
  %10 = load i64, i64* @BIT4, align 8
  %11 = call i32 @viafb_write_reg_mask(i32 %8, i32 %9, i32 16, i64 %10)
  %12 = load i32, i32* @CR09, align 4
  %13 = load i32, i32* @VIACR, align 4
  %14 = load i64, i64* @BIT6, align 8
  %15 = call i32 @viafb_write_reg_mask(i32 %12, i32 %13, i32 64, i64 %14)
  %16 = load i32, i32* @CR35, align 4
  %17 = load i32, i32* @VIACR, align 4
  %18 = load i64, i64* @BIT4, align 8
  %19 = call i32 @viafb_write_reg_mask(i32 %16, i32 %17, i32 16, i64 %18)
  %20 = load i32, i32* @CR33, align 4
  %21 = load i32, i32* @VIACR, align 4
  %22 = load i64, i64* @BIT0, align 8
  %23 = load i64, i64* @BIT1, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @BIT2, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @viafb_write_reg_mask(i32 %20, i32 %21, i32 6, i64 %26)
  %28 = load i32, i32* @CR17, align 4
  %29 = load i32, i32* @VIACR, align 4
  %30 = call i32 @viafb_write_reg(i32 %28, i32 %29, i32 227)
  %31 = load i32, i32* @CR08, align 4
  %32 = load i32, i32* @VIACR, align 4
  %33 = call i32 @viafb_write_reg(i32 %31, i32 %32, i32 0)
  %34 = load i32, i32* @CR14, align 4
  %35 = load i32, i32* @VIACR, align 4
  %36 = call i32 @viafb_write_reg(i32 %34, i32 %35, i32 0)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @UNICHROME_K800, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @UNICHROME_K8M890, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44, %0
  %53 = load i32, i32* @CR33, align 4
  %54 = load i32, i32* @VIACR, align 4
  %55 = load i64, i64* @BIT3, align 8
  %56 = call i32 @viafb_write_reg_mask(i32 %53, i32 %54, i32 8, i64 %55)
  br label %57

57:                                               ; preds = %52, %44
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @UNICHROME_CLE266, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %57
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CLE266_REVISION_AX, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load i32, i32* @SR1A, align 4
  %75 = load i32, i32* @VIASR, align 4
  %76 = load i64, i64* @BIT1, align 8
  %77 = call i32 @viafb_write_reg_mask(i32 %74, i32 %75, i32 2, i64 %76)
  br label %78

78:                                               ; preds = %73, %65, %57
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i64) #1

declare dso_local i32 @viafb_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
