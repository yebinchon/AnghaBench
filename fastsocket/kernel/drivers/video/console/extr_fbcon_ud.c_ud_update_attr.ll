; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ud.c_ud_update_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ud.c_ud_update_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FBCON_ATTRIBUTE_UNDERLINE = common dso_local global i32 0, align 4
@FBCON_ATTRIBUTE_BOLD = common dso_local global i32 0, align 4
@FBCON_ATTRIBUTE_REVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %struct.vc_data*)* @ud_update_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ud_update_attr(i32* %0, i32* %1, i32 %2, %struct.vc_data* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.vc_data* %3, %struct.vc_data** %8, align 8
  %14 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %15 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 10
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 2
  store i32 %20, i32* %10, align 4
  %21 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 7
  %26 = ashr i32 %25, 3
  store i32 %26, i32* %11, align 4
  %27 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = mul nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %79, %4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %82

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @FBCON_ATTRIBUTE_UNDERLINE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 255, i32* %13, align 4
  br label %55

55:                                               ; preds = %54, %50, %40
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @FBCON_ATTRIBUTE_BOLD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* %13, align 4
  %62 = shl i32 %61, 1
  %63 = load i32, i32* %13, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @FBCON_ATTRIBUTE_REVERSE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %13, align 4
  %72 = xor i32 %71, -1
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32, i32* %13, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %36

82:                                               ; preds = %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
