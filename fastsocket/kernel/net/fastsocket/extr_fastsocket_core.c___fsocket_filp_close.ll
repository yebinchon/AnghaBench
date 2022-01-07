; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c___fsocket_filp_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c___fsocket_filp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, %struct.file*, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32*, %struct.file* }
%struct.dentry = type { i32, i32, %struct.dentry*, i32, %struct.TYPE_2__, i32* }

@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Free file 0x%p[%ld]\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Release dentry 0x%p[%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Release inode 0x%p[%d]\0A\00", align 1
@ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"No dentry for file 0x%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Next time to release file 0x%p[%ld]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @__fsocket_filp_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fsocket_filp_close(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %5 = load %struct.file*, %struct.file** %3, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.file*, %struct.file** %7, align 8
  %9 = bitcast %struct.file* %8 to %struct.dentry*
  store %struct.dentry* %9, %struct.dentry** %4, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = call i64 @atomic_long_dec_and_test(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %62

14:                                               ; preds = %1
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = call i32 @eventpoll_release(%struct.file* %15)
  %17 = load %struct.file*, %struct.file** %3, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 5
  store i32* null, i32** %18, align 8
  %19 = load %struct.file*, %struct.file** %3, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store %struct.file* null, %struct.file** %21, align 8
  %22 = load %struct.file*, %struct.file** %3, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.file*, %struct.file** %3, align 8
  %26 = call i32 @put_empty_filp(%struct.file* %25)
  %27 = load i32, i32* @DEBUG, align 4
  %28 = load %struct.file*, %struct.file** %3, align 8
  %29 = load %struct.file*, %struct.file** %3, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = call i32 @atomic_long_read(i32* %30)
  %32 = call i32 @DPRINTK(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.file* %28, i32 %31)
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = icmp ne %struct.dentry* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %14
  %36 = load i32, i32* @DEBUG, align 4
  %37 = load %struct.dentry*, %struct.dentry** %4, align 8
  %38 = bitcast %struct.dentry* %37 to %struct.file*
  %39 = load %struct.dentry*, %struct.dentry** %4, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 3
  %41 = call i32 @atomic_read(i32* %40)
  %42 = call i32 @DPRINTK(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.file* %38, i32 %41)
  %43 = load i32, i32* @DEBUG, align 4
  %44 = load %struct.dentry*, %struct.dentry** %4, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 2
  %46 = load %struct.dentry*, %struct.dentry** %45, align 8
  %47 = bitcast %struct.dentry* %46 to %struct.file*
  %48 = load %struct.dentry*, %struct.dentry** %4, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 2
  %50 = load %struct.dentry*, %struct.dentry** %49, align 8
  %51 = getelementptr inbounds %struct.dentry, %struct.dentry* %50, i32 0, i32 1
  %52 = call i32 @atomic_read(i32* %51)
  %53 = call i32 @DPRINTK(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), %struct.file* %47, i32 %52)
  br label %58

54:                                               ; preds = %14
  %55 = load i32, i32* @ERR, align 4
  %56 = load %struct.file*, %struct.file** %3, align 8
  %57 = call i32 @EPRINTK_LIMIT(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), %struct.file* %56)
  store i32 1, i32* %2, align 4
  br label %70

58:                                               ; preds = %35
  %59 = load %struct.dentry*, %struct.dentry** %4, align 8
  %60 = bitcast %struct.dentry* %59 to %struct.file*
  %61 = call i32 @dput(%struct.file* %60)
  br label %69

62:                                               ; preds = %1
  %63 = load i32, i32* @DEBUG, align 4
  %64 = load %struct.file*, %struct.file** %3, align 8
  %65 = load %struct.file*, %struct.file** %3, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 0
  %67 = call i32 @atomic_long_read(i32* %66)
  %68 = call i32 @DPRINTK(i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), %struct.file* %64, i32 %67)
  br label %69

69:                                               ; preds = %62, %58
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %54
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @atomic_long_dec_and_test(i32*) #1

declare dso_local i32 @eventpoll_release(%struct.file*) #1

declare dso_local i32 @put_empty_filp(%struct.file*) #1

declare dso_local i32 @DPRINTK(i32, i8*, %struct.file*, i32) #1

declare dso_local i32 @atomic_long_read(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @EPRINTK_LIMIT(i32, i8*, %struct.file*) #1

declare dso_local i32 @dput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
