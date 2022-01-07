; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_end_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_end_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@last_was_action = common dso_local global i64 0, align 8
@plhs = common dso_local global %struct.TYPE_3__** null, align 8
@nrules = common dso_local global i64 0, align 8
@pitem = common dso_local global %struct.TYPE_4__** null, align 8
@nitems = common dso_local global i32 0, align 4
@maxitems = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @end_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_rule() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @last_was_action, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %81, label %4

4:                                                ; preds = %0
  %5 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @plhs, align 8
  %6 = load i64, i64* @nrules, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %5, i64 %6
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %81

12:                                               ; preds = %4
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @pitem, align 8
  %14 = load i32, i32* @nitems, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %13, i64 %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %72

20:                                               ; preds = %12
  %21 = load i32, i32* @nitems, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %36, %20
  %24 = load i32, i32* %1, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @pitem, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i64 %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br label %33

33:                                               ; preds = %26, %23
  %34 = phi i1 [ false, %23 ], [ %32, %26 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %1, align 4
  br label %23

39:                                               ; preds = %33
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @pitem, align 8
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp eq %struct.TYPE_4__* %45, null
  br i1 %46, label %63, label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @pitem, align 8
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @plhs, align 8
  %57 = load i64, i64* @nrules, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %56, i64 %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %55, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %47, %39
  %64 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @plhs, align 8
  %65 = load i64, i64* @nrules, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %64, i64 %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @default_action_warning(i32 %69)
  br label %71

71:                                               ; preds = %63, %47
  br label %80

72:                                               ; preds = %12
  %73 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @plhs, align 8
  %74 = load i64, i64* @nrules, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %73, i64 %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @default_action_warning(i32 %78)
  br label %80

80:                                               ; preds = %72, %71
  br label %81

81:                                               ; preds = %80, %4, %0
  store i64 0, i64* @last_was_action, align 8
  %82 = load i32, i32* @nitems, align 4
  %83 = load i32, i32* @maxitems, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 (...) @expand_items()
  br label %87

87:                                               ; preds = %85, %81
  %88 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @pitem, align 8
  %89 = load i32, i32* @nitems, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %88, i64 %90
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %91, align 8
  %92 = load i32, i32* @nitems, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @nitems, align 4
  %94 = load i64, i64* @nrules, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* @nrules, align 8
  ret void
}

declare dso_local i32 @default_action_warning(i32) #1

declare dso_local i32 @expand_items(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
