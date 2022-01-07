; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_symbol.c_sym_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_symbol.c_sym_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i8*, i32, %struct.symbol*, i32 }

@symbol_yes = common dso_local global %struct.symbol zeroinitializer, align 8
@symbol_mod = common dso_local global %struct.symbol zeroinitializer, align 8
@symbol_no = common dso_local global %struct.symbol zeroinitializer, align 8
@symbol_hash = common dso_local global %struct.symbol** null, align 8
@SYMBOL_CONST = common dso_local global i32 0, align 4
@SYMBOL_CHOICE = common dso_local global i32 0, align 4
@S_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @sym_lookup(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %94

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %31 [
    i32 121, label %28
    i32 109, label %29
    i32 110, label %30
  ]

28:                                               ; preds = %23
  store %struct.symbol* @symbol_yes, %struct.symbol** %3, align 8
  br label %123

29:                                               ; preds = %23
  store %struct.symbol* @symbol_mod, %struct.symbol** %3, align 8
  br label %123

30:                                               ; preds = %23
  store %struct.symbol* @symbol_no, %struct.symbol** %3, align 8
  br label %123

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %18, %12
  %33 = load i8*, i8** %4, align 8
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %44, %32
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %7, align 8
  br label %34

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 255
  store i32 %49, i32* %9, align 4
  %50 = load %struct.symbol**, %struct.symbol*** @symbol_hash, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.symbol*, %struct.symbol** %50, i64 %52
  %54 = load %struct.symbol*, %struct.symbol** %53, align 8
  store %struct.symbol* %54, %struct.symbol** %6, align 8
  br label %55

55:                                               ; preds = %87, %47
  %56 = load %struct.symbol*, %struct.symbol** %6, align 8
  %57 = icmp ne %struct.symbol* %56, null
  br i1 %57, label %58, label %91

58:                                               ; preds = %55
  %59 = load %struct.symbol*, %struct.symbol** %6, align 8
  %60 = getelementptr inbounds %struct.symbol, %struct.symbol* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strcmp(i8* %61, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.symbol*, %struct.symbol** %6, align 8
  %70 = getelementptr inbounds %struct.symbol, %struct.symbol* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %86

75:                                               ; preds = %65
  %76 = load %struct.symbol*, %struct.symbol** %6, align 8
  %77 = getelementptr inbounds %struct.symbol, %struct.symbol* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SYMBOL_CONST, align 4
  %80 = load i32, i32* @SYMBOL_CHOICE, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %75, %68
  %85 = load %struct.symbol*, %struct.symbol** %6, align 8
  store %struct.symbol* %85, %struct.symbol** %3, align 8
  br label %123

86:                                               ; preds = %75, %68, %58
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.symbol*, %struct.symbol** %6, align 8
  %89 = getelementptr inbounds %struct.symbol, %struct.symbol* %88, i32 0, i32 2
  %90 = load %struct.symbol*, %struct.symbol** %89, align 8
  store %struct.symbol* %90, %struct.symbol** %6, align 8
  br label %55

91:                                               ; preds = %55
  %92 = load i8*, i8** %4, align 8
  %93 = call i8* @strdup(i8* %92)
  store i8* %93, i8** %8, align 8
  br label %95

94:                                               ; preds = %2
  store i8* null, i8** %8, align 8
  store i32 256, i32* %9, align 4
  br label %95

95:                                               ; preds = %94, %91
  %96 = call %struct.symbol* @malloc(i32 32)
  store %struct.symbol* %96, %struct.symbol** %6, align 8
  %97 = load %struct.symbol*, %struct.symbol** %6, align 8
  %98 = call i32 @memset(%struct.symbol* %97, i32 0, i32 32)
  %99 = load i8*, i8** %8, align 8
  %100 = load %struct.symbol*, %struct.symbol** %6, align 8
  %101 = getelementptr inbounds %struct.symbol, %struct.symbol* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @S_UNKNOWN, align 4
  %103 = load %struct.symbol*, %struct.symbol** %6, align 8
  %104 = getelementptr inbounds %struct.symbol, %struct.symbol* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.symbol*, %struct.symbol** %6, align 8
  %107 = getelementptr inbounds %struct.symbol, %struct.symbol* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.symbol**, %struct.symbol*** @symbol_hash, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.symbol*, %struct.symbol** %110, i64 %112
  %114 = load %struct.symbol*, %struct.symbol** %113, align 8
  %115 = load %struct.symbol*, %struct.symbol** %6, align 8
  %116 = getelementptr inbounds %struct.symbol, %struct.symbol* %115, i32 0, i32 2
  store %struct.symbol* %114, %struct.symbol** %116, align 8
  %117 = load %struct.symbol*, %struct.symbol** %6, align 8
  %118 = load %struct.symbol**, %struct.symbol*** @symbol_hash, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.symbol*, %struct.symbol** %118, i64 %120
  store %struct.symbol* %117, %struct.symbol** %121, align 8
  %122 = load %struct.symbol*, %struct.symbol** %6, align 8
  store %struct.symbol* %122, %struct.symbol** %3, align 8
  br label %123

123:                                              ; preds = %95, %84, %30, %29, %28
  %124 = load %struct.symbol*, %struct.symbol** %3, align 8
  ret %struct.symbol* %124
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.symbol* @malloc(i32) #1

declare dso_local i32 @memset(%struct.symbol*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
