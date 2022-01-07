; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_module.c_resolve_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_module.c_resolve_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_symbol = type { i32 }
%struct.module = type { i32 }

@TAINT_PROPRIETARY_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kernel_symbol* (i32*, i32, i8*, %struct.module*)* @resolve_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kernel_symbol* @resolve_symbol(i32* %0, i32 %1, i8* %2, %struct.module* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.module*, align 8
  %9 = alloca %struct.module*, align 8
  %10 = alloca %struct.kernel_symbol*, align 8
  %11 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.module* %3, %struct.module** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.module*, %struct.module** %8, align 8
  %14 = getelementptr inbounds %struct.module, %struct.module* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TAINT_PROPRIETARY_MODULE, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call %struct.kernel_symbol* @find_symbol(i8* %12, %struct.module** %9, i64** %11, i32 %21, i32 1)
  store %struct.kernel_symbol* %22, %struct.kernel_symbol** %10, align 8
  %23 = load %struct.kernel_symbol*, %struct.kernel_symbol** %10, align 8
  %24 = icmp ne %struct.kernel_symbol* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.module*, %struct.module** %8, align 8
  %30 = load i64*, i64** %11, align 8
  %31 = load %struct.module*, %struct.module** %9, align 8
  %32 = call i32 @check_version(i32* %26, i32 %27, i8* %28, %struct.module* %29, i64* %30, %struct.module* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.module*, %struct.module** %8, align 8
  %36 = load %struct.module*, %struct.module** %9, align 8
  %37 = call i32 @use_module(%struct.module* %35, %struct.module* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %25
  store %struct.kernel_symbol* null, %struct.kernel_symbol** %10, align 8
  br label %40

40:                                               ; preds = %39, %34
  br label %41

41:                                               ; preds = %40, %4
  %42 = load %struct.kernel_symbol*, %struct.kernel_symbol** %10, align 8
  ret %struct.kernel_symbol* %42
}

declare dso_local %struct.kernel_symbol* @find_symbol(i8*, %struct.module**, i64**, i32, i32) #1

declare dso_local i32 @check_version(i32*, i32, i8*, %struct.module*, i64*, %struct.module*) #1

declare dso_local i32 @use_module(%struct.module*, %struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
