; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_display_gnu_attribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_display_gnu_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"flag = %d, vendor = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"  Tag_unknown_%d: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%d (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8* (i8*, i32)*)* @display_gnu_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @display_gnu_attribute(i8* %0, i8* (i8*, i32)* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8* (i8*, i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* (i8*, i32)* %1, i8* (i8*, i32)** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @read_uleb128(i8* %10, i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @read_uleb128(i8* %19, i32* %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %26)
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = add nsw i64 %29, 1
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 %30
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  store i8* %33, i8** %3, align 8
  br label %77

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i8* (i8*, i32)*, i8* (i8*, i32)** %5, align 8
  %40 = icmp ne i8* (i8*, i32)* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i8* (i8*, i32)*, i8* (i8*, i32)** %5, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i8* %42(i8* %43, i32 %44)
  store i8* %45, i8** %3, align 8
  br label %77

46:                                               ; preds = %38, %34
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  br label %52

51:                                               ; preds = %46
  store i32 2, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = load i8*, i8** %4, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = add nsw i64 %61, 1
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %62
  store i8* %64, i8** %4, align 8
  br label %75

65:                                               ; preds = %52
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @read_uleb128(i8* %66, i32* %7)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %65, %57
  %76 = load i8*, i8** %4, align 8
  store i8* %76, i8** %3, align 8
  br label %77

77:                                               ; preds = %75, %41, %18
  %78 = load i8*, i8** %3, align 8
  ret i8* %78
}

declare dso_local i32 @read_uleb128(i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
