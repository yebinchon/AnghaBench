; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfssvc.c_nfsd_create_serv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfssvc.c_nfsd_create_serv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinfo = type { i32 }

@nfsd_mutex = common dso_local global i32 0, align 4
@nfsd_serv = common dso_local global i32* null, align 8
@nfsd_max_blksize = common dso_local global i32 0, align 4
@NFSSVC_MAXBLKSIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@nfsd_program = common dso_local global i32 0, align 4
@nfsd_last_thread = common dso_local global i32 0, align 4
@nfsd = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfssvc_boot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_create_serv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysinfo, align 4
  store i32 0, i32* %2, align 4
  %4 = call i32 @mutex_is_locked(i32* @nfsd_mutex)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @WARN_ON(i32 %7)
  %9 = load i32*, i32** @nfsd_serv, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32*, i32** @nfsd_serv, align 8
  %13 = call i32 @svc_get(i32* %12)
  store i32 0, i32* %1, align 4
  br label %55

14:                                               ; preds = %0
  %15 = load i32, i32* @nfsd_max_blksize, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = call i32 @si_meminfo(%struct.sysinfo* %3)
  %19 = load i32, i32* @NFSSVC_MAXBLKSIZE, align 4
  store i32 %19, i32* @nfsd_max_blksize, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = sub nsw i32 %20, 12
  %22 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %35, %17
  %26 = load i32, i32* @nfsd_max_blksize, align 4
  %27 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @nfsd_max_blksize, align 4
  %32 = icmp sge i32 %31, 16384
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i1 [ false, %25 ], [ %32, %30 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i32, i32* @nfsd_max_blksize, align 4
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* @nfsd_max_blksize, align 4
  br label %25

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %14
  %40 = call i32 (...) @nfsd_reset_versions()
  %41 = load i32, i32* @nfsd_max_blksize, align 4
  %42 = load i32, i32* @nfsd_last_thread, align 4
  %43 = load i32, i32* @nfsd, align 4
  %44 = load i32, i32* @THIS_MODULE, align 4
  %45 = call i32* @svc_create_pooled(i32* @nfsd_program, i32 %41, i32 %42, i32 %43, i32 %44)
  store i32* %45, i32** @nfsd_serv, align 8
  %46 = load i32*, i32** @nfsd_serv, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %1, align 4
  br label %55

51:                                               ; preds = %39
  %52 = call i32 (...) @set_max_drc()
  %53 = call i32 @do_gettimeofday(i32* @nfssvc_boot)
  %54 = load i32, i32* %2, align 4
  store i32 %54, i32* %1, align 4
  br label %55

55:                                               ; preds = %51, %48, %11
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @svc_get(i32*) #1

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #1

declare dso_local i32 @nfsd_reset_versions(...) #1

declare dso_local i32* @svc_create_pooled(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @set_max_drc(...) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
