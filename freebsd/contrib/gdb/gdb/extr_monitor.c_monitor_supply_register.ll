; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_supply_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_supply_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Supplying Register %d %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"monitor_supply_register (%d):  bad value from monitor: %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @monitor_supply_register(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  store i32 0, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %8, align 8
  br label %14

14:                                               ; preds = %63, %49, %2
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %24, label %75

24:                                               ; preds = %22
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 13
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %44

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %40, %34
  %36 = load i8*, i8** %8, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  br label %35

43:                                               ; preds = %35
  br label %75

44:                                               ; preds = %29
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @isspace(i8 signext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  br label %14

52:                                               ; preds = %44
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @isxdigit(i8 signext %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 120
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %75

63:                                               ; preds = %57, %52
  %64 = load i32, i32* %5, align 4
  %65 = shl i32 %64, 4
  store i32 %65, i32* %5, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %8, align 8
  %68 = load i8, i8* %66, align 1
  %69 = sext i8 %68 to i32
  %70 = call i64 @fromhex(i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %5, align 4
  br label %14

75:                                               ; preds = %62, %43, %22
  %76 = load i32, i32* %3, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @monitor_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %76, i8* %77)
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load i8*, i8** %4, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = icmp eq i8* %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* %3, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %86, i8* %87)
  br label %89

89:                                               ; preds = %85, %81, %75
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @store_unsigned_integer(i8* %12, i32 %91, i32 %92)
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @supply_register(i32 %94, i8* %12)
  %96 = load i8*, i8** %8, align 8
  %97 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %97)
  ret i8* %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @isxdigit(i8 signext) #2

declare dso_local i64 @fromhex(i32) #2

declare dso_local i32 @monitor_debug(i8*, i32, i8*) #2

declare dso_local i32 @error(i8*, i32, i8*) #2

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #2

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #2

declare dso_local i32 @supply_register(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
