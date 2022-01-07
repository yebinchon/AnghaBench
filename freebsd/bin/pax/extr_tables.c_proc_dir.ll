; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_proc_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_proc_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32 }

@PAXPATHLEN = common dso_local global i32 0, align 4
@dirfd = common dso_local global i32 0, align 4
@dircnt = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@pmode = common dso_local global i64 0, align 8
@patime = common dso_local global i64 0, align 8
@pmtime = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Unable to set mode and times for created directories\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_dir() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_2__, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @PAXPATHLEN, align 4
  %7 = add nsw i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = load i32, i32* @dirfd, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32 1, i32* %5, align 4
  br label %93

14:                                               ; preds = %0
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %81, %14
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @dircnt, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %15
  %20 = load i32, i32* @dirfd, align 4
  %21 = load i32, i32* @SEEK_CUR, align 4
  %22 = call i64 @lseek(i32 %20, i32 -32, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %84

25:                                               ; preds = %19
  %26 = load i32, i32* @dirfd, align 4
  %27 = bitcast %struct.TYPE_2__* %3 to i8*
  %28 = call i32 @read(i32 %26, i8* %27, i32 32)
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 32
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %84

32:                                               ; preds = %25
  %33 = load i32, i32* @dirfd, align 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SEEK_SET, align 4
  %37 = call i64 @lseek(i32 %33, i32 %35, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %84

40:                                               ; preds = %32
  %41 = load i32, i32* @dirfd, align 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @read(i32 %41, i8* %10, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %84

49:                                               ; preds = %40
  %50 = load i32, i32* @dirfd, align 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SEEK_SET, align 4
  %54 = call i64 @lseek(i32 %50, i32 %52, i32 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %84

57:                                               ; preds = %49
  %58 = load i64, i64* @pmode, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60, %57
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @set_pmode(i8* %10, i32 %66)
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i64, i64* @patime, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* @pmtime, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71, %68
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @set_ftime(i8* %10, i32 %76, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %74, %71
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %4, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %4, align 8
  br label %15

84:                                               ; preds = %56, %48, %39, %31, %24, %15
  %85 = load i32, i32* @dirfd, align 4
  %86 = call i32 @close(i32 %85)
  store i32 -1, i32* @dirfd, align 4
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* @dircnt, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %84
  store i32 1, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %13
  %94 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %94)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @set_pmode(i8*, i32) #2

declare dso_local i32 @set_ftime(i8*, i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @paxwarn(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
