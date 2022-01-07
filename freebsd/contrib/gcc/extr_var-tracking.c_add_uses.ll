; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_add_uses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_add_uses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }

@MO_USE = common dso_local global i8* null, align 8
@MO_USE_NO_VAR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @add_uses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_uses(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = call i64 @REG_P(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @BLOCK_FOR_INSN(i8* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.TYPE_6__* @VTI(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.TYPE_6__* @VTI(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %25
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %6, align 8
  %27 = load i8**, i8*** %3, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @REG_EXPR(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %13
  %32 = load i8**, i8*** %3, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @REG_EXPR(i8* %33)
  %35 = call i64 @track_expr_p(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load i8**, i8*** %3, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @REG_OFFSET(i8* %39)
  %41 = call i64 @offset_valid_for_tracked_p(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i8*, i8** @MO_USE, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  br label %51

47:                                               ; preds = %37, %31, %13
  %48 = load i8*, i8** @MO_USE_NO_VAR, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i8**, i8*** %3, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %108

60:                                               ; preds = %2
  %61 = load i8**, i8*** %3, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @MEM_P(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %60
  %66 = load i8**, i8*** %3, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @MEM_EXPR(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %107

70:                                               ; preds = %65
  %71 = load i8**, i8*** %3, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @MEM_EXPR(i8* %72)
  %74 = call i64 @track_expr_p(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %70
  %77 = load i8**, i8*** %3, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @INT_MEM_OFFSET(i8* %78)
  %80 = call i64 @offset_valid_for_tracked_p(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %76
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 @BLOCK_FOR_INSN(i8* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call %struct.TYPE_6__* @VTI(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call %struct.TYPE_6__* @VTI(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %94
  store %struct.TYPE_5__* %95, %struct.TYPE_5__** %8, align 8
  %96 = load i8*, i8** @MO_USE, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load i8**, i8*** %3, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %82, %76, %70, %65, %60
  br label %108

108:                                              ; preds = %107, %51
  ret i32 0
}

declare dso_local i64 @REG_P(i8*) #1

declare dso_local i32 @BLOCK_FOR_INSN(i8*) #1

declare dso_local %struct.TYPE_6__* @VTI(i32) #1

declare dso_local i64 @REG_EXPR(i8*) #1

declare dso_local i64 @track_expr_p(i64) #1

declare dso_local i64 @offset_valid_for_tracked_p(i32) #1

declare dso_local i32 @REG_OFFSET(i8*) #1

declare dso_local i64 @MEM_P(i8*) #1

declare dso_local i64 @MEM_EXPR(i8*) #1

declare dso_local i32 @INT_MEM_OFFSET(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
