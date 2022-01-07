; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_resolve_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_resolve_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.value = type { i32 }

@builtin_type_void = common dso_local global %struct.type* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Multiple matches for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_resolve_function(%struct.symbol** %0, %struct.block** %1, i32 %2, %struct.value** %3, i32 %4, i8* %5, %struct.type* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.symbol**, align 8
  %10 = alloca %struct.block**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.value**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.type*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.type*, align 8
  %19 = alloca %struct.type*, align 8
  %20 = alloca %struct.type*, align 8
  store %struct.symbol** %0, %struct.symbol*** %9, align 8
  store %struct.block** %1, %struct.block*** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.value** %3, %struct.value*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store %struct.type* %6, %struct.type** %15, align 8
  %21 = load %struct.type*, %struct.type** %15, align 8
  store %struct.type* %21, %struct.type** %19, align 8
  %22 = load %struct.type*, %struct.type** %15, align 8
  %23 = icmp eq %struct.type* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load %struct.type*, %struct.type** @builtin_type_void, align 8
  store %struct.type* %25, %struct.type** %18, align 8
  br label %27

26:                                               ; preds = %7
  store %struct.type* null, %struct.type** %18, align 8
  br label %27

27:                                               ; preds = %26, %24
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %27, %99
  store i32 0, i32* %16, align 4
  br label %29

29:                                               ; preds = %86, %28
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %89

33:                                               ; preds = %29
  %34 = load %struct.symbol**, %struct.symbol*** %9, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.symbol*, %struct.symbol** %34, i64 %36
  %38 = load %struct.symbol*, %struct.symbol** %37, align 8
  %39 = call i32 @SYMBOL_TYPE(%struct.symbol* %38)
  %40 = call %struct.type* @check_typedef(i32 %39)
  store %struct.type* %40, %struct.type** %20, align 8
  %41 = load %struct.symbol**, %struct.symbol*** %9, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.symbol*, %struct.symbol** %41, i64 %43
  %45 = load %struct.symbol*, %struct.symbol** %44, align 8
  %46 = load %struct.value**, %struct.value*** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i64 @ada_args_match(%struct.symbol* %45, %struct.value** %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %33
  %51 = load %struct.symbol**, %struct.symbol*** %9, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.symbol*, %struct.symbol** %51, i64 %53
  %55 = load %struct.symbol*, %struct.symbol** %54, align 8
  %56 = call i32 @SYMBOL_TYPE(%struct.symbol* %55)
  %57 = load %struct.type*, %struct.type** %19, align 8
  %58 = call i64 @return_match(i32 %56, %struct.type* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %50
  %61 = load %struct.symbol**, %struct.symbol*** %9, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.symbol*, %struct.symbol** %61, i64 %63
  %65 = load %struct.symbol*, %struct.symbol** %64, align 8
  %66 = load %struct.symbol**, %struct.symbol*** %9, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.symbol*, %struct.symbol** %66, i64 %68
  store %struct.symbol* %65, %struct.symbol** %69, align 8
  %70 = load %struct.block**, %struct.block*** %10, align 8
  %71 = icmp ne %struct.block** %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %60
  %73 = load %struct.block**, %struct.block*** %10, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.block*, %struct.block** %73, i64 %75
  %77 = load %struct.block*, %struct.block** %76, align 8
  %78 = load %struct.block**, %struct.block*** %10, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.block*, %struct.block** %78, i64 %80
  store %struct.block* %77, %struct.block** %81, align 8
  br label %82

82:                                               ; preds = %72, %60
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %17, align 4
  br label %85

85:                                               ; preds = %82, %50, %33
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %29

89:                                               ; preds = %29
  %90 = load i32, i32* %17, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load %struct.type*, %struct.type** %19, align 8
  %94 = load %struct.type*, %struct.type** %18, align 8
  %95 = icmp eq %struct.type* %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %89
  br label %100

97:                                               ; preds = %92
  %98 = load %struct.type*, %struct.type** %18, align 8
  store %struct.type* %98, %struct.type** %19, align 8
  br label %99

99:                                               ; preds = %97
  br label %28

100:                                              ; preds = %96
  %101 = load i32, i32* %17, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 -1, i32* %8, align 4
  br label %116

104:                                              ; preds = %100
  %105 = load i32, i32* %17, align 4
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 @printf_filtered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %108)
  %110 = load %struct.symbol**, %struct.symbol*** %9, align 8
  %111 = load %struct.block**, %struct.block*** %10, align 8
  %112 = load i32, i32* %17, align 4
  %113 = call i32 @user_select_syms(%struct.symbol** %110, %struct.block** %111, i32 %112, i32 1)
  store i32 0, i32* %8, align 4
  br label %116

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %115, %107, %103
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i64 @ada_args_match(%struct.symbol*, %struct.value**, i32) #1

declare dso_local i64 @return_match(i32, %struct.type*) #1

declare dso_local i32 @printf_filtered(i8*, i8*) #1

declare dso_local i32 @user_select_syms(%struct.symbol**, %struct.block**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
