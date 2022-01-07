; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_policy_unregister_afinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_policy_unregister_afinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy_afinfo = type { i64, i32*, %struct.dst_ops* }
%struct.dst_ops = type { i32*, i32*, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@NPROTO = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@xfrm_policy_afinfo_lock = common dso_local global i32 0, align 4
@xfrm_policy_afinfo = common dso_local global %struct.xfrm_policy_afinfo** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_policy_unregister_afinfo(%struct.xfrm_policy_afinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_policy_afinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_ops*, align 8
  store %struct.xfrm_policy_afinfo* %0, %struct.xfrm_policy_afinfo** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %3, align 8
  %7 = icmp eq %struct.xfrm_policy_afinfo* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %83

14:                                               ; preds = %1
  %15 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %3, align 8
  %16 = getelementptr inbounds %struct.xfrm_policy_afinfo, %struct.xfrm_policy_afinfo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NPROTO, align 8
  %19 = icmp uge i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @EAFNOSUPPORT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %83

26:                                               ; preds = %14
  %27 = call i32 @spin_lock(i32* @xfrm_policy_afinfo_lock)
  %28 = load %struct.xfrm_policy_afinfo**, %struct.xfrm_policy_afinfo*** @xfrm_policy_afinfo, align 8
  %29 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %3, align 8
  %30 = getelementptr inbounds %struct.xfrm_policy_afinfo, %struct.xfrm_policy_afinfo* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %28, i64 %31
  %33 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %32, align 8
  %34 = icmp ne %struct.xfrm_policy_afinfo* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %26
  %39 = load %struct.xfrm_policy_afinfo**, %struct.xfrm_policy_afinfo*** @xfrm_policy_afinfo, align 8
  %40 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %3, align 8
  %41 = getelementptr inbounds %struct.xfrm_policy_afinfo, %struct.xfrm_policy_afinfo* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %39, i64 %42
  %44 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %43, align 8
  %45 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %3, align 8
  %46 = icmp ne %struct.xfrm_policy_afinfo* %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %61

53:                                               ; preds = %38
  %54 = load %struct.xfrm_policy_afinfo**, %struct.xfrm_policy_afinfo*** @xfrm_policy_afinfo, align 8
  %55 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %3, align 8
  %56 = getelementptr inbounds %struct.xfrm_policy_afinfo, %struct.xfrm_policy_afinfo* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %54, i64 %57
  %59 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %58, align 8
  %60 = call i32 @RCU_INIT_POINTER(%struct.xfrm_policy_afinfo* %59, i32* null)
  br label %61

61:                                               ; preds = %53, %50
  br label %62

62:                                               ; preds = %61, %26
  %63 = call i32 @spin_unlock(i32* @xfrm_policy_afinfo_lock)
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %62
  %67 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %3, align 8
  %68 = getelementptr inbounds %struct.xfrm_policy_afinfo, %struct.xfrm_policy_afinfo* %67, i32 0, i32 2
  %69 = load %struct.dst_ops*, %struct.dst_ops** %68, align 8
  store %struct.dst_ops* %69, %struct.dst_ops** %5, align 8
  %70 = call i32 (...) @synchronize_rcu()
  %71 = load %struct.dst_ops*, %struct.dst_ops** %5, align 8
  %72 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %71, i32 0, i32 3
  store i32* null, i32** %72, align 8
  %73 = load %struct.dst_ops*, %struct.dst_ops** %5, align 8
  %74 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.dst_ops*, %struct.dst_ops** %5, align 8
  %76 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  %77 = load %struct.dst_ops*, %struct.dst_ops** %5, align 8
  %78 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  %79 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %3, align 8
  %80 = getelementptr inbounds %struct.xfrm_policy_afinfo, %struct.xfrm_policy_afinfo* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %66, %62
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %23, %11
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(%struct.xfrm_policy_afinfo*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
