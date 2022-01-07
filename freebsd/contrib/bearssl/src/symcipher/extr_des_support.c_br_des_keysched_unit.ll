; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_des_support.c_br_des_keysched_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_des_support.c_br_des_keysched_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_des_keysched_unit(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @br_dec32be(i8* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 4
  %14 = call i32 @br_dec32be(i8* %13)
  store i32 %14, i32* %6, align 4
  %15 = call i32 @br_des_do_IP(i32* %5, i32* %6)
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, -16777216
  %18 = ashr i32 %17, 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, -16777216
  %21 = ashr i32 %20, 12
  %22 = or i32 %18, %21
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 16711680
  %25 = ashr i32 %24, 12
  %26 = or i32 %22, %25
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 16711680
  %29 = ashr i32 %28, 20
  %30 = or i32 %26, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 255
  %33 = shl i32 %32, 20
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 65280
  %36 = shl i32 %35, 4
  %37 = or i32 %33, %36
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 65280
  %40 = ashr i32 %39, 4
  %41 = or i32 %37, %40
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 983040
  %44 = ashr i32 %43, 16
  %45 = or i32 %41, %44
  store i32 %45, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %95, %2
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 16
  br i1 %48, label %49, label %98

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %51, 33027
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 %55, 1
  %57 = load i32, i32* %7, align 4
  %58 = ashr i32 %57, 27
  %59 = or i32 %56, %58
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 %60, 1
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 27
  %64 = or i32 %61, %63
  store i32 %64, i32* %8, align 4
  br label %76

65:                                               ; preds = %49
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %66, 2
  %68 = load i32, i32* %7, align 4
  %69 = ashr i32 %68, 26
  %70 = or i32 %67, %69
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 %71, 2
  %73 = load i32, i32* %8, align 4
  %74 = ashr i32 %73, 26
  %75 = or i32 %72, %74
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %65, %54
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 268435455
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 268435455
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* %9, align 4
  %84 = shl i32 %83, 1
  %85 = add nsw i32 %84, 0
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  store i32 %81, i32* %87, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* %9, align 4
  %91 = shl i32 %90, 1
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  store i32 %88, i32* %94, align 4
  br label %95

95:                                               ; preds = %76
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %46

98:                                               ; preds = %46
  ret void
}

declare dso_local i32 @br_dec32be(i8*) #1

declare dso_local i32 @br_des_do_IP(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
