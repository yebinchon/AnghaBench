; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsctl.c_write_maxblksize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsctl.c_write_maxblksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.file = type { i32 }

@NFSSVC_MAXBLKSIZE = common dso_local global i32 0, align 4
@nfsd_mutex = common dso_local global i32 0, align 4
@nfsd_serv = common dso_local global %struct.TYPE_2__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@nfsd_max_blksize = common dso_local global i32 0, align 4
@SIMPLE_TRANSACTION_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64)* @write_maxblksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_maxblksize(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %3
  %15 = call i32 @get_int(i8** %8, i32* %9)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %53

20:                                               ; preds = %14
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 1024
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1024, i32* %9, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @NFSSVC_MAXBLKSIZE, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @NFSSVC_MAXBLKSIZE, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, -1024
  store i32 %32, i32* %9, align 4
  %33 = call i32 @mutex_lock(i32* @nfsd_mutex)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd_serv, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd_serv, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = call i32 @mutex_unlock(i32* @nfsd_mutex)
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %53

45:                                               ; preds = %36, %30
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* @nfsd_max_blksize, align 4
  %47 = call i32 @mutex_unlock(i32* @nfsd_mutex)
  br label %48

48:                                               ; preds = %45, %3
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* @SIMPLE_TRANSACTION_LIMIT, align 4
  %51 = load i32, i32* @nfsd_max_blksize, align 4
  %52 = call i32 @scnprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %41, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @get_int(i8**, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
