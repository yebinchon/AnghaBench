; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_scert_single_rsa.c_sr_do_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_scert_single_rsa.c_sr_do_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__*, i64 (i8*, i8*, i64, %struct.TYPE_4__*, i8*)* }
%struct.TYPE_4__ = type { i32 }

@HASH_OID = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32**, i32, i8*, i64, i64)* @sr_do_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sr_do_sign(i32** %0, i32 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32** %0, i32*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i32**, i32*** %7, align 8
  %17 = bitcast i32** %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %12, align 8
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @memcpy(i8* %18, i8* %19, i64 %20)
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i8* null, i8** %15, align 8
  br label %42

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = icmp uge i32 %28, 2
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp ule i32 %31, 6
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i8**, i8*** @HASH_OID, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sub i32 %35, 2
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %34, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %15, align 8
  br label %41

40:                                               ; preds = %30, %27
  store i64 0, i64* %6, align 8
  br label %73

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %26
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 7
  %49 = ashr i32 %48, 3
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %14, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  store i64 0, i64* %6, align 8
  br label %73

55:                                               ; preds = %42
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64 (i8*, i8*, i64, %struct.TYPE_4__*, i8*)*, i64 (i8*, i8*, i64, %struct.TYPE_4__*, i8*)** %57, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i64 %58(i8* %59, i8* %60, i64 %61, %struct.TYPE_4__* %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i64, i64* %14, align 8
  br label %71

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i64 [ %69, %68 ], [ 0, %70 ]
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %71, %54, %40
  %74 = load i64, i64* %6, align 8
  ret i64 %74
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
