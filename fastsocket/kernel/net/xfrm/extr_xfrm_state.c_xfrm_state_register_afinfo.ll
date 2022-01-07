; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_state_register_afinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_state_register_afinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state_afinfo = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@NPROTO = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@xfrm_state_afinfo_lock = common dso_local global i32 0, align 4
@xfrm_state_afinfo = common dso_local global %struct.xfrm_state_afinfo** null, align 8
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_state_register_afinfo(%struct.xfrm_state_afinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_state_afinfo*, align 8
  %4 = alloca i32, align 4
  store %struct.xfrm_state_afinfo* %0, %struct.xfrm_state_afinfo** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %3, align 8
  %6 = icmp eq %struct.xfrm_state_afinfo* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %3, align 8
  %15 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NPROTO, align 8
  %18 = icmp uge i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @EAFNOSUPPORT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %50

25:                                               ; preds = %13
  %26 = call i32 @write_lock_bh(i32* @xfrm_state_afinfo_lock)
  %27 = load %struct.xfrm_state_afinfo**, %struct.xfrm_state_afinfo*** @xfrm_state_afinfo, align 8
  %28 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %3, align 8
  %29 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %27, i64 %30
  %32 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %31, align 8
  %33 = icmp ne %struct.xfrm_state_afinfo* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* @ENOBUFS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %47

40:                                               ; preds = %25
  %41 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %3, align 8
  %42 = load %struct.xfrm_state_afinfo**, %struct.xfrm_state_afinfo*** @xfrm_state_afinfo, align 8
  %43 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %3, align 8
  %44 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %42, i64 %45
  store %struct.xfrm_state_afinfo* %41, %struct.xfrm_state_afinfo** %46, align 8
  br label %47

47:                                               ; preds = %40, %37
  %48 = call i32 @write_unlock_bh(i32* @xfrm_state_afinfo_lock)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %22, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
