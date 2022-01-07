; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_p256_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_p256_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @p256_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p256_add(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca [9 x i32], align 16
  %6 = alloca [9 x i32], align 16
  %7 = alloca [9 x i32], align 16
  %8 = alloca [9 x i32], align 16
  %9 = alloca [9 x i32], align 16
  %10 = alloca [9 x i32], align 16
  %11 = alloca [9 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @square_f256(i32* %14, i32* %17)
  %19 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %24 = call i32 @mul_f256(i32* %19, i32* %22, i32* %23)
  %25 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %30 = call i32 @mul_f256(i32* %25, i32* %28, i32* %29)
  %31 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %36 = call i32 @mul_f256(i32* %31, i32* %34, i32* %35)
  %37 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @square_f256(i32* %37, i32* %40)
  %42 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %47 = call i32 @mul_f256(i32* %42, i32* %45, i32* %46)
  %48 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %53 = call i32 @mul_f256(i32* %48, i32* %51, i32* %52)
  %54 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %59 = call i32 @mul_f256(i32* %54, i32* %57, i32* %58)
  %60 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %61 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %62 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %63 = call i32 @sub_f256(i32* %60, i32* %61, i32* %62)
  %64 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %65 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %66 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %67 = call i32 @sub_f256(i32* %64, i32* %65, i32* %66)
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %69 = call i32 @reduce_final_f256(i32* %68)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %80, %2
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 9
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %70

83:                                               ; preds = %70
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = sub nsw i32 0, %85
  %87 = or i32 %84, %86
  %88 = ashr i32 %87, 31
  store i32 %88, i32* %12, align 4
  %89 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %90 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %91 = call i32 @square_f256(i32* %89, i32* %90)
  %92 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %93 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %94 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %95 = call i32 @mul_f256(i32* %92, i32* %93, i32* %94)
  %96 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %97 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %98 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %99 = call i32 @mul_f256(i32* %96, i32* %97, i32* %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %104 = call i32 @square_f256(i32* %102, i32* %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %112 = call i32 @sub_f256(i32* %107, i32* %110, i32* %111)
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %120 = call i32 @sub_f256(i32* %115, i32* %118, i32* %119)
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %128 = call i32 @sub_f256(i32* %123, i32* %126, i32* %127)
  %129 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %130 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @sub_f256(i32* %129, i32* %130, i32* %133)
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %139 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %140 = call i32 @mul_f256(i32* %137, i32* %138, i32* %139)
  %141 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %142 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %143 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %144 = call i32 @mul_f256(i32* %141, i32* %142, i32* %143)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %152 = call i32 @sub_f256(i32* %147, i32* %150, i32* %151)
  %153 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @mul_f256(i32* %153, i32* %156, i32* %159)
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %165 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %166 = call i32 @mul_f256(i32* %163, i32* %164, i32* %165)
  %167 = load i32, i32* %12, align 4
  ret i32 %167
}

declare dso_local i32 @square_f256(i32*, i32*) #1

declare dso_local i32 @mul_f256(i32*, i32*, i32*) #1

declare dso_local i32 @sub_f256(i32*, i32*, i32*) #1

declare dso_local i32 @reduce_final_f256(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
