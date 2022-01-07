; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_get_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_type = type { i32 }
%struct.xfrm_state_afinfo = type { %struct.xfrm_type** }

@.str = private unnamed_addr constant [16 x i8] c"xfrm-type-%d-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_type* (i64, i16)* @xfrm_get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_type* @xfrm_get_type(i64 %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.xfrm_type*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.xfrm_state_afinfo*, align 8
  %7 = alloca %struct.xfrm_type**, align 8
  %8 = alloca %struct.xfrm_type*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %48, %2
  %11 = load i16, i16* %5, align 2
  %12 = call %struct.xfrm_state_afinfo* @xfrm_state_get_afinfo(i16 zeroext %11)
  store %struct.xfrm_state_afinfo* %12, %struct.xfrm_state_afinfo** %6, align 8
  %13 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %14 = icmp eq %struct.xfrm_state_afinfo* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store %struct.xfrm_type* null, %struct.xfrm_type** %3, align 8
  br label %58

19:                                               ; preds = %10
  %20 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %21 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %20, i32 0, i32 0
  %22 = load %struct.xfrm_type**, %struct.xfrm_type*** %21, align 8
  store %struct.xfrm_type** %22, %struct.xfrm_type*** %7, align 8
  %23 = load %struct.xfrm_type**, %struct.xfrm_type*** %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.xfrm_type*, %struct.xfrm_type** %23, i64 %24
  %26 = load %struct.xfrm_type*, %struct.xfrm_type** %25, align 8
  store %struct.xfrm_type* %26, %struct.xfrm_type** %8, align 8
  %27 = load %struct.xfrm_type*, %struct.xfrm_type** %8, align 8
  %28 = icmp ne %struct.xfrm_type* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load %struct.xfrm_type*, %struct.xfrm_type** %8, align 8
  %31 = getelementptr inbounds %struct.xfrm_type, %struct.xfrm_type* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @try_module_get(i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %29, %19
  %37 = phi i1 [ false, %19 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store %struct.xfrm_type* null, %struct.xfrm_type** %8, align 8
  br label %42

42:                                               ; preds = %41, %36
  %43 = load %struct.xfrm_type*, %struct.xfrm_type** %8, align 8
  %44 = icmp ne %struct.xfrm_type* %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %50 = call i32 @xfrm_state_put_afinfo(%struct.xfrm_state_afinfo* %49)
  %51 = load i16, i16* %5, align 2
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @request_module(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i16 zeroext %51, i64 %52)
  store i32 1, i32* %9, align 4
  br label %10

54:                                               ; preds = %45, %42
  %55 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %6, align 8
  %56 = call i32 @xfrm_state_put_afinfo(%struct.xfrm_state_afinfo* %55)
  %57 = load %struct.xfrm_type*, %struct.xfrm_type** %8, align 8
  store %struct.xfrm_type* %57, %struct.xfrm_type** %3, align 8
  br label %58

58:                                               ; preds = %54, %18
  %59 = load %struct.xfrm_type*, %struct.xfrm_type** %3, align 8
  ret %struct.xfrm_type* %59
}

declare dso_local %struct.xfrm_state_afinfo* @xfrm_state_get_afinfo(i16 zeroext) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @xfrm_state_put_afinfo(%struct.xfrm_state_afinfo*) #1

declare dso_local i32 @request_module(i8*, i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
