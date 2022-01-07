; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_policy_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_policy_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_tmpl = type { i64, i64 }
%struct.sec_path = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@XFRM_MODE_TRANSPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_tmpl*, %struct.sec_path*, i32, i16)* @xfrm_policy_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_policy_ok(%struct.xfrm_tmpl* %0, %struct.sec_path* %1, i32 %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_tmpl*, align 8
  %7 = alloca %struct.sec_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.xfrm_tmpl* %0, %struct.xfrm_tmpl** %6, align 8
  store %struct.sec_path* %1, %struct.sec_path** %7, align 8
  store i32 %2, i32* %8, align 4
  store i16 %3, i16* %9, align 2
  %11 = load i32, i32* %8, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %6, align 8
  %13 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %6, align 8
  %18 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XFRM_MODE_TRANSPORT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %5, align 4
  br label %74

24:                                               ; preds = %16
  br label %26

25:                                               ; preds = %4
  store i32 -1, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %24
  br label %27

27:                                               ; preds = %69, %26
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.sec_path*, %struct.sec_path** %7, align 8
  %30 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %72

33:                                               ; preds = %27
  %34 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %6, align 8
  %35 = load %struct.sec_path*, %struct.sec_path** %7, align 8
  %36 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i16, i16* %9, align 2
  %43 = call i64 @xfrm_state_ok(%struct.xfrm_tmpl* %34, %struct.TYPE_4__* %41, i16 zeroext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %74

48:                                               ; preds = %33
  %49 = load %struct.sec_path*, %struct.sec_path** %7, align 8
  %50 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %51, i64 %53
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @XFRM_MODE_TRANSPORT, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %48
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 -2, %65
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %64, %61
  br label %72

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %27

72:                                               ; preds = %67, %27
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %45, %22
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @xfrm_state_ok(%struct.xfrm_tmpl*, %struct.TYPE_4__*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
