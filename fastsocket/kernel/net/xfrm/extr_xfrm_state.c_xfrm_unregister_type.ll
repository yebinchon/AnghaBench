; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_unregister_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_unregister_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_type = type { i64 }
%struct.xfrm_state_afinfo = type { %struct.xfrm_type** }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_unregister_type(%struct.xfrm_type* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_type*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.xfrm_state_afinfo*, align 8
  %7 = alloca %struct.xfrm_type**, align 8
  %8 = alloca i32, align 4
  store %struct.xfrm_type* %0, %struct.xfrm_type** %4, align 8
  store i16 %1, i16* %5, align 2
  %9 = load i16, i16* %5, align 2
  %10 = call %struct.xfrm_state_afinfo* @xfrm_state_lock_afinfo(i16 zeroext %9)
  store %struct.xfrm_state_afinfo* %10, %struct.xfrm_state_afinfo** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %12 = icmp eq %struct.xfrm_state_afinfo* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EAFNOSUPPORT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %21 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %20, i32 0, i32 0
  %22 = load %struct.xfrm_type**, %struct.xfrm_type*** %21, align 8
  store %struct.xfrm_type** %22, %struct.xfrm_type*** %7, align 8
  %23 = load %struct.xfrm_type**, %struct.xfrm_type*** %7, align 8
  %24 = load %struct.xfrm_type*, %struct.xfrm_type** %4, align 8
  %25 = getelementptr inbounds %struct.xfrm_type, %struct.xfrm_type* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.xfrm_type*, %struct.xfrm_type** %23, i64 %26
  %28 = load %struct.xfrm_type*, %struct.xfrm_type** %27, align 8
  %29 = load %struct.xfrm_type*, %struct.xfrm_type** %4, align 8
  %30 = icmp ne %struct.xfrm_type* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %43

37:                                               ; preds = %19
  %38 = load %struct.xfrm_type**, %struct.xfrm_type*** %7, align 8
  %39 = load %struct.xfrm_type*, %struct.xfrm_type** %4, align 8
  %40 = getelementptr inbounds %struct.xfrm_type, %struct.xfrm_type* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.xfrm_type*, %struct.xfrm_type** %38, i64 %41
  store %struct.xfrm_type* null, %struct.xfrm_type** %42, align 8
  br label %43

43:                                               ; preds = %37, %34
  %44 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %45 = call i32 @xfrm_state_unlock_afinfo(%struct.xfrm_state_afinfo* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.xfrm_state_afinfo* @xfrm_state_lock_afinfo(i16 zeroext) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xfrm_state_unlock_afinfo(%struct.xfrm_state_afinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
