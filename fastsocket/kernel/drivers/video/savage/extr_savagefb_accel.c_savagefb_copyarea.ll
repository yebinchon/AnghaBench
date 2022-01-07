; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_accel.c_savagefb_copyarea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_accel.c_savagefb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.savagefb_par* }
%struct.savagefb_par = type { i32 (%struct.savagefb_par*, i32)*, i64 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@BCI_CMD_RECT = common dso_local global i32 0, align 4
@BCI_CMD_DEST_GBD = common dso_local global i32 0, align 4
@BCI_CMD_SRC_GBD = common dso_local global i32 0, align 4
@savagefb_rop = common dso_local global i32* null, align 8
@BCI_CMD_RECT_XP = common dso_local global i32 0, align 4
@BCI_CMD_RECT_YP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @savagefb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.savagefb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load %struct.savagefb_par*, %struct.savagefb_par** %12, align 8
  store %struct.savagefb_par* %13, %struct.savagefb_par** %5, align 8
  %14 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %15 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %18 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %21 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %24 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %27 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %32 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %2
  br label %114

36:                                               ; preds = %30
  %37 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %38 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @BCI_CMD_RECT, align 4
  %40 = load i32, i32* @BCI_CMD_DEST_GBD, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @BCI_CMD_SRC_GBD, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** @savagefb_rop, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @BCI_CMD_SET_ROP(i32 %44, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %36
  %53 = load i32, i32* @BCI_CMD_RECT_XP, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %69

56:                                               ; preds = %36
  %57 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %58 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %64 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %56, %52
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* @BCI_CMD_RECT_YP, align 4
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %90

77:                                               ; preds = %69
  %78 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %79 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %85 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %77, %73
  %91 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %92 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %91, i32 0, i32 0
  %93 = load i32 (%struct.savagefb_par*, i32)*, i32 (%struct.savagefb_par*, i32)** %92, align 8
  %94 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %95 = call i32 %93(%struct.savagefb_par* %94, i32 4)
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @BCI_SEND(i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @BCI_X_Y(i32 %98, i32 %99)
  %101 = call i32 @BCI_SEND(i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @BCI_X_Y(i32 %102, i32 %103)
  %105 = call i32 @BCI_SEND(i32 %104)
  %106 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %107 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %110 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @BCI_W_H(i32 %108, i32 %111)
  %113 = call i32 @BCI_SEND(i32 %112)
  br label %114

114:                                              ; preds = %90, %35
  ret void
}

declare dso_local i32 @BCI_CMD_SET_ROP(i32, i32) #1

declare dso_local i32 @BCI_SEND(i32) #1

declare dso_local i32 @BCI_X_Y(i32, i32) #1

declare dso_local i32 @BCI_W_H(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
