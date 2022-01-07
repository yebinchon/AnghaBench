; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/pnx4008/extr_sdum.c_display_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/pnx4008/extr_sdum.c_display_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dum_ch_setup = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i64, i64, i64 }

@DISP_MAX_X_SIZE = common dso_local global i32 0, align 4
@DISP_MAX_Y_SIZE = common dso_local global i32 0, align 4
@PAD_1024 = common dso_local global i32 0, align 4
@RGB888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32, i32, i32, i32)* @display_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_open(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dum_ch_setup, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %15, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* @DISP_MAX_X_SIZE, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load i32, i32* @DISP_MAX_X_SIZE, align 4
  %26 = load i32, i32* %13, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %15, align 4
  br label %28

28:                                               ; preds = %24, %8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %16, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* @DISP_MAX_Y_SIZE, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @DISP_MAX_Y_SIZE, align 4
  %36 = load i32, i32* %14, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %16, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 14
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %13, align 4
  %41 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %14, align 4
  %43 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %15, align 4
  %46 = sub nsw i32 %45, 1
  %47 = add nsw i32 %44, %46
  %48 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %16, align 4
  %51 = sub nsw i32 %50, 1
  %52 = add nsw i32 %49, %51
  %53 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @DISP_MAX_X_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp sgt i32 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %38
  %60 = load i32, i32* @DISP_MAX_X_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %38
  %64 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DISP_MAX_Y_SIZE, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp sgt i32 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @DISP_MAX_Y_SIZE, align 4
  %71 = sub nsw i32 %70, 1
  %72 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DISP_MAX_X_SIZE, align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* @DISP_MAX_X_SIZE, align 4
  %81 = sub nsw i32 %80, 1
  %82 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 2
  store i32 %81, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %73
  %84 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @DISP_MAX_Y_SIZE, align 4
  %87 = sub nsw i32 %86, 1
  %88 = icmp sgt i32 %85, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* @DISP_MAX_Y_SIZE, align 4
  %91 = sub nsw i32 %90, 1
  %92 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 3
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %83
  %94 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 13
  store i64 0, i64* %94, align 8
  %95 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 12
  store i64 0, i64* %95, align 8
  %96 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 11
  store i64 0, i64* %96, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = ptrtoint i32* %97 to i32
  %99 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 4
  store i32 %98, i32* %99, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = ptrtoint i32* %100 to i32
  %102 = load i32, i32* %15, align 4
  %103 = sub nsw i32 %102, 1
  %104 = shl i32 %103, 10
  %105 = load i32, i32* %16, align 4
  %106 = shl i32 %105, 2
  %107 = sub nsw i32 %106, 2
  %108 = or i32 %104, %107
  %109 = add nsw i32 %101, %108
  %110 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 5
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* @PAD_1024, align 4
  %112 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 10
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = ptrtoint i32* %113 to i32
  %115 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 6
  store i32 %114, i32* %115, align 8
  %116 = load i32, i32* @RGB888, align 4
  %117 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 9
  store i32 %116, i32* %117, align 8
  %118 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 8
  store i64 0, i64* %118, align 8
  %119 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %17, i32 0, i32 7
  store i64 0, i64* %119, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @dum_ch_setup(i32 %120, %struct.dum_ch_setup* %17)
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  ret i32 %122
}

declare dso_local i32 @dum_ch_setup(i32, %struct.dum_ch_setup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
