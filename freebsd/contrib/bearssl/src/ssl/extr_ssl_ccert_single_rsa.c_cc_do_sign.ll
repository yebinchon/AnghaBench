; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_ccert_single_rsa.c_cc_do_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_ccert_single_rsa.c_cc_do_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__*, i64 (i8*, i8*, i64, %struct.TYPE_4__*, i8*)* }
%struct.TYPE_4__ = type { i32 }

@HASH_OID = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32**, i32, i64, i8*, i64)* @cc_do_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cc_do_sign(i32** %0, i32 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32** %0, i32*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i32**, i32*** %7, align 8
  %17 = bitcast i32** %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %12, align 8
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %19 = load i8*, i8** %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @memcpy(i8* %18, i8* %19, i64 %20)
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i8* null, i8** %14, align 8
  br label %40

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = icmp sge i32 %26, 2
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp sle i32 %29, 6
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i8**, i8*** @HASH_OID, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %32, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %14, align 8
  br label %39

38:                                               ; preds = %28, %25
  store i64 0, i64* %6, align 8
  br label %71

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %24
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 7
  %47 = ashr i32 %46, 3
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %15, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i64 0, i64* %6, align 8
  br label %71

53:                                               ; preds = %40
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64 (i8*, i8*, i64, %struct.TYPE_4__*, i8*)*, i64 (i8*, i8*, i64, %struct.TYPE_4__*, i8*)** %55, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i64 %56(i8* %57, i8* %58, i64 %59, %struct.TYPE_4__* %62, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i64, i64* %15, align 8
  br label %69

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i64 [ %67, %66 ], [ 0, %68 ]
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %69, %52, %38
  %72 = load i64, i64* %6, align 8
  ret i64 %72
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
