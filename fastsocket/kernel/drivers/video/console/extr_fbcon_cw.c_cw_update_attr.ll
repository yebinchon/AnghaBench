; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_cw.c_cw_update_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_cw.c_cw_update_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FBCON_ATTRIBUTE_UNDERLINE = common dso_local global i32 0, align 4
@FBCON_ATTRIBUTE_BOLD = common dso_local global i32 0, align 4
@FBCON_ATTRIBUTE_REVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %struct.vc_data*)* @cw_update_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cw_update_attr(i32* %0, i32* %1, i32 %2, %struct.vc_data* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.vc_data* %3, %struct.vc_data** %8, align 8
  %16 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 10
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 2
  store i32 %22, i32* %11, align 4
  %23 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 7
  %28 = ashr i32 %27, 3
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %29 = load i32, i32* %11, align 4
  %30 = ashr i32 255, %29
  %31 = xor i32 %30, -1
  store i32 %31, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %94, %4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %97

39:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %90, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %93

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @FBCON_ATTRIBUTE_UNDERLINE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %13, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %54, %51, %44
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @FBCON_ATTRIBUTE_BOLD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = sub i64 0, %69
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %13, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %66, %63, %58
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @FBCON_ATTRIBUTE_REVERSE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %13, align 4
  %82 = xor i32 %81, -1
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %6, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %5, align 8
  store i32 %86, i32* %87, align 4
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %40

93:                                               ; preds = %40
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %32

97:                                               ; preds = %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
