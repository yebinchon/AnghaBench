; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/samples/install/extr_setup.c_extract_packages.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/samples/install/extr_setup.c_extract_packages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"mkdir -p /install/var/installed/packages %s\00", align 1
@null = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [127 x i8] c"cd /install; for i in /source%s/*.tgz; do tar xzplvvkf $i >> var/installed/packages/base 2>>var/installed/packages/ERROR; done\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"/install/etc/fstab\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Cannot write /etc/fstab\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%s / ext2 defaults 1 1\0A\00", align 1
@install_partition = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"none /proc proc defaults 0 2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @extract_packages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_packages(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** @null, align 8
  %5 = call i64 @my_system(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %26

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @my_system(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %26

13:                                               ; preds = %8
  %14 = call i32* @fopen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %14, i32** %3, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @dialog_msgbox(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 12, i32 40, i32 1)
  br label %26

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = load i8*, i8** @install_partition, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @fclose(i32* %24)
  br label %26

26:                                               ; preds = %18, %16, %12, %7
  ret void
}

declare dso_local i64 @my_system(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @dialog_msgbox(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
