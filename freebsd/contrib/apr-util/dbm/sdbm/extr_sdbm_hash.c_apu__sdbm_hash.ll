; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/dbm/sdbm/extr_sdbm_hash.c_apu__sdbm_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/dbm/sdbm/extr_sdbm_hash.c_apu__sdbm_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASHC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdbm_hash(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %87

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, 8
  %12 = sub nsw i32 %11, 1
  %13 = ashr i32 %12, 3
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 7
  switch i32 %15, label %86 [
    i32 0, label %16
    i32 7, label %25
    i32 6, label %33
    i32 5, label %41
    i32 4, label %49
    i32 3, label %57
    i32 2, label %65
    i32 1, label %73
  ]

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %81, %16
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %3, align 8
  %20 = load i8, i8* %18, align 1
  %21 = sext i8 %20 to i64
  %22 = load i64, i64* %5, align 8
  %23 = mul i64 65599, %22
  %24 = add i64 %21, %23
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %9, %17
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  %28 = load i8, i8* %26, align 1
  %29 = sext i8 %28 to i64
  %30 = load i64, i64* %5, align 8
  %31 = mul i64 65599, %30
  %32 = add i64 %29, %31
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %9, %25
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %3, align 8
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i64
  %38 = load i64, i64* %5, align 8
  %39 = mul i64 65599, %38
  %40 = add i64 %37, %39
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %9, %33
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %3, align 8
  %44 = load i8, i8* %42, align 1
  %45 = sext i8 %44 to i64
  %46 = load i64, i64* %5, align 8
  %47 = mul i64 65599, %46
  %48 = add i64 %45, %47
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %9, %41
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %3, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i64
  %54 = load i64, i64* %5, align 8
  %55 = mul i64 65599, %54
  %56 = add i64 %53, %55
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %9, %49
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %3, align 8
  %60 = load i8, i8* %58, align 1
  %61 = sext i8 %60 to i64
  %62 = load i64, i64* %5, align 8
  %63 = mul i64 65599, %62
  %64 = add i64 %61, %63
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %9, %57
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %3, align 8
  %68 = load i8, i8* %66, align 1
  %69 = sext i8 %68 to i64
  %70 = load i64, i64* %5, align 8
  %71 = mul i64 65599, %70
  %72 = add i64 %69, %71
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %9, %65
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %3, align 8
  %76 = load i8, i8* %74, align 1
  %77 = sext i8 %76 to i64
  %78 = load i64, i64* %5, align 8
  %79 = mul i64 65599, %78
  %80 = add i64 %77, %79
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %17, label %85

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85, %9
  br label %87

87:                                               ; preds = %86, %2
  %88 = load i64, i64* %5, align 8
  ret i64 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
