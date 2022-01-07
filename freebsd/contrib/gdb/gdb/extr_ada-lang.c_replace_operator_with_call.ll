; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_replace_operator_with_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_replace_operator_with_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.symbol*, %struct.block*, i32, i64 }
%struct.symbol = type { i32 }
%struct.block = type { i32 }

@OP_FUNCALL = common dso_local global i32 0, align 4
@OP_VAR_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expression**, i32, i32, i32, %struct.symbol*, %struct.block*)* @replace_operator_with_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_operator_with_call(%struct.expression** %0, i32 %1, i32 %2, i32 %3, %struct.symbol* %4, %struct.block* %5) #0 {
  %7 = alloca %struct.expression**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.symbol*, align 8
  %12 = alloca %struct.block*, align 8
  %13 = alloca %struct.expression*, align 8
  %14 = alloca %struct.expression*, align 8
  store %struct.expression** %0, %struct.expression*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.symbol* %4, %struct.symbol** %11, align 8
  store %struct.block* %5, %struct.block** %12, align 8
  %15 = load %struct.expression**, %struct.expression*** %7, align 8
  %16 = load %struct.expression*, %struct.expression** %15, align 8
  %17 = getelementptr inbounds %struct.expression, %struct.expression* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 7
  %20 = load i32, i32* %10, align 4
  %21 = sub nsw i32 %19, %20
  %22 = call i64 @EXP_ELEM_TO_BYTES(i32 %21)
  %23 = add i64 24, %22
  %24 = call i64 @xmalloc(i64 %23)
  %25 = inttoptr i64 %24 to %struct.expression*
  store %struct.expression* %25, %struct.expression** %13, align 8
  %26 = load %struct.expression**, %struct.expression*** %7, align 8
  %27 = load %struct.expression*, %struct.expression** %26, align 8
  store %struct.expression* %27, %struct.expression** %14, align 8
  %28 = load %struct.expression*, %struct.expression** %14, align 8
  %29 = getelementptr inbounds %struct.expression, %struct.expression* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 7
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load %struct.expression*, %struct.expression** %13, align 8
  %35 = getelementptr inbounds %struct.expression, %struct.expression* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.expression*, %struct.expression** %14, align 8
  %37 = getelementptr inbounds %struct.expression, %struct.expression* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.expression*, %struct.expression** %13, align 8
  %40 = getelementptr inbounds %struct.expression, %struct.expression* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.expression*, %struct.expression** %13, align 8
  %42 = getelementptr inbounds %struct.expression, %struct.expression* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load %struct.expression*, %struct.expression** %14, align 8
  %45 = getelementptr inbounds %struct.expression, %struct.expression* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @EXP_ELEM_TO_BYTES(i32 %47)
  %49 = call i32 @memcpy(%struct.TYPE_3__* %43, %struct.TYPE_3__* %46, i64 %48)
  %50 = load %struct.expression*, %struct.expression** %13, align 8
  %51 = getelementptr inbounds %struct.expression, %struct.expression* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 7
  %57 = load %struct.expression*, %struct.expression** %14, align 8
  %58 = getelementptr inbounds %struct.expression, %struct.expression* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = load %struct.expression*, %struct.expression** %14, align 8
  %67 = getelementptr inbounds %struct.expression, %struct.expression* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i64 @EXP_ELEM_TO_BYTES(i32 %72)
  %74 = call i32 @memcpy(%struct.TYPE_3__* %56, %struct.TYPE_3__* %65, i64 %73)
  %75 = load i32, i32* @OP_FUNCALL, align 4
  %76 = load %struct.expression*, %struct.expression** %13, align 8
  %77 = getelementptr inbounds %struct.expression, %struct.expression* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32 %75, i32* %83, align 8
  %84 = load %struct.expression*, %struct.expression** %13, align 8
  %85 = getelementptr inbounds %struct.expression, %struct.expression* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i32 %75, i32* %90, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.expression*, %struct.expression** %13, align 8
  %94 = getelementptr inbounds %struct.expression, %struct.expression* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  store i64 %92, i64* %100, align 8
  %101 = load i32, i32* @OP_VAR_VALUE, align 4
  %102 = load %struct.expression*, %struct.expression** %13, align 8
  %103 = getelementptr inbounds %struct.expression, %struct.expression* %102, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 6
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  store i32 %101, i32* %109, align 8
  %110 = load %struct.expression*, %struct.expression** %13, align 8
  %111 = getelementptr inbounds %struct.expression, %struct.expression* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 3
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i32 %101, i32* %117, align 8
  %118 = load %struct.block*, %struct.block** %12, align 8
  %119 = load %struct.expression*, %struct.expression** %13, align 8
  %120 = getelementptr inbounds %struct.expression, %struct.expression* %119, i32 0, i32 1
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store %struct.block* %118, %struct.block** %126, align 8
  %127 = load %struct.symbol*, %struct.symbol** %11, align 8
  %128 = load %struct.expression*, %struct.expression** %13, align 8
  %129 = getelementptr inbounds %struct.expression, %struct.expression* %128, i32 0, i32 1
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 5
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  store %struct.symbol* %127, %struct.symbol** %135, align 8
  %136 = load %struct.expression*, %struct.expression** %13, align 8
  %137 = load %struct.expression**, %struct.expression*** %7, align 8
  store %struct.expression* %136, %struct.expression** %137, align 8
  %138 = load %struct.expression*, %struct.expression** %14, align 8
  %139 = call i32 @xfree(%struct.expression* %138)
  ret void
}

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @EXP_ELEM_TO_BYTES(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.TYPE_3__*, i64) #1

declare dso_local i32 @xfree(%struct.expression*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
