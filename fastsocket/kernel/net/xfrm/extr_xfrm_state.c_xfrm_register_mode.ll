; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_register_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_register_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_mode = type { i64, %struct.xfrm_state_afinfo* }
%struct.xfrm_state_afinfo = type { i32, %struct.xfrm_mode** }

@XFRM_MODE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_register_mode(%struct.xfrm_mode* %0, i32 %1) #0 {
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
  br label %68

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
  br label %68

31:                                               ; preds = %20
  %32 = load i32, i32* @EEXIST, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %35 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %34, i32 0, i32 1
  %36 = load %struct.xfrm_mode**, %struct.xfrm_mode*** %35, align 8
  store %struct.xfrm_mode** %36, %struct.xfrm_mode*** %7, align 8
  %37 = load %struct.xfrm_mode**, %struct.xfrm_mode*** %7, align 8
  %38 = load %struct.xfrm_mode*, %struct.xfrm_mode** %4, align 8
  %39 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.xfrm_mode*, %struct.xfrm_mode** %37, i64 %40
  %42 = load %struct.xfrm_mode*, %struct.xfrm_mode** %41, align 8
  %43 = icmp ne %struct.xfrm_mode* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %64

45:                                               ; preds = %31
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %49 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @try_module_get(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %64

54:                                               ; preds = %45
  %55 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %56 = load %struct.xfrm_mode*, %struct.xfrm_mode** %4, align 8
  %57 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %56, i32 0, i32 1
  store %struct.xfrm_state_afinfo* %55, %struct.xfrm_state_afinfo** %57, align 8
  %58 = load %struct.xfrm_mode*, %struct.xfrm_mode** %4, align 8
  %59 = load %struct.xfrm_mode**, %struct.xfrm_mode*** %7, align 8
  %60 = load %struct.xfrm_mode*, %struct.xfrm_mode** %4, align 8
  %61 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.xfrm_mode*, %struct.xfrm_mode** %59, i64 %62
  store %struct.xfrm_mode* %58, %struct.xfrm_mode** %63, align 8
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %54, %53, %44
  %65 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %66 = call i32 @xfrm_state_unlock_afinfo(%struct.xfrm_state_afinfo* %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %28, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.xfrm_state_afinfo* @xfrm_state_lock_afinfo(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @xfrm_state_unlock_afinfo(%struct.xfrm_state_afinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
