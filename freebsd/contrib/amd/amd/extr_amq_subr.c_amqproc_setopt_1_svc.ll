; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amq_subr.c_amqproc_setopt_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amq_subr.c_amqproc_setopt_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@amqproc_setopt_1_svc.rc = internal global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@gopt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@orig_umask = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@amd_state = common dso_local global i32 0, align 4
@Run = common dso_local global i32 0, align 4
@XLOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"amq says flush cache\00", align 1
@do_mapc_reload = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @amqproc_setopt_1_svc(i64 %0, %struct.svc_req* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.svc_req*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.svc_req* %1, %struct.svc_req** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* @amqproc_setopt_1_svc.rc, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %67 [
    i32 131, label %11
    i32 129, label %20
    i32 128, label %48
    i32 130, label %57
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @debug_option(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* @amqproc_setopt_1_svc.rc, align 4
  br label %19

19:                                               ; preds = %17, %11
  br label %67

20:                                               ; preds = %2
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gopt, i32 0, i32 0), align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gopt, i32 0, i32 0), align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @STREQ(i32 %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @orig_umask, align 4
  %40 = call i32 @switch_to_logfile(i32 %38, i32 %39, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* @amqproc_setopt_1_svc.rc, align 4
  br label %44

44:                                               ; preds = %42, %35
  br label %47

45:                                               ; preds = %28, %23, %20
  %46 = load i32, i32* @EACCES, align 4
  store i32 %46, i32* @amqproc_setopt_1_svc.rc, align 4
  br label %47

47:                                               ; preds = %45, %44
  br label %67

48:                                               ; preds = %2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @switch_option(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* @amqproc_setopt_1_svc.rc, align 4
  br label %56

56:                                               ; preds = %54, %48
  br label %67

57:                                               ; preds = %2
  %58 = load i32, i32* @amd_state, align 4
  %59 = load i32, i32* @Run, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* @XLOG_INFO, align 4
  %63 = call i32 @plog(i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @do_mapc_reload, align 4
  %64 = call i32 @flush_nfs_fhandle_cache(i32* null)
  %65 = call i32 @flush_srvr_nfs_cache(i32* null)
  br label %66

66:                                               ; preds = %61, %57
  br label %67

67:                                               ; preds = %2, %66, %56, %47, %19
  ret i32* @amqproc_setopt_1_svc.rc
}

declare dso_local i32 @debug_option(i32) #1

declare dso_local i32 @STREQ(i32, i32) #1

declare dso_local i32 @switch_to_logfile(i32, i32, i32) #1

declare dso_local i32 @switch_option(i32) #1

declare dso_local i32 @plog(i32, i8*) #1

declare dso_local i32 @flush_nfs_fhandle_cache(i32*) #1

declare dso_local i32 @flush_srvr_nfs_cache(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
