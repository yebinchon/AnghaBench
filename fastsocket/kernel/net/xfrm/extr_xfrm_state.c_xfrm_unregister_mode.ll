; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_unregister_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_unregister_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_mode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_state_afinfo = type { %struct.xfrm_mode** }

@XFRM_MODE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_unregister_mode(%struct.xfrm_mode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_state_afinfo*, align 8
  %7 = alloca %struct.xfrm_mode**, align 8
  %8 = alloca i32, align 4
  store %struct.xfrm_mode* %0, %struct.xfrm_mode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.xfrm_mode*, %struct.xfrm_mode** %4, align 8
  %10 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XFRM_MODE_MAX, align 8
  %13 = icmp uge i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %64

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.xfrm_state_afinfo* @xfrm_state_lock_afinfo(i32 %21)
  store %struct.xfrm_state_afinfo* %22, %struct.xfrm_state_afinfo** %6, align 8
  %23 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %24 = icmp eq %struct.xfrm_state_afinfo* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EAFNOSUPPORT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %64

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %35 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %34, i32 0, i32 0
  %36 = load %struct.xfrm_mode**, %struct.xfrm_mode*** %35, align 8
  store %struct.xfrm_mode** %36, %struct.xfrm_mode*** %7, align 8
  %37 = load %struct.xfrm_mode**, %struct.xfrm_mode*** %7, align 8
  %38 = load %struct.xfrm_mode*, %struct.xfrm_mode** %4, align 8
  %39 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.xfrm_mode*, %struct.xfrm_mode** %37, i64 %40
  %42 = load %struct.xfrm_mode*, %struct.xfrm_mode** %41, align 8
  %43 = load %struct.xfrm_mode*, %struct.xfrm_mode** %4, align 8
  %44 = icmp eq %struct.xfrm_mode* %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %31
  %49 = load %struct.xfrm_mode**, %struct.xfrm_mode*** %7, align 8
  %50 = load %struct.xfrm_mode*, %struct.xfrm_mode** %4, align 8
  %51 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.xfrm_mode*, %struct.xfrm_mode** %49, i64 %52
  store %struct.xfrm_mode* null, %struct.xfrm_mode** %53, align 8
  %54 = load %struct.xfrm_mode*, %struct.xfrm_mode** %4, align 8
  %55 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @module_put(i32 %58)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %48, %31
  %61 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %62 = call i32 @xfrm_state_unlock_afinfo(%struct.xfrm_state_afinfo* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %28, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.xfrm_state_afinfo* @xfrm_state_lock_afinfo(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @xfrm_state_unlock_afinfo(%struct.xfrm_state_afinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
