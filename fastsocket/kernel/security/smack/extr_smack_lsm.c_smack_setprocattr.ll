; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_setprocattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_setprocattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { i8* }
%struct.cred = type { i8* }

@current = common dso_local global %struct.task_struct* null, align 8
@EPERM = common dso_local global i32 0, align 4
@CAP_MAC_ADMIN = common dso_local global i32 0, align 4
@SMK_LABELLEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"current\00", align 1
@smack_known_web = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i8*, i8*, i64)* @smack_setprocattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_setprocattr(%struct.task_struct* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cred*, align 8
  %11 = alloca i8*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %14 = icmp ne %struct.task_struct* %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %76

18:                                               ; preds = %4
  %19 = load i32, i32* @CAP_MAC_ADMIN, align 4
  %20 = call i32 @capable(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %76

25:                                               ; preds = %18
  %26 = load i8*, i8** %8, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @SMK_LABELLEN, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %28, %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %76

38:                                               ; preds = %31
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %76

45:                                               ; preds = %38
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i8* @smk_import(i8* %46, i64 %47)
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %76

54:                                               ; preds = %45
  %55 = load i8*, i8** %11, align 8
  %56 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smack_known_web, i32 0, i32 0), align 8
  %57 = icmp eq i8* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @EPERM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %76

61:                                               ; preds = %54
  %62 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %62, %struct.cred** %10, align 8
  %63 = load %struct.cred*, %struct.cred** %10, align 8
  %64 = icmp eq %struct.cred* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %76

68:                                               ; preds = %61
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.cred*, %struct.cred** %10, align 8
  %71 = getelementptr inbounds %struct.cred, %struct.cred* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.cred*, %struct.cred** %10, align 8
  %73 = call i32 @commit_creds(%struct.cred* %72)
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %68, %65, %58, %51, %42, %35, %22, %15
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @smk_import(i8*, i64) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @commit_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
