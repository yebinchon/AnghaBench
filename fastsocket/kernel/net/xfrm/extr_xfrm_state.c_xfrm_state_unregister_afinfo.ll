; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_state_unregister_afinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_state_unregister_afinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state_afinfo = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@NPROTO = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@xfrm_state_afinfo_lock = common dso_local global i32 0, align 4
@xfrm_state_afinfo = common dso_local global %struct.xfrm_state_afinfo** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_state_unregister_afinfo(%struct.xfrm_state_afinfo* %0) #0 {
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
  br label %62

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
  br label %62

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
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %25
  %38 = load %struct.xfrm_state_afinfo**, %struct.xfrm_state_afinfo*** @xfrm_state_afinfo, align 8
  %39 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %3, align 8
  %40 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %38, i64 %41
  %43 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %42, align 8
  %44 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %3, align 8
  %45 = icmp ne %struct.xfrm_state_afinfo* %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %58

52:                                               ; preds = %37
  %53 = load %struct.xfrm_state_afinfo**, %struct.xfrm_state_afinfo*** @xfrm_state_afinfo, align 8
  %54 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %3, align 8
  %55 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %53, i64 %56
  store %struct.xfrm_state_afinfo* null, %struct.xfrm_state_afinfo** %57, align 8
  br label %58

58:                                               ; preds = %52, %49
  br label %59

59:                                               ; preds = %58, %25
  %60 = call i32 @write_unlock_bh(i32* @xfrm_state_afinfo_lock)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %22, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
