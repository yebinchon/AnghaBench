; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_InstrProfilingFile.c_writeFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_InstrProfilingFile.c_writeFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lprofMergeValueProfData = common dso_local global i32 0, align 4
@VPMergeHook = common dso_local global i32* null, align 8
@free = common dso_local global i32 0, align 4
@FreeHook = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @writeFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeFile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  store i32* @lprofMergeValueProfData, i32** @VPMergeHook, align 8
  %8 = call i64 (...) @doMerging()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i32* @openFileForMerging(i8* %11, i32* %6)
  store i32* %12, i32** %5, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32* @getFileObject(i8* %14)
  store i32* %15, i32** %5, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %44

20:                                               ; preds = %16
  store i32* @free, i32** @FreeHook, align 8
  %21 = call i32 (...) @setupIOBuffer()
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @initFileWriter(i32* %7, i32* %22)
  %24 = call i32 (...) @lprofGetVPDataReader()
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @lprofWriteData(i32* %7, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* (...) @getProfileFile()
  %29 = icmp eq i32* %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @fflush(i32* %31)
  %33 = call i64 (...) @doMerging()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @lprofUnlockFileHandle(i32* %36)
  br label %38

38:                                               ; preds = %35, %30
  br label %42

39:                                               ; preds = %20
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @fclose(i32* %40)
  br label %42

42:                                               ; preds = %39, %38
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @doMerging(...) #1

declare dso_local i32* @openFileForMerging(i8*, i32*) #1

declare dso_local i32* @getFileObject(i8*) #1

declare dso_local i32 @setupIOBuffer(...) #1

declare dso_local i32 @initFileWriter(i32*, i32*) #1

declare dso_local i32 @lprofWriteData(i32*, i32, i32) #1

declare dso_local i32 @lprofGetVPDataReader(...) #1

declare dso_local i32* @getProfileFile(...) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @lprofUnlockFileHandle(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
