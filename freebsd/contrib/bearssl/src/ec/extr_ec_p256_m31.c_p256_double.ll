; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_p256_double.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_p256_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @p256_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p256_double(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [9 x i32], align 16
  %4 = alloca [9 x i32], align 16
  %5 = alloca [9 x i32], align 16
  %6 = alloca [9 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @square_f256(i32* %7, i32* %10)
  %12 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %17 = call i32 @add_f256(i32* %12, i32* %15, i32* %16)
  %18 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %23 = call i32 @sub_f256(i32* %18, i32* %21, i32* %22)
  %24 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %25 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %26 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %27 = call i32 @mul_f256(i32* %24, i32* %25, i32* %26)
  %28 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %29 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %31 = call i32 @add_f256(i32* %28, i32* %29, i32* %30)
  %32 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %33 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %35 = call i32 @add_f256(i32* %32, i32* %33, i32* %34)
  %36 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @square_f256(i32* %36, i32* %39)
  %41 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %42 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %43 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %44 = call i32 @add_f256(i32* %41, i32* %42, i32* %43)
  %45 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %50 = call i32 @mul_f256(i32* %45, i32* %48, i32* %49)
  %51 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %53 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %54 = call i32 @add_f256(i32* %51, i32* %52, i32* %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %59 = call i32 @square_f256(i32* %57, i32* %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %67 = call i32 @sub_f256(i32* %62, i32* %65, i32* %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %75 = call i32 @sub_f256(i32* %70, i32* %73, i32* %74)
  %76 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @mul_f256(i32* %76, i32* %79, i32* %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %88 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %89 = call i32 @add_f256(i32* %86, i32* %87, i32* %88)
  %90 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %91 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @sub_f256(i32* %90, i32* %91, i32* %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %100 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %101 = call i32 @mul_f256(i32* %98, i32* %99, i32* %100)
  %102 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %103 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %104 = call i32 @square_f256(i32* %102, i32* %103)
  %105 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %106 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %107 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %108 = call i32 @add_f256(i32* %105, i32* %106, i32* %107)
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %116 = call i32 @sub_f256(i32* %111, i32* %114, i32* %115)
  ret void
}

declare dso_local i32 @square_f256(i32*, i32*) #1

declare dso_local i32 @add_f256(i32*, i32*, i32*) #1

declare dso_local i32 @sub_f256(i32*, i32*, i32*) #1

declare dso_local i32 @mul_f256(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
