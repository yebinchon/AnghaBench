; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_uvesafb.c_uvesafb_cn_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_uvesafb.c_uvesafb_cn_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvesafb_ktask = type { i64, i32, %struct.TYPE_2__, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cn_msg = type { i64, i64, i32, i64 }
%struct.netlink_skb_parms = type { i32 }
%struct.uvesafb_task = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@UVESAFB_TASKS_MAX = common dso_local global i64 0, align 8
@uvfb_lock = common dso_local global i32 0, align 4
@uvfb_tasks = common dso_local global %struct.uvesafb_ktask** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cn_msg*, %struct.netlink_skb_parms*)* @uvesafb_cn_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvesafb_cn_callback(%struct.cn_msg* %0, %struct.netlink_skb_parms* %1) #0 {
  %3 = alloca %struct.cn_msg*, align 8
  %4 = alloca %struct.netlink_skb_parms*, align 8
  %5 = alloca %struct.uvesafb_task*, align 8
  %6 = alloca %struct.uvesafb_ktask*, align 8
  store %struct.cn_msg* %0, %struct.cn_msg** %3, align 8
  store %struct.netlink_skb_parms* %1, %struct.netlink_skb_parms** %4, align 8
  %7 = load %struct.netlink_skb_parms*, %struct.netlink_skb_parms** %4, align 8
  %8 = getelementptr inbounds %struct.netlink_skb_parms, %struct.netlink_skb_parms* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %11 = call i32 @cap_raised(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %104

14:                                               ; preds = %2
  %15 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %16 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UVESAFB_TASKS_MAX, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %104

21:                                               ; preds = %14
  %22 = call i32 @mutex_lock(i32* @uvfb_lock)
  %23 = load %struct.uvesafb_ktask**, %struct.uvesafb_ktask*** @uvfb_tasks, align 8
  %24 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %25 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %23, i64 %26
  %28 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %27, align 8
  store %struct.uvesafb_ktask* %28, %struct.uvesafb_ktask** %6, align 8
  %29 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %30 = icmp ne %struct.uvesafb_ktask* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %33 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %36 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31, %21
  %40 = call i32 @mutex_unlock(i32* @uvfb_lock)
  br label %104

41:                                               ; preds = %31
  %42 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %43 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.uvesafb_task*
  store %struct.uvesafb_task* %45, %struct.uvesafb_task** %5, align 8
  %46 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %47 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.uvesafb_task*, %struct.uvesafb_task** %5, align 8
  %51 = getelementptr inbounds %struct.uvesafb_task, %struct.uvesafb_task* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %65, label %54

54:                                               ; preds = %41
  %55 = load %struct.uvesafb_task*, %struct.uvesafb_task** %5, align 8
  %56 = getelementptr inbounds %struct.uvesafb_task, %struct.uvesafb_task* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %60 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 4
  %64 = icmp ugt i64 %58, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %54, %41
  %66 = call i32 @mutex_unlock(i32* @uvfb_lock)
  br label %104

67:                                               ; preds = %54
  %68 = load %struct.uvesafb_ktask**, %struct.uvesafb_ktask*** @uvfb_tasks, align 8
  %69 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %70 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %68, i64 %71
  store %struct.uvesafb_ktask* null, %struct.uvesafb_ktask** %72, align 8
  %73 = call i32 @mutex_unlock(i32* @uvfb_lock)
  %74 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %75 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %74, i32 0, i32 2
  %76 = load %struct.uvesafb_task*, %struct.uvesafb_task** %5, align 8
  %77 = call i32 @memcpy(%struct.TYPE_2__* %75, %struct.uvesafb_task* %76, i32 4)
  %78 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %79 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %67
  %84 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %85 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = icmp ne %struct.TYPE_2__* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %90 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %89, i32 0, i32 3
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load %struct.uvesafb_task*, %struct.uvesafb_task** %5, align 8
  %93 = getelementptr inbounds %struct.uvesafb_task, %struct.uvesafb_task* %92, i64 1
  %94 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %95 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @memcpy(%struct.TYPE_2__* %91, %struct.uvesafb_task* %93, i32 %97)
  br label %99

99:                                               ; preds = %88, %83, %67
  %100 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %101 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @complete(i32 %102)
  br label %104

104:                                              ; preds = %99, %65, %39, %20, %13
  ret void
}

declare dso_local i32 @cap_raised(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.uvesafb_task*, i32) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
