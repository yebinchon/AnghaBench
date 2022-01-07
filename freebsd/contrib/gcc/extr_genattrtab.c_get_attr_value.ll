; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_get_attr_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_get_attr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_value = type { i64, i64, %struct.TYPE_4__*, %struct.attr_value*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.attr_desc = type { %struct.attr_value* }

@insn_alternatives = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [54 x i8] c"(eq_attr \22alternatives\22 ...) used in non-insn context\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attr_value* (i32, %struct.attr_desc*, i32)* @get_attr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attr_value* @get_attr_value(i32 %0, %struct.attr_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.attr_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.attr_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.attr_value*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.attr_desc* %1, %struct.attr_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @make_canonical(%struct.attr_desc* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @compares_alternatives_p(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** @insn_alternatives, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16
  %23 = call i32 @fatal(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %30

24:                                               ; preds = %19
  %25 = load i32*, i32** @insn_alternatives, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %24, %22
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %33 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %32, i32 0, i32 0
  %34 = load %struct.attr_value*, %struct.attr_value** %33, align 8
  store %struct.attr_value* %34, %struct.attr_value** %8, align 8
  br label %35

35:                                               ; preds = %68, %31
  %36 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %37 = icmp ne %struct.attr_value* %36, null
  br i1 %37, label %38, label %72

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %41 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @rtx_equal_p(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %45
  %49 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %50 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp eq %struct.TYPE_4__* %51, null
  br i1 %52, label %65, label %53

53:                                               ; preds = %48
  %54 = load i32*, i32** @insn_alternatives, align 8
  %55 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %56 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %54, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53, %48, %45
  %66 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  store %struct.attr_value* %66, %struct.attr_value** %4, align 8
  br label %92

67:                                               ; preds = %53, %38
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %70 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %69, i32 0, i32 3
  %71 = load %struct.attr_value*, %struct.attr_value** %70, align 8
  store %struct.attr_value* %71, %struct.attr_value** %8, align 8
  br label %35

72:                                               ; preds = %35
  %73 = call %struct.attr_value* @oballoc(i32 40)
  store %struct.attr_value* %73, %struct.attr_value** %8, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %76 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %78 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %77, i32 0, i32 0
  %79 = load %struct.attr_value*, %struct.attr_value** %78, align 8
  %80 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %81 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %80, i32 0, i32 3
  store %struct.attr_value* %79, %struct.attr_value** %81, align 8
  %82 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %83 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %84 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %83, i32 0, i32 0
  store %struct.attr_value* %82, %struct.attr_value** %84, align 8
  %85 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %86 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %85, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %86, align 8
  %87 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %88 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  %90 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.attr_value*, %struct.attr_value** %8, align 8
  store %struct.attr_value* %91, %struct.attr_value** %4, align 8
  br label %92

92:                                               ; preds = %72, %65
  %93 = load %struct.attr_value*, %struct.attr_value** %4, align 8
  ret %struct.attr_value* %93
}

declare dso_local i32 @make_canonical(%struct.attr_desc*, i32) #1

declare dso_local i64 @compares_alternatives_p(i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local %struct.attr_value* @oballoc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
