; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_stifb.c_SETUP_FB.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_stifb.c_SETUP_FB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stifb_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@REG_10 = common dso_local global i32 0, align 4
@REG_14 = common dso_local global i32 0, align 4
@REG_16b1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stifb_info*)* @SETUP_FB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SETUP_FB(%struct.stifb_info* %0) #0 {
  %2 = alloca %struct.stifb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.stifb_info* %0, %struct.stifb_info** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %5 = call i32 @SETUP_HW(%struct.stifb_info* %4)
  %6 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %7 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %31 [
    i32 134, label %9
    i32 130, label %9
    i32 131, label %9
    i32 132, label %10
    i32 129, label %20
    i32 128, label %30
    i32 133, label %30
  ]

9:                                                ; preds = %1, %1, %1
  store i32 325062656, i32* %3, align 4
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %12 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 32
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 -1147101184, i32* %3, align 4
  br label %19

18:                                               ; preds = %10
  store i32 325062656, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %17
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %22 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 -1147101184, i32* %3, align 4
  br label %29

28:                                               ; preds = %20
  store i32 325066752, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %31

30:                                               ; preds = %1, %1
  store i32 325066752, i32* %3, align 4
  br label %31

31:                                               ; preds = %1, %30, %29, %19, %9
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %37 = load i32, i32* @REG_10, align 4
  %38 = call i32 @WRITE_WORD(i32 %35, %struct.stifb_info* %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %41 = load i32, i32* @REG_14, align 4
  %42 = call i32 @WRITE_WORD(i32 -2097151232, %struct.stifb_info* %40, i32 %41)
  %43 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %44 = call i32 @SETUP_HW(%struct.stifb_info* %43)
  %45 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %46 = load i32, i32* @REG_16b1, align 4
  %47 = call i32 @WRITE_BYTE(i32 1, %struct.stifb_info* %45, i32 %46)
  ret void
}

declare dso_local i32 @SETUP_HW(%struct.stifb_info*) #1

declare dso_local i32 @WRITE_WORD(i32, %struct.stifb_info*, i32) #1

declare dso_local i32 @WRITE_BYTE(i32, %struct.stifb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
