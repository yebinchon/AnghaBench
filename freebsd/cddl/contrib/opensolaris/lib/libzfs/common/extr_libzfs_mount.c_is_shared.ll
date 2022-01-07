; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_is_shared.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_is_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@SHARED_NOT_SHARED = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SHARED_NFS = common dso_local global i32 0, align 4
@SHARED_SMB = common dso_local global i32 0, align 4
@proto_table = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64)* @is_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_shared(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @SHARED_NOT_SHARED, align 4
  store i32 %22, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %54

23:                                               ; preds = %3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @SEEK_SET, align 4
  %28 = call i32 @fseek(i32* %26, i32 0, i32 %27)
  br label %29

29:                                               ; preds = %51, %39, %23
  %30 = trunc i64 %14 to i32
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32* @fgets(i8* %16, i32 %30, i32* %33)
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = call i8* @strchr(i8* %16, i8 signext 9)
  store i8* %37, i8** %10, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %29

40:                                               ; preds = %36
  %41 = load i8*, i8** %10, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @strcmp(i8* %16, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i64, i64* %7, align 8
  %47 = icmp eq i64 %46, 129
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @SHARED_NFS, align 4
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %54

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %40
  br label %29

52:                                               ; preds = %29
  %53 = load i32, i32* @SHARED_NOT_SHARED, align 4
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %54

54:                                               ; preds = %52, %48, %21
  %55 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
