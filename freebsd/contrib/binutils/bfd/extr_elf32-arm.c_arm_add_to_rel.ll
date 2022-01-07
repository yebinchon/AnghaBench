; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_arm_add_to_rel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_arm_add_to_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@R_ARM_THM_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*, i32)* @arm_add_to_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_add_to_rel(i32* %0, i32* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @R_ARM_THM_CALL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @bfd_get_16(i32* %22, i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = call i32 @bfd_get_16(i32* %25, i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 2047
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, 2047
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = shl i32 %33, 12
  %35 = load i32, i32* %13, align 4
  %36 = shl i32 %35, 1
  %37 = or i32 %34, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, 63488
  %45 = load i32, i32* %9, align 4
  %46 = ashr i32 %45, 11
  %47 = and i32 %46, 2047
  %48 = or i32 %44, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %49, 63488
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 2047
  %53 = or i32 %50, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @bfd_put_16(i32* %54, i32 %55, i32* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = call i32 @bfd_put_16(i32* %58, i32 %59, i32* %61)
  br label %129

63:                                               ; preds = %4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @bfd_get_32(i32* %64, i32* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %67, %70
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  %77 = ashr i32 %76, 1
  %78 = and i32 %72, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %63
  store i32 -1, i32* %15, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %15, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %80, %63
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %94 [
    i32 129, label %98
    i32 128, label %98
    i32 131, label %98
    i32 130, label %98
  ]

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %112

98:                                               ; preds = %90, %90, %90, %90
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = shl i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %9, align 4
  %111 = ashr i32 %110, %109
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %98, %94
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %113, %117
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %119, %122
  %124 = or i32 %118, %123
  store i32 %124, i32* %14, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %14, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @bfd_put_32(i32* %125, i32 %126, i32* %127)
  br label %129

129:                                              ; preds = %112, %21
  ret void
}

declare dso_local i32 @bfd_get_16(i32*, i32*) #1

declare dso_local i32 @bfd_put_16(i32*, i32, i32*) #1

declare dso_local i32 @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @bfd_put_32(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
