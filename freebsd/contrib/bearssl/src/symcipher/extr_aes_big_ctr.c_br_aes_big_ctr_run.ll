; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_big_ctr.c_br_aes_big_ctr_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_big_ctr.c_br_aes_big_ctr_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_aes_big_ctr_run(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [16 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i8*, i8** %9, align 8
  store i8* %13, i8** %11, align 8
  br label %14

14:                                               ; preds = %42, %5
  %15 = load i64, i64* %10, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @memcpy(i8* %18, i8* %19, i32 12)
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %22 = getelementptr inbounds i8, i8* %21, i64 12
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = call i32 @br_enc32be(i8* %22, i32 %23)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %33 = call i32 @br_aes_big_encrypt(i32 %28, i32 %31, i8* %32)
  %34 = load i64, i64* %10, align 8
  %35 = icmp ule i64 %34, 16
  br i1 %35, label %36, label %42

36:                                               ; preds = %17
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %39 = load i64, i64* %10, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @xorbuf(i8* %37, i8* %38, i32 %40)
  br label %50

42:                                               ; preds = %17
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %45 = call i32 @xorbuf(i8* %43, i8* %44, i32 16)
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 16
  store i8* %47, i8** %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 %48, 16
  store i64 %49, i64* %10, align 8
  br label %14

50:                                               ; preds = %36, %14
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @br_enc32be(i8*, i32) #1

declare dso_local i32 @br_aes_big_encrypt(i32, i32, i8*) #1

declare dso_local i32 @xorbuf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
