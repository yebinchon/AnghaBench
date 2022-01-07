; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_var_reg_delete_and_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_var_reg_delete_and_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_9__*, i32 }

@attrs_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32)* @var_reg_delete_and_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @var_reg_delete_and_set(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__**, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @REG_EXPR(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @REG_OFFSET(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @var_debug_decl(i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @REGNO(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %22
  store %struct.TYPE_9__** %23, %struct.TYPE_9__*** %11, align 8
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %11, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %9, align 8
  br label %26

26:                                               ; preds = %68, %3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %29, label %70

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %10, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %29
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %38, %29
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @delete_variable_part(%struct.TYPE_8__* %45, i32 %48, i64 %51, i64 %54)
  %56 = load i32, i32* @attrs_pool, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = call i32 @pool_free(i32 %56, %struct.TYPE_9__* %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %11, align 8
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %60, align 8
  br label %67

61:                                               ; preds = %38
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  store %struct.TYPE_9__** %66, %struct.TYPE_9__*** %11, align 8
  br label %67

67:                                               ; preds = %61, %44
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %9, align 8
  br label %26

70:                                               ; preds = %26
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @clobber_variable_part(%struct.TYPE_8__* %74, i32 %75, i64 %76, i64 %77)
  br label %79

79:                                               ; preds = %73, %70
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @var_reg_set(%struct.TYPE_8__* %80, i32 %81)
  ret void
}

declare dso_local i64 @REG_EXPR(i32) #1

declare dso_local i64 @REG_OFFSET(i32) #1

declare dso_local i64 @var_debug_decl(i64) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @delete_variable_part(%struct.TYPE_8__*, i32, i64, i64) #1

declare dso_local i32 @pool_free(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @clobber_variable_part(%struct.TYPE_8__*, i32, i64, i64) #1

declare dso_local i32 @var_reg_set(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
