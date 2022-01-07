; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_make_ia64_opcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_make_ia64_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32, i32, i32 }
%struct.ia64_opcode = type { i32, i32*, i32, i32*, i32, i32, i32, i32, i32 }

@main_table = common dso_local global %struct.TYPE_2__* null, align 8
@op_dependencies = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ia64_opcode* (i32, i8*, i32, i32)* @make_ia64_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ia64_opcode* @make_ia64_opcode(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ia64_opcode*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i64 @xmalloc(i32 56)
  %11 = inttoptr i64 %10 to %struct.ia64_opcode*
  store %struct.ia64_opcode* %11, %struct.ia64_opcode** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @xstrdup(i8* %12)
  %14 = load %struct.ia64_opcode*, %struct.ia64_opcode** %9, align 8
  %15 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @main_table, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ia64_opcode*, %struct.ia64_opcode** %9, align 8
  %23 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @main_table, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ia64_opcode*, %struct.ia64_opcode** %9, align 8
  %31 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ia64_opcode*, %struct.ia64_opcode** %9, align 8
  %34 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @main_table, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ia64_opcode*, %struct.ia64_opcode** %9, align 8
  %42 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @main_table, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ia64_opcode*, %struct.ia64_opcode** %9, align 8
  %52 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @main_table, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ia64_opcode*, %struct.ia64_opcode** %9, align 8
  %64 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %62, i32* %66, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @main_table, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ia64_opcode*, %struct.ia64_opcode** %9, align 8
  %76 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 %74, i32* %78, align 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @main_table, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ia64_opcode*, %struct.ia64_opcode** %9, align 8
  %88 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  store i32 %86, i32* %90, align 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @main_table, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ia64_opcode*, %struct.ia64_opcode** %9, align 8
  %100 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  store i32 %98, i32* %102, align 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @main_table, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ia64_opcode*, %struct.ia64_opcode** %9, align 8
  %110 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.ia64_opcode*, %struct.ia64_opcode** %9, align 8
  %113 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i32*, i32** @op_dependencies, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load %struct.ia64_opcode*, %struct.ia64_opcode** %9, align 8
  %119 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %118, i32 0, i32 1
  store i32* %117, i32** %119, align 8
  %120 = load %struct.ia64_opcode*, %struct.ia64_opcode** %9, align 8
  ret %struct.ia64_opcode* %120
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
