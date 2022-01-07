; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_nfs.c_make_nfs_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_nfs.c_make_nfs_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@gopt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CFM_FULLY_QUALIFIED_HOSTS = common dso_local global i32 0, align 4
@XLOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Using NFS auth for FQHN \22%s\22\00", align 1
@hostd = common dso_local global i32 0, align 4
@nfs_auth = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_nfs_auth() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  %4 = load i32, i32* @CFM_FULLY_QUALIFIED_HOSTS, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* @XLOG_INFO, align 4
  %9 = load i32, i32* @hostd, align 4
  %10 = call i32 @plog(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @hostd, align 4
  %12 = call i32 @authunix_create(i32 %11, i32 0, i32 0, i32 1, i32* %2)
  store i32 %12, i32* @nfs_auth, align 4
  br label %15

13:                                               ; preds = %0
  %14 = call i32 (...) @authunix_create_default()
  store i32 %14, i32* @nfs_auth, align 4
  br label %15

15:                                               ; preds = %13, %7
  %16 = load i32, i32* @nfs_auth, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @ENOBUFS, align 4
  store i32 %19, i32* %1, align 4
  br label %21

20:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @plog(i32, i8*, i32) #1

declare dso_local i32 @authunix_create(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @authunix_create_default(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
