; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_nlmclnt_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_nlmclnt_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32 }
%struct.file_lock = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.file_lock*)* }
%struct.nlm_rqst = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"lockd: clnt proc returns %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmclnt_proc(%struct.nlm_host* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlm_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca %struct.nlm_rqst*, align 8
  %9 = alloca i32, align 4
  store %struct.nlm_host* %0, %struct.nlm_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_lock* %2, %struct.file_lock** %7, align 8
  %10 = load %struct.nlm_host*, %struct.nlm_host** %5, align 8
  %11 = call i32 @nlm_get_host(%struct.nlm_host* %10)
  %12 = load %struct.nlm_host*, %struct.nlm_host** %5, align 8
  %13 = call %struct.nlm_rqst* @nlm_alloc_call(%struct.nlm_host* %12)
  store %struct.nlm_rqst* %13, %struct.nlm_rqst** %8, align 8
  %14 = load %struct.nlm_rqst*, %struct.nlm_rqst** %8, align 8
  %15 = icmp eq %struct.nlm_rqst* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %83

19:                                               ; preds = %3
  %20 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %21 = load %struct.nlm_host*, %struct.nlm_host** %5, align 8
  %22 = call i32 @nlmclnt_locks_init_private(%struct.file_lock* %20, %struct.nlm_host* %21)
  %23 = load %struct.nlm_rqst*, %struct.nlm_rqst** %8, align 8
  %24 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %25 = call i32 @nlmclnt_setlockargs(%struct.nlm_rqst* %23, %struct.file_lock* %24)
  %26 = call i32 (...) @lock_kernel()
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @IS_SETLK(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @IS_SETLKW(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %30, %19
  %35 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %36 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @F_UNLCK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @IS_SETLKW(i32 %41)
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = load %struct.nlm_rqst*, %struct.nlm_rqst** %8, align 8
  %47 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.nlm_rqst*, %struct.nlm_rqst** %8, align 8
  %50 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %51 = call i32 @nlmclnt_lock(%struct.nlm_rqst* %49, %struct.file_lock* %50)
  store i32 %51, i32* %9, align 4
  br label %56

52:                                               ; preds = %34
  %53 = load %struct.nlm_rqst*, %struct.nlm_rqst** %8, align 8
  %54 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %55 = call i32 @nlmclnt_unlock(%struct.nlm_rqst* %53, %struct.file_lock* %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %52, %40
  br label %69

57:                                               ; preds = %30
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @IS_GETLK(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.nlm_rqst*, %struct.nlm_rqst** %8, align 8
  %63 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %64 = call i32 @nlmclnt_test(%struct.nlm_rqst* %62, %struct.file_lock* %63)
  store i32 %64, i32* %9, align 4
  br label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %61
  br label %69

69:                                               ; preds = %68, %56
  %70 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %71 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %73, align 8
  %75 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %76 = call i32 %74(%struct.file_lock* %75)
  %77 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %78 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %77, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %78, align 8
  %79 = call i32 (...) @unlock_kernel()
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %69, %16
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @nlm_get_host(%struct.nlm_host*) #1

declare dso_local %struct.nlm_rqst* @nlm_alloc_call(%struct.nlm_host*) #1

declare dso_local i32 @nlmclnt_locks_init_private(%struct.file_lock*, %struct.nlm_host*) #1

declare dso_local i32 @nlmclnt_setlockargs(%struct.nlm_rqst*, %struct.file_lock*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @IS_SETLK(i32) #1

declare dso_local i64 @IS_SETLKW(i32) #1

declare dso_local i32 @nlmclnt_lock(%struct.nlm_rqst*, %struct.file_lock*) #1

declare dso_local i32 @nlmclnt_unlock(%struct.nlm_rqst*, %struct.file_lock*) #1

declare dso_local i64 @IS_GETLK(i32) #1

declare dso_local i32 @nlmclnt_test(%struct.nlm_rqst*, %struct.file_lock*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
