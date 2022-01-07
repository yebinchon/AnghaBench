; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_lru.c_find_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_lru.c_find_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@ADDR_NULL = common dso_local global i64 0, align 8
@SESSION_ID_OFF = common dso_local global i64 0, align 8
@SESSION_ID_LEN = common dso_local global i32 0, align 4
@TREE_LEFT_OFF = common dso_local global i64 0, align 8
@TREE_RIGHT_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i8*, i64*)* @find_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_node(%struct.TYPE_5__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* @ADDR_NULL, align 8
  store i64 %14, i64* %9, align 8
  br label %15

15:                                               ; preds = %58, %3
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @ADDR_NULL, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %59

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64, i64* @SESSION_ID_OFF, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* @SESSION_ID_LEN, align 4
  %29 = call i32 @memcmp(i8* %20, i64 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %19
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @TREE_LEFT_OFF, align 8
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* %9, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @get_left(%struct.TYPE_5__* %36, i64 %37)
  store i64 %38, i64* %8, align 8
  br label %58

39:                                               ; preds = %19
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i64*, i64** %7, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, i64* %9, align 8
  %47 = load i64*, i64** %7, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %4, align 8
  br label %67

50:                                               ; preds = %39
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @TREE_RIGHT_OFF, align 8
  %53 = add nsw i64 %51, %52
  store i64 %53, i64* %9, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @get_right(%struct.TYPE_5__* %54, i64 %55)
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %32
  br label %15

59:                                               ; preds = %15
  %60 = load i64*, i64** %7, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  %64 = load i64*, i64** %7, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i64, i64* @ADDR_NULL, align 8
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %65, %48
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i32 @memcmp(i8*, i64, i32) #1

declare dso_local i64 @get_left(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @get_right(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
