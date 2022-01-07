; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_mangle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_mangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ada_opname_map = type { i8*, i8* }

@ada_mangle.mangling_buffer = internal global i8* null, align 8
@ada_mangle.mangling_buffer_size = internal global i64 0, align 8
@ada_opname_table = common dso_local global %struct.ada_opname_map* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"invalid Ada operator name: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ada_mangle(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ada_opname_map*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %114

10:                                               ; preds = %1
  %11 = load i8*, i8** @ada_mangle.mangling_buffer, align 8
  %12 = load i64, i64* @ada_mangle.mangling_buffer_size, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = mul nsw i32 2, %14
  %16 = add nsw i32 %15, 10
  %17 = call i32 @GROW_VECT(i8* %11, i64 %12, i32 %16)
  store i32 0, i32* %5, align 4
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %105, %10
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %108

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 46
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i8*, i8** @ada_mangle.mangling_buffer, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8 95, i8* %34, align 1
  %35 = load i8*, i8** @ada_mangle.mangling_buffer, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 95, i8* %38, align 1
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 2
  store i32 %40, i32* %5, align 4
  br label %104

41:                                               ; preds = %24
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 34
  br i1 %45, label %46, label %94

46:                                               ; preds = %41
  %47 = load %struct.ada_opname_map*, %struct.ada_opname_map** @ada_opname_table, align 8
  store %struct.ada_opname_map* %47, %struct.ada_opname_map** %6, align 8
  br label %48

48:                                               ; preds = %68, %46
  %49 = load %struct.ada_opname_map*, %struct.ada_opname_map** %6, align 8
  %50 = getelementptr inbounds %struct.ada_opname_map, %struct.ada_opname_map* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.ada_opname_map*, %struct.ada_opname_map** %6, align 8
  %55 = getelementptr inbounds %struct.ada_opname_map, %struct.ada_opname_map* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load %struct.ada_opname_map*, %struct.ada_opname_map** %6, align 8
  %59 = getelementptr inbounds %struct.ada_opname_map, %struct.ada_opname_map* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = call i32 @DEPRECATED_STREQN(i8* %56, i8* %57, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %53, %48
  %66 = phi i1 [ false, %48 ], [ %64, %53 ]
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %4, align 8
  br label %48

71:                                               ; preds = %65
  %72 = load %struct.ada_opname_map*, %struct.ada_opname_map** %6, align 8
  %73 = getelementptr inbounds %struct.ada_opname_map, %struct.ada_opname_map* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i8*, i8** @ada_mangle.mangling_buffer, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load %struct.ada_opname_map*, %struct.ada_opname_map** %6, align 8
  %85 = getelementptr inbounds %struct.ada_opname_map, %struct.ada_opname_map* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strcpy(i8* %83, i8* %86)
  %88 = load %struct.ada_opname_map*, %struct.ada_opname_map** %6, align 8
  %89 = getelementptr inbounds %struct.ada_opname_map, %struct.ada_opname_map* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %108

94:                                               ; preds = %41
  %95 = load i8*, i8** %4, align 8
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** @ada_mangle.mangling_buffer, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 %96, i8* %100, align 1
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %29
  br label %105

105:                                              ; preds = %104
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  store i8* %107, i8** %4, align 8
  br label %19

108:                                              ; preds = %79, %19
  %109 = load i8*, i8** @ada_mangle.mangling_buffer, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8 0, i8* %112, align 1
  %113 = load i8*, i8** @ada_mangle.mangling_buffer, align 8
  store i8* %113, i8** %2, align 8
  br label %114

114:                                              ; preds = %108, %9
  %115 = load i8*, i8** %2, align 8
  ret i8* %115
}

declare dso_local i32 @GROW_VECT(i8*, i64, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @DEPRECATED_STREQN(i8*, i8*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
