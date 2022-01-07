; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_stifb.c_hyperResetPlanes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_stifb.c_hyperResetPlanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stifb_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stifb_info*, i32)* @hyperResetPlanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hyperResetPlanes(%struct.stifb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.stifb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stifb_info* %0, %struct.stifb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %7 = call i32 @NGLE_LOCK(%struct.stifb_info* %6)
  %8 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %9 = call i64 @IS_24_DEVICE(%struct.stifb_info* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %13 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 67112704, i32* %5, align 4
  br label %20

19:                                               ; preds = %11
  store i32 3840, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %18
  br label %22

21:                                               ; preds = %2
  store i32 3840, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %64 [
    i32 128, label %24
    i32 129, label %42
    i32 -1, label %58
  ]

24:                                               ; preds = %22
  %25 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %26 = call i64 @IS_24_DEVICE(%struct.stifb_info* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %30 = call i32 @ngleDepth24_ClearImagePlanes(%struct.stifb_info* %29)
  br label %34

31:                                               ; preds = %24
  %32 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %33 = call i32 @ngleDepth8_ClearImagePlanes(%struct.stifb_info* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ngleResetAttrPlanes(%struct.stifb_info* %35, i32 %36)
  %38 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %39 = call i32 @ngleClearOverlayPlanes(%struct.stifb_info* %38, i32 255, i32 255)
  %40 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %41 = call i32 @hyperUndoITE(%struct.stifb_info* %40)
  br label %64

42:                                               ; preds = %22
  %43 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %44 = call i64 @IS_24_DEVICE(%struct.stifb_info* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %48 = call i32 @ngleDepth24_ClearImagePlanes(%struct.stifb_info* %47)
  br label %52

49:                                               ; preds = %42
  %50 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %51 = call i32 @ngleDepth8_ClearImagePlanes(%struct.stifb_info* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @ngleResetAttrPlanes(%struct.stifb_info* %53, i32 %54)
  %56 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %57 = call i32 @ngleClearOverlayPlanes(%struct.stifb_info* %56, i32 255, i32 0)
  br label %64

58:                                               ; preds = %22
  %59 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %60 = call i32 @hyperUndoITE(%struct.stifb_info* %59)
  %61 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @ngleResetAttrPlanes(%struct.stifb_info* %61, i32 %62)
  br label %64

64:                                               ; preds = %22, %58, %52, %34
  %65 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %66 = call i32 @NGLE_UNLOCK(%struct.stifb_info* %65)
  ret void
}

declare dso_local i32 @NGLE_LOCK(%struct.stifb_info*) #1

declare dso_local i64 @IS_24_DEVICE(%struct.stifb_info*) #1

declare dso_local i32 @ngleDepth24_ClearImagePlanes(%struct.stifb_info*) #1

declare dso_local i32 @ngleDepth8_ClearImagePlanes(%struct.stifb_info*) #1

declare dso_local i32 @ngleResetAttrPlanes(%struct.stifb_info*, i32) #1

declare dso_local i32 @ngleClearOverlayPlanes(%struct.stifb_info*, i32, i32) #1

declare dso_local i32 @hyperUndoITE(%struct.stifb_info*) #1

declare dso_local i32 @NGLE_UNLOCK(%struct.stifb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
