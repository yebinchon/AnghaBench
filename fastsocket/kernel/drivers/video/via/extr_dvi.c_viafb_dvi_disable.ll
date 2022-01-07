; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_dvi.c_viafb_dvi_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_dvi.c_viafb_dvi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@viaparinfo = common dso_local global %struct.TYPE_6__* null, align 8
@INTERFACE_DVP0 = common dso_local global i64 0, align 8
@SR1E = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@INTERFACE_DVP1 = common dso_local global i64 0, align 8
@INTERFACE_DFP_HIGH = common dso_local global i64 0, align 8
@SR2A = common dso_local global i32 0, align 4
@INTERFACE_DFP_LOW = common dso_local global i64 0, align 8
@INTERFACE_TMDS = common dso_local global i64 0, align 8
@CRD2 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_dvi_disable() #0 {
  %1 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %2 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @INTERFACE_DVP0, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %0
  %10 = load i32, i32* @SR1E, align 4
  %11 = load i32, i32* @VIASR, align 4
  %12 = load i32, i32* @VIASR, align 4
  %13 = load i32, i32* @SR1E, align 4
  %14 = call i32 @viafb_read_reg(i32 %12, i32 %13)
  %15 = and i32 %14, -193
  %16 = call i32 @viafb_write_reg(i32 %10, i32 %11, i32 %15)
  br label %17

17:                                               ; preds = %9, %0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @INTERFACE_DVP1, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load i32, i32* @SR1E, align 4
  %28 = load i32, i32* @VIASR, align 4
  %29 = load i32, i32* @VIASR, align 4
  %30 = load i32, i32* @SR1E, align 4
  %31 = call i32 @viafb_read_reg(i32 %29, i32 %30)
  %32 = and i32 %31, -49
  %33 = call i32 @viafb_write_reg(i32 %27, i32 %28, i32 %32)
  br label %34

34:                                               ; preds = %26, %17
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @INTERFACE_DFP_HIGH, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load i32, i32* @SR2A, align 4
  %45 = load i32, i32* @VIASR, align 4
  %46 = load i32, i32* @VIASR, align 4
  %47 = load i32, i32* @SR2A, align 4
  %48 = call i32 @viafb_read_reg(i32 %46, i32 %47)
  %49 = and i32 %48, -13
  %50 = call i32 @viafb_write_reg(i32 %44, i32 %45, i32 %49)
  br label %51

51:                                               ; preds = %43, %34
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @INTERFACE_DFP_LOW, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %51
  %61 = load i32, i32* @SR2A, align 4
  %62 = load i32, i32* @VIASR, align 4
  %63 = load i32, i32* @VIASR, align 4
  %64 = load i32, i32* @SR2A, align 4
  %65 = call i32 @viafb_read_reg(i32 %63, i32 %64)
  %66 = and i32 %65, -4
  %67 = call i32 @viafb_write_reg(i32 %61, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %60, %51
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @INTERFACE_TMDS, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %68
  %78 = load i32, i32* @CRD2, align 4
  %79 = load i32, i32* @VIACR, align 4
  %80 = load i32, i32* @VIACR, align 4
  %81 = load i32, i32* @CRD2, align 4
  %82 = call i32 @viafb_read_reg(i32 %80, i32 %81)
  %83 = or i32 %82, 8
  %84 = call i32 @viafb_write_reg(i32 %78, i32 %79, i32 %83)
  br label %85

85:                                               ; preds = %77, %68
  ret void
}

declare dso_local i32 @viafb_write_reg(i32, i32, i32) #1

declare dso_local i32 @viafb_read_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
