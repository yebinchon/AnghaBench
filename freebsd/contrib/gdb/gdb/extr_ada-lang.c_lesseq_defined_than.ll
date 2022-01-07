; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_lesseq_defined_than.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_lesseq_defined_than.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.type = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"___XV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, %struct.symbol*)* @lesseq_defined_than to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lesseq_defined_than(%struct.symbol* %0, %struct.symbol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.symbol* %0, %struct.symbol** %4, align 8
  store %struct.symbol* %1, %struct.symbol** %5, align 8
  %11 = load %struct.symbol*, %struct.symbol** %4, align 8
  %12 = load %struct.symbol*, %struct.symbol** %5, align 8
  %13 = icmp eq %struct.symbol* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %95

15:                                               ; preds = %2
  %16 = load %struct.symbol*, %struct.symbol** %4, align 8
  %17 = call i64 @SYMBOL_DOMAIN(%struct.symbol* %16)
  %18 = load %struct.symbol*, %struct.symbol** %5, align 8
  %19 = call i64 @SYMBOL_DOMAIN(%struct.symbol* %18)
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.symbol*, %struct.symbol** %4, align 8
  %23 = call i32 @SYMBOL_CLASS(%struct.symbol* %22)
  %24 = load %struct.symbol*, %struct.symbol** %5, align 8
  %25 = call i32 @SYMBOL_CLASS(%struct.symbol* %24)
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %15
  store i32 0, i32* %3, align 4
  br label %95

28:                                               ; preds = %21
  %29 = load %struct.symbol*, %struct.symbol** %4, align 8
  %30 = call i32 @SYMBOL_CLASS(%struct.symbol* %29)
  switch i32 %30, label %94 [
    i32 128, label %31
    i32 129, label %32
    i32 130, label %78
  ]

31:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %95

32:                                               ; preds = %28
  %33 = load %struct.symbol*, %struct.symbol** %4, align 8
  %34 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %33)
  store %struct.type* %34, %struct.type** %6, align 8
  %35 = load %struct.symbol*, %struct.symbol** %5, align 8
  %36 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %35)
  store %struct.type* %36, %struct.type** %7, align 8
  %37 = load %struct.symbol*, %struct.symbol** %4, align 8
  %38 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %37)
  store i8* %38, i8** %8, align 8
  %39 = load %struct.symbol*, %struct.symbol** %5, align 8
  %40 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @strlen(i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.type*, %struct.type** %6, align 8
  %44 = call i32 @TYPE_CODE(%struct.type* %43)
  %45 = load %struct.type*, %struct.type** %7, align 8
  %46 = call i32 @TYPE_CODE(%struct.type* %45)
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %32
  %49 = load %struct.type*, %struct.type** %6, align 8
  %50 = load %struct.type*, %struct.type** %7, align 8
  %51 = call i32 @equiv_types(%struct.type* %49, %struct.type* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @DEPRECATED_STREQN(i8* %59, i8* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = call i32 @DEPRECATED_STREQN(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %64, %58, %53
  %72 = phi i1 [ false, %58 ], [ false, %53 ], [ %70, %64 ]
  br label %73

73:                                               ; preds = %71, %48
  %74 = phi i1 [ true, %48 ], [ %72, %71 ]
  br label %75

75:                                               ; preds = %73, %32
  %76 = phi i1 [ false, %32 ], [ %74, %73 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %3, align 4
  br label %95

78:                                               ; preds = %28
  %79 = load %struct.symbol*, %struct.symbol** %4, align 8
  %80 = call i32 @SYMBOL_VALUE(%struct.symbol* %79)
  %81 = load %struct.symbol*, %struct.symbol** %5, align 8
  %82 = call i32 @SYMBOL_VALUE(%struct.symbol* %81)
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.symbol*, %struct.symbol** %4, align 8
  %86 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %85)
  %87 = load %struct.symbol*, %struct.symbol** %5, align 8
  %88 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %87)
  %89 = call i32 @equiv_types(%struct.type* %86, %struct.type* %88)
  %90 = icmp ne i32 %89, 0
  br label %91

91:                                               ; preds = %84, %78
  %92 = phi i1 [ false, %78 ], [ %90, %84 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %3, align 4
  br label %95

94:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %91, %75, %31, %27, %14
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @SYMBOL_DOMAIN(%struct.symbol*) #1

declare dso_local i32 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local %struct.type* @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @equiv_types(%struct.type*, %struct.type*) #1

declare dso_local i32 @DEPRECATED_STREQN(i8*, i8*, i32) #1

declare dso_local i32 @SYMBOL_VALUE(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
