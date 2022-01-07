; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svclock.c_nlmsvc_setgrantargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svclock.c_nlmsvc_setgrantargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_rqst = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.nlm_lock = type { %struct.TYPE_10__, %struct.TYPE_12__, i32 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@NLMCLNT_OHSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlm_rqst*, %struct.nlm_lock*)* @nlmsvc_setgrantargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmsvc_setgrantargs(%struct.nlm_rqst* %0, %struct.nlm_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlm_rqst*, align 8
  %5 = alloca %struct.nlm_lock*, align 8
  %6 = alloca i8*, align 8
  store %struct.nlm_rqst* %0, %struct.nlm_rqst** %4, align 8
  store %struct.nlm_lock* %1, %struct.nlm_lock** %5, align 8
  %7 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %8 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %11 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %12 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %11, i32 0, i32 1
  %13 = call i32 @locks_copy_lock(i32* %10, %struct.TYPE_12__* %12)
  %14 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %15 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %19 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %18, i32 0, i32 2
  %20 = call i32 @memcpy(i32* %17, i32* %19, i32 4)
  %21 = call %struct.TYPE_11__* (...) @utsname()
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %25 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 4
  %28 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %29 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %33 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %31, i32* %36, align 8
  %37 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %38 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %41 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32* %39, i32** %44, align 8
  %45 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %46 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %50 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 8
  %53 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %54 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @NLMCLNT_OHSIZE, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %2
  %60 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %61 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @kmalloc(i32 %63, i32 %64)
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %93

69:                                               ; preds = %59
  %70 = load i8*, i8** %6, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %73 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i32* %71, i32** %76, align 8
  br label %77

77:                                               ; preds = %69, %2
  %78 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %79 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %85 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %89 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @memcpy(i32* %83, i32* %87, i32 %91)
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %77, %68
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @locks_copy_lock(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @utsname(...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
