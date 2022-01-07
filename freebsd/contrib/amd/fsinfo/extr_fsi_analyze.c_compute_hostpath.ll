; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_analyze.c_compute_hostpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_analyze.c_compute_hostpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@hostname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"hostpath of '%s' is '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @compute_hostpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @compute_hostpath(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @MAXPATHLEN, align 4
  %8 = call i8* @xmalloc(i32 %7)
  store i8* %8, i8** %3, align 8
  %9 = load i32, i32* @MAXPATHLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = call i32 @xstrlcpy(i8* %13, i8* %14, i32 %15)
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @hostname, align 4
  %19 = call i32 @domain_strip(i8* %17, i32 %18)
  %20 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %20, align 16
  br label %21

21:                                               ; preds = %39, %1
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @strrchr(i8* %22, i8 signext 46)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = trunc i64 %10 to i32
  %31 = call i32 @xstrlcat(i8* %12, i8* %29, i32 %30)
  %32 = trunc i64 %10 to i32
  %33 = call i32 @xstrlcat(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %38

34:                                               ; preds = %21
  %35 = load i8*, i8** %3, align 8
  %36 = trunc i64 %10 to i32
  %37 = call i32 @xstrlcat(i8* %12, i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %26
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %4, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %21, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 @fsi_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %12)
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* @MAXPATHLEN, align 4
  %47 = call i32 @xstrlcpy(i8* %45, i8* %12, i32 %46)
  %48 = load i8*, i8** %3, align 8
  %49 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i8* %48
}

declare dso_local i8* @xmalloc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @xstrlcpy(i8*, i8*, i32) #1

declare dso_local i32 @domain_strip(i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @xstrlcat(i8*, i8*, i32) #1

declare dso_local i32 @fsi_log(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
