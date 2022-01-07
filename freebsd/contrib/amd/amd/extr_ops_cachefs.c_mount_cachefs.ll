; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_cachefs.c_mount_cachefs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_cachefs.c_mount_cachefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i8*, i8*, i64, i64, i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i32 }

@MOUNT_TYPE_CACHEFS = common dso_local global i32 0, align 4
@MNTTAB_TYPE_CACHEFS = common dso_local global i32 0, align 4
@CFS_WRITE_AROUND = common dso_local global i32 0, align 4
@CFS_ACCESS_BACKFS = common dso_local global i32 0, align 4
@DEF_POP_SIZE = common dso_local global i32 0, align 4
@DEF_FILEGRP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@mnttab_file_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i32)* @mount_cachefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mount_cachefs(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* @MOUNT_TYPE_CACHEFS, align 4
  store i32 %16, i32* %15, align 4
  %17 = bitcast %struct.TYPE_9__* %11 to i8*
  %18 = call i32 @memset(i8* %17, i32 0, i32 80)
  %19 = bitcast %struct.TYPE_8__* %12 to i8*
  %20 = call i32 @memset(i8* %19, i32 0, i32 32)
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* @MNTTAB_TYPE_CACHEFS, align 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = call i32 @compute_mount_flags(%struct.TYPE_8__* %12)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* @CFS_WRITE_AROUND, align 4
  %31 = load i32, i32* @CFS_ACCESS_BACKFS, align 4
  %32 = or i32 %30, %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @DEF_POP_SIZE, align 4
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @DEF_FILEGRP_SIZE, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @memset(i8* %44, i32 0, i32 8)
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @xsnprintf(i8* %47, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %50)
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %14, align 8
  br label %54

54:                                               ; preds = %58, %5
  %55 = load i8*, i8** %14, align 8
  %56 = call i8* @strpbrk(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %56, i8** %14, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i8*, i8** %14, align 8
  store i8 95, i8* %59, align 1
  br label %54

60:                                               ; preds = %54
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  store i8* %61, i8** %62, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  store i8* %63, i8** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 7
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %13, align 4
  %70 = ptrtoint %struct.TYPE_9__* %11 to i32
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @mnttab_file_name, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @mount_fs(%struct.TYPE_8__* %12, i32 %69, i32 %70, i32 0, i32 %71, i32 0, i32* null, i32 %72, i32 %73)
  ret i32 %74
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @compute_mount_flags(%struct.TYPE_8__*) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @mount_fs(%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
