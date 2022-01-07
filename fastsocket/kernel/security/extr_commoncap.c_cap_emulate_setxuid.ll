; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_commoncap.c_cap_emulate_setxuid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_commoncap.c_cap_emulate_setxuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i64, i64, i64, i32, i32 }

@SECURE_KEEP_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cred*, %struct.cred*)* @cap_emulate_setxuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cap_emulate_setxuid(%struct.cred* %0, %struct.cred* %1) #0 {
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.cred*, align 8
  store %struct.cred* %0, %struct.cred** %3, align 8
  store %struct.cred* %1, %struct.cred** %4, align 8
  %5 = load %struct.cred*, %struct.cred** %4, align 8
  %6 = getelementptr inbounds %struct.cred, %struct.cred* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load %struct.cred*, %struct.cred** %4, align 8
  %11 = getelementptr inbounds %struct.cred, %struct.cred* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.cred*, %struct.cred** %4, align 8
  %16 = getelementptr inbounds %struct.cred, %struct.cred* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %14, %9, %2
  %20 = load %struct.cred*, %struct.cred** %3, align 8
  %21 = getelementptr inbounds %struct.cred, %struct.cred* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  %25 = load %struct.cred*, %struct.cred** %3, align 8
  %26 = getelementptr inbounds %struct.cred, %struct.cred* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load %struct.cred*, %struct.cred** %3, align 8
  %31 = getelementptr inbounds %struct.cred, %struct.cred* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load i32, i32* @SECURE_KEEP_CAPS, align 4
  %36 = call i32 @issecure(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = load %struct.cred*, %struct.cred** %3, align 8
  %40 = getelementptr inbounds %struct.cred, %struct.cred* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cap_clear(i32 %41)
  %43 = load %struct.cred*, %struct.cred** %3, align 8
  %44 = getelementptr inbounds %struct.cred, %struct.cred* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cap_clear(i32 %45)
  br label %47

47:                                               ; preds = %38, %34, %29, %24, %19, %14
  %48 = load %struct.cred*, %struct.cred** %4, align 8
  %49 = getelementptr inbounds %struct.cred, %struct.cred* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.cred*, %struct.cred** %3, align 8
  %54 = getelementptr inbounds %struct.cred, %struct.cred* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.cred*, %struct.cred** %3, align 8
  %59 = getelementptr inbounds %struct.cred, %struct.cred* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cap_clear(i32 %60)
  br label %62

62:                                               ; preds = %57, %52, %47
  %63 = load %struct.cred*, %struct.cred** %4, align 8
  %64 = getelementptr inbounds %struct.cred, %struct.cred* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.cred*, %struct.cred** %3, align 8
  %69 = getelementptr inbounds %struct.cred, %struct.cred* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.cred*, %struct.cred** %3, align 8
  %74 = getelementptr inbounds %struct.cred, %struct.cred* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.cred*, %struct.cred** %3, align 8
  %77 = getelementptr inbounds %struct.cred, %struct.cred* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %72, %67, %62
  ret void
}

declare dso_local i32 @issecure(i32) #1

declare dso_local i32 @cap_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
