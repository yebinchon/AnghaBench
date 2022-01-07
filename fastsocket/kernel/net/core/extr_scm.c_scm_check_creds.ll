; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_scm.c_scm_check_creds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_scm.c_scm_check_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i64, i64, i64 }
%struct.cred = type { i64, i64, i64, i64, i64, i64 }

@current = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@CAP_SETUID = common dso_local global i32 0, align 4
@CAP_SETGID = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*)* @scm_check_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scm_check_creds(%struct.ucred* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca %struct.cred*, align 8
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  %5 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %5, %struct.cred** %4, align 8
  %6 = load %struct.ucred*, %struct.ucred** %3, align 8
  %7 = getelementptr inbounds %struct.ucred, %struct.ucred* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* @current, align 4
  %10 = call i64 @task_tgid_vnr(i32 %9)
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %14 = call i64 @capable(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %73

16:                                               ; preds = %12, %1
  %17 = load %struct.ucred*, %struct.ucred** %3, align 8
  %18 = getelementptr inbounds %struct.ucred, %struct.ucred* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.cred*, %struct.cred** %4, align 8
  %21 = getelementptr inbounds %struct.cred, %struct.cred* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %44, label %24

24:                                               ; preds = %16
  %25 = load %struct.ucred*, %struct.ucred** %3, align 8
  %26 = getelementptr inbounds %struct.ucred, %struct.ucred* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cred*, %struct.cred** %4, align 8
  %29 = getelementptr inbounds %struct.cred, %struct.cred* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %24
  %33 = load %struct.ucred*, %struct.ucred** %3, align 8
  %34 = getelementptr inbounds %struct.ucred, %struct.ucred* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.cred*, %struct.cred** %4, align 8
  %37 = getelementptr inbounds %struct.cred, %struct.cred* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @CAP_SETUID, align 4
  %42 = call i64 @capable(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %40, %32, %24, %16
  %45 = load %struct.ucred*, %struct.ucred** %3, align 8
  %46 = getelementptr inbounds %struct.ucred, %struct.ucred* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.cred*, %struct.cred** %4, align 8
  %49 = getelementptr inbounds %struct.cred, %struct.cred* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %72, label %52

52:                                               ; preds = %44
  %53 = load %struct.ucred*, %struct.ucred** %3, align 8
  %54 = getelementptr inbounds %struct.ucred, %struct.ucred* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.cred*, %struct.cred** %4, align 8
  %57 = getelementptr inbounds %struct.cred, %struct.cred* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %52
  %61 = load %struct.ucred*, %struct.ucred** %3, align 8
  %62 = getelementptr inbounds %struct.ucred, %struct.ucred* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.cred*, %struct.cred** %4, align 8
  %65 = getelementptr inbounds %struct.cred, %struct.cred* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* @CAP_SETGID, align 4
  %70 = call i64 @capable(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %60, %52, %44
  store i32 0, i32* %2, align 4
  br label %76

73:                                               ; preds = %68, %40, %12
  %74 = load i32, i32* @EPERM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %72
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i64 @task_tgid_vnr(i32) #1

declare dso_local i64 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
