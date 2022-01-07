; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_pat_rep.c_tty_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_pat_rep.c_tty_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64 }

@PAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"\0AATTENTION: %s interactive file rename operation.\0A\00", align 1
@argv0 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Input new name, or a \22.\22 to keep the old name, \00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"or a \22return\22 to skip this file.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Input > \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Try again, illegal file name: ..\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Try again, file name too long\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Skipping file.\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Processing continues, name unchanged.\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Processing continues, name changed to: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @tty_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_rename(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load i32, i32* @PAXPATHLEN, align 4
  %9 = add nsw i32 %8, 2
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i8*, i8** @argv0, align 8
  %14 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %34, %28, %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = call i32 @ls_tty(%struct.TYPE_4__* %16)
  %18 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %21 = trunc i64 %10 to i32
  %22 = call i64 @tty_read(i8* %12, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %82

25:                                               ; preds = %15
  %26 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %15

30:                                               ; preds = %25
  %31 = call i32 @strlen(i8* %12)
  %32 = load i32, i32* @PAXPATHLEN, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %15

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds i8, i8* %12, i64 0
  %39 = load i8, i8* %38, align 16
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %82

44:                                               ; preds = %37
  %45 = getelementptr inbounds i8, i8* %12, i64 0
  %46 = load i8, i8* %45, align 16
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 46
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, i8* %12, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %82

56:                                               ; preds = %49, %44
  %57 = call i32 (i8*, ...) @tty_prnt(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* %12)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @add_name(i8* %60, i64 %63, i8* %12)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @l_strncpy(i8* %67, i8* %12, i32 7)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %56
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %82

81:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %80, %54, %42, %24
  %83 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tty_prnt(i8*, ...) #2

declare dso_local i32 @ls_tty(%struct.TYPE_4__*) #2

declare dso_local i64 @tty_read(i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @add_name(i8*, i64, i8*) #2

declare dso_local i64 @l_strncpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
