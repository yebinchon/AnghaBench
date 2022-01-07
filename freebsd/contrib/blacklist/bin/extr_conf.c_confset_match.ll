; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_conf.c_confset_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_conf.c_confset_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.confset = type { i64, %struct.conf* }
%struct.conf = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"check:\09\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"found:\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.confset*, %struct.conf*, void (%struct.conf*, %struct.conf*)*)* @confset_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @confset_match(%struct.confset* %0, %struct.conf* %1, void (%struct.conf*, %struct.conf*)* %2) #0 {
  %4 = alloca %struct.confset*, align 8
  %5 = alloca %struct.conf*, align 8
  %6 = alloca void (%struct.conf*, %struct.conf*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.confset* %0, %struct.confset** %4, align 8
  store %struct.conf* %1, %struct.conf** %5, align 8
  store void (%struct.conf*, %struct.conf*)* %2, void (%struct.conf*, %struct.conf*)** %6, align 8
  %10 = load i32, i32* @BUFSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %64, %3
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.confset*, %struct.confset** %4, align 8
  %17 = getelementptr inbounds %struct.confset, %struct.confset* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %67

20:                                               ; preds = %14
  %21 = load i64, i64* @debug, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* @LOG_DEBUG, align 4
  %25 = trunc i64 %11 to i32
  %26 = load %struct.confset*, %struct.confset** %4, align 8
  %27 = getelementptr inbounds %struct.confset, %struct.confset* %26, i32 0, i32 1
  %28 = load %struct.conf*, %struct.conf** %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.conf, %struct.conf* %28, i64 %29
  %31 = call i32 @conf_print(i8* %13, i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.conf* %30)
  %32 = call i32 @lfun(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %23, %20
  %34 = load %struct.conf*, %struct.conf** %5, align 8
  %35 = load %struct.confset*, %struct.confset** %4, align 8
  %36 = getelementptr inbounds %struct.confset, %struct.confset* %35, i32 0, i32 1
  %37 = load %struct.conf*, %struct.conf** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.conf, %struct.conf* %37, i64 %38
  %40 = call i64 @conf_eq(%struct.conf* %34, %struct.conf* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %33
  %43 = load i64, i64* @debug, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* @LOG_DEBUG, align 4
  %47 = trunc i64 %11 to i32
  %48 = load %struct.confset*, %struct.confset** %4, align 8
  %49 = getelementptr inbounds %struct.confset, %struct.confset* %48, i32 0, i32 1
  %50 = load %struct.conf*, %struct.conf** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.conf, %struct.conf* %50, i64 %51
  %53 = call i32 @conf_print(i8* %13, i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.conf* %52)
  %54 = call i32 @lfun(i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %45, %42
  %56 = load void (%struct.conf*, %struct.conf*)*, void (%struct.conf*, %struct.conf*)** %6, align 8
  %57 = load %struct.conf*, %struct.conf** %5, align 8
  %58 = load %struct.confset*, %struct.confset** %4, align 8
  %59 = getelementptr inbounds %struct.confset, %struct.confset* %58, i32 0, i32 1
  %60 = load %struct.conf*, %struct.conf** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.conf, %struct.conf* %60, i64 %61
  call void %56(%struct.conf* %57, %struct.conf* %62)
  br label %67

63:                                               ; preds = %33
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %14

67:                                               ; preds = %55, %14
  %68 = load i64, i64* %9, align 8
  %69 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %69)
  ret i64 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lfun(i32, i8*, i32) #2

declare dso_local i32 @conf_print(i8*, i32, i8*, i8*, %struct.conf*) #2

declare dso_local i64 @conf_eq(%struct.conf*, %struct.conf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
