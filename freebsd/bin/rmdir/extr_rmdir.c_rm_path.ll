; ModuleID = '/home/carl/AnghaBench/freebsd/bin/rmdir/extr_rmdir.c_rm_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/rmdir/extr_rmdir.c_rm_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@vflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rm_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm_path(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @strlen(i8* %6)
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %5, i64 %8
  store i8* %9, i8** %4, align 8
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 -1
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ugt i8* %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 47
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ false, %10 ], [ %19, %15 ]
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %10

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %64, %23
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* @strrchr(i8* %27, i8 signext 47)
  store i8* %28, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = icmp uge i8* %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 47
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  br label %31

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %65

51:                                               ; preds = %44
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @rmdir(i8* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %56)
  store i32 1, i32* %2, align 4
  br label %66

58:                                               ; preds = %51
  %59 = load i64, i64* @vflag, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %26

65:                                               ; preds = %50, %26
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %55
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @rmdir(i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
