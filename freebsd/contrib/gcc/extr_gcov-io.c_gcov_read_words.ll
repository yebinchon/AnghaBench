; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov-io.c_gcov_read_words.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov-io.c_gcov_read_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32*, i32, i32 }

@gcov_var = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GCOV_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @gcov_read_words to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gcov_read_words(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 0), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 1), align 4
  %8 = sub i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 2), align 8
  %10 = icmp sgt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 1), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 3), align 8
  %19 = add i32 %18, %17
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 3), align 8
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 5), align 8
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 5), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 1), align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %5, align 4
  %26 = mul i32 %25, 4
  %27 = call i32 @memmove(i32* %20, i32* %24, i32 %26)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 1), align 4
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 0), align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 0), align 8
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %29, %30
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 4), align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %16
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 0), align 8
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %35, %36
  %38 = call i32 @gcov_allocate(i32 %37)
  br label %39

39:                                               ; preds = %34, %16
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 4), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 0), align 8
  %42 = sub i32 %40, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 5), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 0), align 8
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 %47, 2
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 7), align 4
  %50 = call i32 @fread(i32* %46, i32 1, i32 %48, i32 %49)
  %51 = ashr i32 %50, 2
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 0), align 8
  %54 = add i32 %53, %52
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 0), align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 0), align 8
  %56 = load i32, i32* %3, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %39
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 0), align 8
  %61 = sub i32 %59, %60
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 6), align 8
  %63 = add i32 %62, %61
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 6), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 0), align 8
  store i32* null, i32** %2, align 8
  br label %74

64:                                               ; preds = %39
  br label %65

65:                                               ; preds = %64, %1
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 5), align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 1), align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32* %69, i32** %4, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 1), align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 1), align 4
  %73 = load i32*, i32** %4, align 8
  store i32* %73, i32** %2, align 8
  br label %74

74:                                               ; preds = %65, %58
  %75 = load i32*, i32** %2, align 8
  ret i32* %75
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @gcov_allocate(i32) #1

declare dso_local i32 @fread(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
