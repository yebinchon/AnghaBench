; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_print_main_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_print_main_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.main_entry = type { %struct.main_entry*, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@maintable = common dso_local global %struct.main_entry* null, align 8
@.str = private unnamed_addr constant [54 x i8] c"static const struct ia64_main_table\0Amain_table[] = {\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"  { %d, %d, %d, 0x\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ull, 0x\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"ull, { %d, %d, %d, %d, %d }, 0x%x, %d, },\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_main_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_main_table() #0 {
  %1 = alloca %struct.main_entry*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.main_entry*, %struct.main_entry** @maintable, align 8
  store %struct.main_entry* %3, %struct.main_entry** %1, align 8
  store i32 0, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %8, %0
  %6 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %7 = icmp ne %struct.main_entry* %6, null
  br i1 %7, label %8, label %93

8:                                                ; preds = %5
  %9 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %10 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %15 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %20 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %19, i32 0, i32 3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %18, i32 %23)
  %25 = load i32, i32* @stdout, align 4
  %26 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %27 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @opcode_fprintf_vma(i32 %25, i32 %30)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @stdout, align 4
  %34 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %35 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @opcode_fprintf_vma(i32 %33, i32 %38)
  %40 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %41 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %48 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %55 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %54, i32 0, i32 3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %62 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %61, i32 0, i32 3
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %69 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %68, i32 0, i32 3
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %76 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %75, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %81 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %53, i32 %60, i32 %67, i32 %74, i32 %79, i32 %84)
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %2, align 4
  %88 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %89 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 8
  %90 = load %struct.main_entry*, %struct.main_entry** %1, align 8
  %91 = getelementptr inbounds %struct.main_entry, %struct.main_entry* %90, i32 0, i32 0
  %92 = load %struct.main_entry*, %struct.main_entry** %91, align 8
  store %struct.main_entry* %92, %struct.main_entry** %1, align 8
  br label %5

93:                                               ; preds = %5
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @opcode_fprintf_vma(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
