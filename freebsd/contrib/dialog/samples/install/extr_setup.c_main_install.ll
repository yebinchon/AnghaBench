; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/samples/install/extr_setup.c_main_install.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/samples/install/extr_setup.c_main_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Harddisk Install\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Network Install(NFS)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Premounted on /source\00", align 1
@num_linux = common dso_local global i64 0, align 8
@partitions = common dso_local global %struct.TYPE_2__* null, align 8
@install_partition = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"mke2fs %s %s\00", align 1
@null = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"mount -t ext2 %s /install %s\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Choose install medium\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"\\nPlease say from where you want to install.\\n\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"umount /install %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @main_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_install() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [6 x i8*], align 16
  %5 = bitcast [6 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 48, i1 false)
  %6 = bitcast i8* %5 to [6 x i8*]*
  %7 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %7, align 16
  %8 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8** %8, align 8
  %9 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i32 0, i32 3
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i32 0, i32 5
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8** %12, align 8
  %13 = load i64, i64* @num_linux, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  br label %57

16:                                               ; preds = %0
  %17 = call i32 (...) @select_install_partition()
  store i32 %17, i32* %1, align 4
  %18 = icmp sle i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %57

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @partitions, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %3, align 8
  store i8* %26, i8** @install_partition, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* @null, align 4
  %29 = call i64 (i8*, i8*, ...) @my_system(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %57

32:                                               ; preds = %20
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* @null, align 4
  %35 = call i64 (i8*, i8*, ...) @my_system(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %57

38:                                               ; preds = %32
  %39 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %40 = call i32 @dialog_menu(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 12, i32 62, i32 3, i32 3, i8** %39)
  store i32 %40, i32* %2, align 4
  %41 = call i32 (...) @dialog_clear()
  %42 = load i32, i32* %2, align 4
  switch i32 %42, label %50 [
    i32 0, label %43
    i32 1, label %45
    i32 2, label %47
    i32 -2, label %49
    i32 -1, label %49
  ]

43:                                               ; preds = %38
  %44 = call i32 (...) @install_harddisk()
  br label %50

45:                                               ; preds = %38
  %46 = call i32 (...) @install_nfs()
  br label %50

47:                                               ; preds = %38
  %48 = call i32 (...) @install_premounted()
  br label %50

49:                                               ; preds = %38, %38
  br label %50

50:                                               ; preds = %38, %49, %47, %45, %43
  %51 = load i32, i32* @null, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i64 (i8*, i8*, ...) @my_system(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %15, %19, %31, %37, %56, %50
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @select_install_partition(...) #2

declare dso_local i64 @my_system(i8*, i8*, ...) #2

declare dso_local i32 @dialog_menu(i8*, i8*, i32, i32, i32, i32, i8**) #2

declare dso_local i32 @dialog_clear(...) #2

declare dso_local i32 @install_harddisk(...) #2

declare dso_local i32 @install_nfs(...) #2

declare dso_local i32 @install_premounted(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
