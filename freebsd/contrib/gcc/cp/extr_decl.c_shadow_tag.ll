; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_shadow_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_shadow_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@NULL_TREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"attribute ignored in declaration of %q+#T\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"attribute for %q+#T must follow the %qs keyword\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shadow_tag(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = call i32 @check_tag_decl(%struct.TYPE_5__* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @NULL_TREE, align 4
  store i32 %11, i32* %2, align 4
  br label %50

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32, i8*, i32, ...) @warning(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @class_key_or_enum_as_string(i32 %21)
  %23 = call i32 (i32, i8*, i32, ...) @warning(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %17, %12
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @maybe_process_partial_specialization(i32 %25)
  %27 = load i64, i64* @error_mark_node, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @NULL_TREE, align 4
  store i32 %30, i32* %2, align 4
  br label %50

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @ANON_AGGR_TYPE_P(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @fixup_anonymous_aggr(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @TYPE_FIELDS(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = load i32, i32* @NORMAL, align 4
  %44 = call i32 @grokdeclarator(i32* null, %struct.TYPE_5__* %42, i32 %43, i32 0, i32* null)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @finish_anon_union(i32 %45)
  br label %47

47:                                               ; preds = %41, %35
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %29, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @check_tag_decl(%struct.TYPE_5__*) #1

declare dso_local i32 @warning(i32, i8*, i32, ...) #1

declare dso_local i32 @class_key_or_enum_as_string(i32) #1

declare dso_local i64 @maybe_process_partial_specialization(i32) #1

declare dso_local i64 @ANON_AGGR_TYPE_P(i32) #1

declare dso_local i32 @fixup_anonymous_aggr(i32) #1

declare dso_local i64 @TYPE_FIELDS(i32) #1

declare dso_local i32 @grokdeclarator(i32*, %struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @finish_anon_union(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
