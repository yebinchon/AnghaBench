; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_find_autofs_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_find_autofs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@AUTOFS_SUPER_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.path*, i32 (%struct.path*, i8*)*, i8*)* @find_autofs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_autofs_mount(i8* %0, %struct.path* %1, i32 (%struct.path*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca i32 (%struct.path*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.path, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.path* %1, %struct.path** %7, align 8
  store i32 (%struct.path*, i8*)* %2, i32 (%struct.path*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @kern_path(i8* %12, i32 0, %struct.path* %10)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %5, align 4
  br label %63

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %59, %18
  %22 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AUTOFS_SUPER_MAGIC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %29
  %39 = load i32 (%struct.path*, i8*)*, i32 (%struct.path*, i8*)** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 %39(%struct.path* %10, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = call i32 @path_get(%struct.path* %10)
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load %struct.path*, %struct.path** %7, align 8
  %49 = call i32 @path_put(%struct.path* %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load %struct.path*, %struct.path** %7, align 8
  %52 = bitcast %struct.path* %51 to i8*
  %53 = bitcast %struct.path* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 16, i1 false)
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %50, %38
  br label %55

55:                                               ; preds = %54, %29
  %56 = call i32 @follow_up(%struct.path* %10)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %60

59:                                               ; preds = %55
  br label %21

60:                                               ; preds = %58, %21
  %61 = call i32 @path_put(%struct.path* %10)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %16
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i32 @path_put(%struct.path*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @follow_up(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
