; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_disasm_line__new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_disasm_line__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disasm_line = type { i32, %struct.disasm_line*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.disasm_line* (i32, i8*, i64)* @disasm_line__new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.disasm_line* @disasm_line__new(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.disasm_line*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.disasm_line*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = add i64 24, %9
  %11 = trunc i64 %10 to i32
  %12 = call %struct.disasm_line* @zalloc(i32 %11)
  store %struct.disasm_line* %12, %struct.disasm_line** %8, align 8
  %13 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %14 = icmp ne %struct.disasm_line* %13, null
  br i1 %14, label %15, label %47

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %18 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call %struct.disasm_line* @strdup(i8* %19)
  %21 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %22 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %21, i32 0, i32 1
  store %struct.disasm_line* %20, %struct.disasm_line** %22, align 8
  %23 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %24 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %23, i32 0, i32 1
  %25 = load %struct.disasm_line*, %struct.disasm_line** %24, align 8
  %26 = icmp eq %struct.disasm_line* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %54

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %33 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %32, i32 0, i32 1
  %34 = load %struct.disasm_line*, %struct.disasm_line** %33, align 8
  %35 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %36 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %35, i32 0, i32 3
  %37 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %38 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i64 @disasm_line__parse(%struct.disasm_line* %34, i32* %36, i32* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %49

43:                                               ; preds = %31
  %44 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %45 = call i32 @disasm_line__init_ins(%struct.disasm_line* %44)
  br label %46

46:                                               ; preds = %43, %28
  br label %47

47:                                               ; preds = %46, %3
  %48 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  store %struct.disasm_line* %48, %struct.disasm_line** %4, align 8
  br label %57

49:                                               ; preds = %42
  %50 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %51 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %50, i32 0, i32 1
  %52 = load %struct.disasm_line*, %struct.disasm_line** %51, align 8
  %53 = call i32 @free(%struct.disasm_line* %52)
  br label %54

54:                                               ; preds = %49, %27
  %55 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %56 = call i32 @free(%struct.disasm_line* %55)
  store %struct.disasm_line* null, %struct.disasm_line** %4, align 8
  br label %57

57:                                               ; preds = %54, %47
  %58 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  ret %struct.disasm_line* %58
}

declare dso_local %struct.disasm_line* @zalloc(i32) #1

declare dso_local %struct.disasm_line* @strdup(i8*) #1

declare dso_local i64 @disasm_line__parse(%struct.disasm_line*, i32*, i32*) #1

declare dso_local i32 @disasm_line__init_ins(%struct.disasm_line*) #1

declare dso_local i32 @free(%struct.disasm_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
