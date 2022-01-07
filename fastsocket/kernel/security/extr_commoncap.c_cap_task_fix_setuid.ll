; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_commoncap.c_cap_task_fix_setuid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_commoncap.c_cap_task_fix_setuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, i32, i32 }

@SECURE_NO_SETUID_FIXUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cap_task_fix_setuid(%struct.cred* %0, %struct.cred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %5, align 8
  store %struct.cred* %1, %struct.cred** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %61 [
    i32 129, label %9
    i32 130, label %9
    i32 128, label %9
    i32 131, label %18
  ]

9:                                                ; preds = %3, %3, %3
  %10 = load i32, i32* @SECURE_NO_SETUID_FIXUP, align 4
  %11 = call i32 @issecure(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load %struct.cred*, %struct.cred** %5, align 8
  %15 = load %struct.cred*, %struct.cred** %6, align 8
  %16 = call i32 @cap_emulate_setxuid(%struct.cred* %14, %struct.cred* %15)
  br label %17

17:                                               ; preds = %13, %9
  br label %64

18:                                               ; preds = %3
  %19 = load i32, i32* @SECURE_NO_SETUID_FIXUP, align 4
  %20 = call i32 @issecure(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %18
  %23 = load %struct.cred*, %struct.cred** %6, align 8
  %24 = getelementptr inbounds %struct.cred, %struct.cred* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.cred*, %struct.cred** %5, align 8
  %29 = getelementptr inbounds %struct.cred, %struct.cred* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.cred*, %struct.cred** %5, align 8
  %34 = getelementptr inbounds %struct.cred, %struct.cred* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cap_drop_fs_set(i32 %35)
  %37 = load %struct.cred*, %struct.cred** %5, align 8
  %38 = getelementptr inbounds %struct.cred, %struct.cred* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %32, %27, %22
  %40 = load %struct.cred*, %struct.cred** %6, align 8
  %41 = getelementptr inbounds %struct.cred, %struct.cred* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.cred*, %struct.cred** %5, align 8
  %46 = getelementptr inbounds %struct.cred, %struct.cred* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.cred*, %struct.cred** %5, align 8
  %51 = getelementptr inbounds %struct.cred, %struct.cred* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cred*, %struct.cred** %5, align 8
  %54 = getelementptr inbounds %struct.cred, %struct.cred* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cap_raise_fs_set(i32 %52, i32 %55)
  %57 = load %struct.cred*, %struct.cred** %5, align 8
  %58 = getelementptr inbounds %struct.cred, %struct.cred* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %49, %44, %39
  br label %60

60:                                               ; preds = %59, %18
  br label %64

61:                                               ; preds = %3
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %65

64:                                               ; preds = %60, %17
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @issecure(i32) #1

declare dso_local i32 @cap_emulate_setxuid(%struct.cred*, %struct.cred*) #1

declare dso_local i32 @cap_drop_fs_set(i32) #1

declare dso_local i32 @cap_raise_fs_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
