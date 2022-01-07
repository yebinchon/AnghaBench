; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kmod.c_call_usermodehelper_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kmod.c_call_usermodehelper_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subprocess_info = type { i8*, i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@done = common dso_local global i32 0, align 4
@khelper_wq = common dso_local global i32 0, align 4
@usermodehelper_disabled = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@UMH_NO_WAIT = common dso_local global i32 0, align 4
@UMH_KILLABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @call_usermodehelper_exec(%struct.subprocess_info* %0, i32 %1) #0 {
  %3 = alloca %struct.subprocess_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.subprocess_info* %0, %struct.subprocess_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @done, align 4
  %7 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %6)
  store i32 0, i32* %5, align 4
  %8 = load %struct.subprocess_info*, %struct.subprocess_info** %3, align 8
  %9 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %8, i32 0, i32 5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @atomic_read(i32* %11)
  %13 = icmp ne i32 %12, 1
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.subprocess_info*, %struct.subprocess_info** %3, align 8
  %17 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %16, i32 0, i32 5
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i32 @validate_creds(%struct.TYPE_2__* %18)
  %20 = call i32 (...) @helper_lock()
  %21 = load %struct.subprocess_info*, %struct.subprocess_info** %3, align 8
  %22 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %75

29:                                               ; preds = %2
  %30 = load i32, i32* @khelper_wq, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* @usermodehelper_disabled, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %75

38:                                               ; preds = %32
  %39 = load %struct.subprocess_info*, %struct.subprocess_info** %3, align 8
  %40 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %39, i32 0, i32 3
  store i32* @done, i32** %40, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.subprocess_info*, %struct.subprocess_info** %3, align 8
  %43 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @khelper_wq, align 4
  %45 = load %struct.subprocess_info*, %struct.subprocess_info** %3, align 8
  %46 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %45, i32 0, i32 4
  %47 = call i32 @queue_work(i32 %44, i32* %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @UMH_NO_WAIT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %78

52:                                               ; preds = %38
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @UMH_KILLABLE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = call i32 @wait_for_completion_killable(i32* @done)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %71

62:                                               ; preds = %57
  %63 = load %struct.subprocess_info*, %struct.subprocess_info** %3, align 8
  %64 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %63, i32 0, i32 3
  %65 = call i64 @xchg(i32** %64, i32* null)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %78

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %52
  %70 = call i32 @wait_for_completion(i32* @done)
  br label %71

71:                                               ; preds = %69, %61
  %72 = load %struct.subprocess_info*, %struct.subprocess_info** %3, align 8
  %73 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %35, %28
  %76 = load %struct.subprocess_info*, %struct.subprocess_info** %3, align 8
  %77 = call i32 @call_usermodehelper_freeinfo(%struct.subprocess_info* %76)
  br label %78

78:                                               ; preds = %75, %67, %51
  %79 = call i32 (...) @helper_unlock()
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @validate_creds(%struct.TYPE_2__*) #1

declare dso_local i32 @helper_lock(...) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wait_for_completion_killable(i32*) #1

declare dso_local i64 @xchg(i32**, i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @call_usermodehelper_freeinfo(%struct.subprocess_info*) #1

declare dso_local i32 @helper_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
