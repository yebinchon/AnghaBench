; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_symbol.c_sym_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_symbol.c_sym_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i32, %struct.symbol* }

@symbol_yes = common dso_local global %struct.symbol zeroinitializer, align 8
@symbol_mod = common dso_local global %struct.symbol zeroinitializer, align 8
@symbol_no = common dso_local global %struct.symbol zeroinitializer, align 8
@symbol_hash = common dso_local global %struct.symbol** null, align 8
@SYMBOL_CONST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @sym_find(i8* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.symbol* null, %struct.symbol** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.symbol* null, %struct.symbol** %2, align 8
  br label %78

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %29 [
    i32 121, label %26
    i32 109, label %27
    i32 110, label %28
  ]

26:                                               ; preds = %21
  store %struct.symbol* @symbol_yes, %struct.symbol** %2, align 8
  br label %78

27:                                               ; preds = %21
  store %struct.symbol* @symbol_mod, %struct.symbol** %2, align 8
  br label %78

28:                                               ; preds = %21
  store %struct.symbol* @symbol_no, %struct.symbol** %2, align 8
  br label %78

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %16, %10
  %31 = load i8*, i8** %3, align 8
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %42, %30
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 8
  br label %32

45:                                               ; preds = %32
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 255
  store i32 %47, i32* %6, align 4
  %48 = load %struct.symbol**, %struct.symbol*** @symbol_hash, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.symbol*, %struct.symbol** %48, i64 %50
  %52 = load %struct.symbol*, %struct.symbol** %51, align 8
  store %struct.symbol* %52, %struct.symbol** %4, align 8
  br label %53

53:                                               ; preds = %72, %45
  %54 = load %struct.symbol*, %struct.symbol** %4, align 8
  %55 = icmp ne %struct.symbol* %54, null
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = load %struct.symbol*, %struct.symbol** %4, align 8
  %58 = getelementptr inbounds %struct.symbol, %struct.symbol* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @strcmp(i32 %59, i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %56
  %64 = load %struct.symbol*, %struct.symbol** %4, align 8
  %65 = getelementptr inbounds %struct.symbol, %struct.symbol* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SYMBOL_CONST, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  br label %76

71:                                               ; preds = %63, %56
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.symbol*, %struct.symbol** %4, align 8
  %74 = getelementptr inbounds %struct.symbol, %struct.symbol* %73, i32 0, i32 2
  %75 = load %struct.symbol*, %struct.symbol** %74, align 8
  store %struct.symbol* %75, %struct.symbol** %4, align 8
  br label %53

76:                                               ; preds = %70, %53
  %77 = load %struct.symbol*, %struct.symbol** %4, align 8
  store %struct.symbol* %77, %struct.symbol** %2, align 8
  br label %78

78:                                               ; preds = %76, %28, %27, %26, %9
  %79 = load %struct.symbol*, %struct.symbol** %2, align 8
  ret %struct.symbol* %79
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
