; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_cachefs.c_cachefs_umount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_cachefs.c_cachefs_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@MFF_ON_AUTOFS = common dso_local global i32 0, align 4
@AMU_UMOUNT_AUTOFS = common dso_local global i32 0, align 4
@mnttab_file_name = common dso_local global i32 0, align 4
@XLOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"running fsck on cache directory \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"fsck -F cachefs %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @cachefs_umount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cachefs_umount(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [128 x i8], align 16
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MFF_ON_AUTOFS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @AMU_UMOUNT_AUTOFS, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @mnttab_file_name, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @UMOUNT_FS(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %18
  store i8* null, i8** %7, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %7, align 8
  %33 = load i32, i32* @XLOG_INFO, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @plog(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @xsnprintf(i8* %36, i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %40 = call i32 @system(i8* %39)
  br label %41

41:                                               ; preds = %28, %18
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @UMOUNT_FS(i32, i32, i32) #1

declare dso_local i32 @plog(i32, i8*, i8*) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @system(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
