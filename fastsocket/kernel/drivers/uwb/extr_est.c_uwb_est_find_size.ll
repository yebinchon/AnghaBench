; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_est.c_uwb_est_find_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_est.c_uwb_est_find_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.uwb_rc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rceb = type { i32, i64, i32 }

@uwb_est_lock = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@uwb_est_used = common dso_local global i32 0, align 4
@uwb_est = common dso_local global %struct.TYPE_5__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"event 0x%02x/%04x/%02x: no handlers available; RCEB %02x %02x %02x %02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_est_find_size(%struct.uwb_rc* %0, %struct.uwb_rceb* %1, i64 %2) #0 {
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_rceb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %4, align 8
  store %struct.uwb_rceb* %1, %struct.uwb_rceb** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %15 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %18 = bitcast %struct.uwb_rceb* %17 to i32*
  store i32* %18, i32** %13, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @read_lock_irqsave(i32* @uwb_est_lock, i64 %19)
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %23, 24
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %101

26:                                               ; preds = %3
  %27 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %28 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le16_to_cpu(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %32 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %33, 8
  %35 = load i32, i32* %12, align 4
  %36 = and i32 %35, 65280
  %37 = ashr i32 %36, 8
  %38 = or i32 %34, %37
  store i32 %38, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %70, %26
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @uwb_est_used, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %39
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uwb_est, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %70

53:                                               ; preds = %43
  %54 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uwb_est, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, 255
  %61 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @uwb_est_get_size(%struct.uwb_rc* %54, %struct.TYPE_5__* %58, i32 %60, %struct.uwb_rceb* %61, i64 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %101

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i32, i32* %10, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %39

73:                                               ; preds = %39
  %74 = load %struct.device*, %struct.device** %8, align 8
  %75 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %76 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %79 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @le16_to_cpu(i32 %80)
  %82 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %83 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dev_dbg(%struct.device* %74, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %81, i32 %85, i32 %88, i32 %91, i32 %94, i32 %97)
  %99 = load i32, i32* @ENOENT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %73, %68, %25
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @read_unlock_irqrestore(i32* @uwb_est_lock, i64 %102)
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @uwb_est_get_size(%struct.uwb_rc*, %struct.TYPE_5__*, i32, %struct.uwb_rceb*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
