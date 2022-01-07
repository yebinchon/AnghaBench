; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_dig_oid.c_br_digest_OID.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_dig_oid.c_br_digest_OID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@md5_OID = common dso_local global i8* null, align 8
@sha1_OID = common dso_local global i8* null, align 8
@sha224_OID = common dso_local global i8* null, align 8
@sha256_OID = common dso_local global i8* null, align 8
@sha384_OID = common dso_local global i8* null, align 8
@sha512_OID = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @br_digest_OID(i32 %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %25 [
    i32 133, label %7
    i32 132, label %10
    i32 131, label %13
    i32 130, label %16
    i32 129, label %19
    i32 128, label %22
  ]

7:                                                ; preds = %2
  %8 = load i64*, i64** %5, align 8
  store i64 8, i64* %8, align 8
  %9 = load i8*, i8** @md5_OID, align 8
  store i8* %9, i8** %3, align 8
  br label %27

10:                                               ; preds = %2
  %11 = load i64*, i64** %5, align 8
  store i64 8, i64* %11, align 8
  %12 = load i8*, i8** @sha1_OID, align 8
  store i8* %12, i8** %3, align 8
  br label %27

13:                                               ; preds = %2
  %14 = load i64*, i64** %5, align 8
  store i64 8, i64* %14, align 8
  %15 = load i8*, i8** @sha224_OID, align 8
  store i8* %15, i8** %3, align 8
  br label %27

16:                                               ; preds = %2
  %17 = load i64*, i64** %5, align 8
  store i64 8, i64* %17, align 8
  %18 = load i8*, i8** @sha256_OID, align 8
  store i8* %18, i8** %3, align 8
  br label %27

19:                                               ; preds = %2
  %20 = load i64*, i64** %5, align 8
  store i64 8, i64* %20, align 8
  %21 = load i8*, i8** @sha384_OID, align 8
  store i8* %21, i8** %3, align 8
  br label %27

22:                                               ; preds = %2
  %23 = load i64*, i64** %5, align 8
  store i64 8, i64* %23, align 8
  %24 = load i8*, i8** @sha512_OID, align 8
  store i8* %24, i8** %3, align 8
  br label %27

25:                                               ; preds = %2
  %26 = load i64*, i64** %5, align 8
  store i64 0, i64* %26, align 8
  store i8* null, i8** %3, align 8
  br label %27

27:                                               ; preds = %25, %22, %19, %16, %13, %10, %7
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
