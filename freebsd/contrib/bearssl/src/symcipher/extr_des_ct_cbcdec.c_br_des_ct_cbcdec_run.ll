; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_des_ct_cbcdec.c_br_des_ct_cbcdec_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_des_ct_cbcdec.c_br_des_ct_cbcdec_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_des_ct_cbcdec_run(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [288 x i32], align 16
  %12 = alloca [8 x i8], align 1
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = getelementptr inbounds [288 x i32], [288 x i32]* %11, i64 0, i64 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @br_des_ct_skey_expand(i32* %14, i32 %17, i32 %20)
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %9, align 8
  br label %24

24:                                               ; preds = %58, %4
  %25 = load i64, i64* %8, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %24
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @memcpy(i8* %28, i8* %29, i32 8)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [288 x i32], [288 x i32]* %11, i64 0, i64 0
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @br_des_ct_process_block(i32 %33, i32* %34, i8* %35)
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %55, %27
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = xor i32 %52, %46
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  br label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %37

58:                                               ; preds = %37
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %61 = call i32 @memcpy(i8* %59, i8* %60, i32 8)
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 8
  store i8* %63, i8** %9, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub i64 %64, 8
  store i64 %65, i64* %8, align 8
  br label %24

66:                                               ; preds = %24
  ret void
}

declare dso_local i32 @br_des_ct_skey_expand(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @br_des_ct_process_block(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
