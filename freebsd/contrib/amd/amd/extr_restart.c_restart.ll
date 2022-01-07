; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_restart.c_restart.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_restart.c_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@mnttab_file_name = common dso_local global i32 0, align 4
@MNTTAB_TYPE_NFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"(pid\00", align 1
@amfs_link_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restart() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @mnttab_file_name, align 4
  %7 = call %struct.TYPE_6__* @read_mtab(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %6)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %1, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %2, align 8
  br label %8

8:                                                ; preds = %46, %0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %3, align 8
  store i32* null, i32** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MNTTAB_TYPE_NFS, align 4
  %19 = call i64 @STREQ(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %11
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @strchr(i32 %24, i8 signext 58)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strstr(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %46

33:                                               ; preds = %28, %21
  br label %34

34:                                               ; preds = %33, %11
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @ops_search(i32 %37)
  store i32* %38, i32** %4, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32* @amfs_link_ops, i32** %4, align 8
  br label %42

42:                                               ; preds = %41, %34
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @restart_fake_mntfs(%struct.TYPE_7__* %43, i32* %44)
  br label %46

46:                                               ; preds = %42, %32
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %2, align 8
  br label %8

50:                                               ; preds = %8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %52 = call i32 @free_mntlist(%struct.TYPE_6__* %51)
  ret void
}

declare dso_local %struct.TYPE_6__* @read_mtab(i8*, i32) #1

declare dso_local i64 @STREQ(i32, i32) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32* @ops_search(i32) #1

declare dso_local i32 @restart_fake_mntfs(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @free_mntlist(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
