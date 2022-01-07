; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_build_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_build_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32 }

@vga_can_do_color = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32, i32, i32, i32, i32)* @vgacon_build_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgacon_build_attr(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.vc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i64, i64* @vga_can_do_color, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %7
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %15, align 4
  %24 = and i32 %23, 240
  %25 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  store i32 %28, i32* %15, align 4
  br label %51

29:                                               ; preds = %19
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* %15, align 4
  %34 = and i32 %33, 240
  %35 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %36 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  store i32 %38, i32* %15, align 4
  br label %50

39:                                               ; preds = %29
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %15, align 4
  %44 = and i32 %43, 240
  %45 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %46 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %42, %39
  br label %50

50:                                               ; preds = %49, %32
  br label %51

51:                                               ; preds = %50, %22
  br label %52

52:                                               ; preds = %51, %7
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32, i32* %15, align 4
  %57 = and i32 %56, 136
  %58 = load i32, i32* %15, align 4
  %59 = ashr i32 %58, 4
  %60 = load i32, i32* %15, align 4
  %61 = shl i32 %60, 4
  %62 = or i32 %59, %61
  %63 = and i32 %62, 119
  %64 = or i32 %57, %63
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %55, %52
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %15, align 4
  %70 = xor i32 %69, 128
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %15, align 4
  %76 = xor i32 %75, 8
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i64, i64* @vga_can_do_color, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %104, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* %15, align 4
  %85 = and i32 %84, 248
  %86 = or i32 %85, 2
  store i32 %86, i32* %15, align 4
  br label %103

87:                                               ; preds = %80
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %15, align 4
  %92 = and i32 %91, 248
  %93 = or i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %102

94:                                               ; preds = %87
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  %99 = and i32 %98, 240
  %100 = or i32 %99, 8
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %97, %94
  br label %102

102:                                              ; preds = %101, %90
  br label %103

103:                                              ; preds = %102, %83
  br label %104

104:                                              ; preds = %103, %77
  %105 = load i32, i32* %15, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
