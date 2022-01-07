; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_ssl_decrypt.c_br_rsa_ssl_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_ssl_decrypt.c_br_rsa_ssl_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_rsa_ssl_decrypt(i32 (i8*, %struct.TYPE_5__*)* %0, %struct.TYPE_5__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32 (i8*, %struct.TYPE_5__*)*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 (i8*, %struct.TYPE_5__*)* %0, i32 (i8*, %struct.TYPE_5__*)** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp ult i64 %12, 59
  br i1 %13, label %23, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 7
  %20 = ashr i32 %19, 3
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14, %4
  store i32 0, i32* %5, align 4
  br label %73

24:                                               ; preds = %14
  %25 = load i32 (i8*, %struct.TYPE_5__*)*, i32 (i8*, %struct.TYPE_5__*)** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = call i32 %25(i8* %26, %struct.TYPE_5__* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @EQ(i8 zeroext %31, i32 0)
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @EQ(i8 zeroext %37, i32 2)
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  store i64 2, i64* %11, align 8
  br label %41

41:                                               ; preds = %54, %24
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %43, 49
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @NEQ(i8 zeroext %50, i32 0)
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %46
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %11, align 8
  br label %41

57:                                               ; preds = %41
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = sub i64 %59, 49
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @EQ(i8 zeroext %62, i32 0)
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = getelementptr inbounds i8, i8* %69, i64 -48
  %71 = call i32 @memmove(i8* %66, i8* %70, i32 48)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %57, %23
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @EQ(i8 zeroext, i32) #1

declare dso_local i32 @NEQ(i8 zeroext, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
