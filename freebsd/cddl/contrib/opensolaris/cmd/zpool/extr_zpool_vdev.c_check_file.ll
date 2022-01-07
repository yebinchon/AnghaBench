; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_check_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_check_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@g_zfs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"exported\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"potentially active\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s is reserved as a hot spare for pool %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s is part of %s pool '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64)* @check_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_file(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = call i32 @open(i8* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %75

20:                                               ; preds = %3
  %21 = load i32, i32* @g_zfs, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @zpool_in_use(i32 %21, i32 %22, i32* %12, i8** %8, i64* %13)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %71

25:                                               ; preds = %20
  %26 = load i64, i64* %13, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %71

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %36 [
    i32 131, label %30
    i32 130, label %32
    i32 129, label %34
  ]

30:                                               ; preds = %28
  %31 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** %14, align 8
  br label %38

32:                                               ; preds = %28
  %33 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %33, i8** %14, align 8
  br label %38

34:                                               ; preds = %28
  %35 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i8* %35, i8** %14, align 8
  br label %38

36:                                               ; preds = %28
  %37 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %37, i8** %14, align 8
  br label %38

38:                                               ; preds = %36, %34, %32, %30
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %75

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %46, 131
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 128
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %51, %48, %45
  %55 = load i32, i32* %12, align 4
  switch i32 %55, label %61 [
    i32 128, label %56
  ]

56:                                               ; preds = %54
  %57 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 (i8*, i8*, ...) @vdev_error(i8* %57, i8* %58, i8* %59)
  br label %67

61:                                               ; preds = %54
  %62 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 (i8*, i8*, ...) @vdev_error(i8* %62, i8* %63, i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %61, %56
  store i32 -1, i32* %10, align 4
  br label %68

68:                                               ; preds = %67, %51
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @free(i8* %69)
  br label %71

71:                                               ; preds = %68, %25, %20
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @close(i32 %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %44, %19
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @zpool_in_use(i32, i32, i32*, i8**, i64*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @vdev_error(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
