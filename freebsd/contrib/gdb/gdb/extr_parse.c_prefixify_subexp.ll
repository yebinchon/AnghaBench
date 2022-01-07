; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_prefixify_subexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_prefixify_subexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expression*, %struct.expression*, i32, i32)* @prefixify_subexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prefixify_subexp(%struct.expression* %0, %struct.expression* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.expression*, align 8
  %6 = alloca %struct.expression*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.expression* %0, %struct.expression** %5, align 8
  store %struct.expression* %1, %struct.expression** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.expression*, %struct.expression** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @operator_length(%struct.expression* %14, i32 %15, i32* %9, i32* %10)
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load %struct.expression*, %struct.expression** %6, align 8
  %21 = getelementptr inbounds %struct.expression, %struct.expression* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load %struct.expression*, %struct.expression** %5, align 8
  %27 = getelementptr inbounds %struct.expression, %struct.expression* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @EXP_ELEM_TO_BYTES(i32 %32)
  %34 = call i32 @memcpy(i32* %25, i32* %31, i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i64 @alloca(i32 %41)
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %12, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %61, %4
  %47 = load i32, i32* %11, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load %struct.expression*, %struct.expression** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @length_of_subexp(%struct.expression* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %11, align 4
  br label %46

64:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %85, %64
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load %struct.expression*, %struct.expression** %5, align 8
  %79 = load %struct.expression*, %struct.expression** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  call void @prefixify_subexp(%struct.expression* %78, %struct.expression* %79, i32 %80, i32 %81)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %69
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %65

88:                                               ; preds = %65
  ret void
}

declare dso_local i32 @operator_length(%struct.expression*, i32, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @EXP_ELEM_TO_BYTES(i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @length_of_subexp(%struct.expression*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
