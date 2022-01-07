; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-ppoutput.c_preprocess_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-ppoutput.c_preprocess_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64, i64 }

@flag_no_output = common dso_local global i64 0, align 8
@flag_dump_macros = common dso_local global i8 0, align 1
@dump_macro = common dso_local global i32 0, align 4
@print = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preprocess_file(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %3 = load i64, i64* @flag_no_output, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %13, %5
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = call i32 @cpp_scan_nooutput(%struct.TYPE_13__* %14)
  br label %6

16:                                               ; preds = %6
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = call i32 @cpp_scan_nooutput(%struct.TYPE_13__* %17)
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = call %struct.TYPE_15__* @cpp_get_options(%struct.TYPE_13__* %20)
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = call i32 @scan_translation_unit_trad(%struct.TYPE_13__* %26)
  br label %47

28:                                               ; preds = %19
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = call %struct.TYPE_15__* @cpp_get_options(%struct.TYPE_13__* %29)
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %36 = call %struct.TYPE_15__* @cpp_get_options(%struct.TYPE_13__* %35)
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %42 = call i32 @scan_translation_unit_directives_only(%struct.TYPE_13__* %41)
  br label %46

43:                                               ; preds = %34, %28
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = call i32 @scan_translation_unit(%struct.TYPE_13__* %44)
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %25
  br label %48

48:                                               ; preds = %47, %16
  %49 = load i8, i8* @flag_dump_macros, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 77
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = load i32, i32* @dump_macro, align 4
  %55 = call i32 @cpp_forall_identifiers(%struct.TYPE_13__* %53, i32 %54, i32* null)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @print, i32 0, i32 1), align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @print, i32 0, i32 0), align 8
  %61 = call i32 @putc(i8 signext 10, i32 %60)
  br label %62

62:                                               ; preds = %59, %56
  ret void
}

declare dso_local i32 @cpp_scan_nooutput(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_15__* @cpp_get_options(%struct.TYPE_13__*) #1

declare dso_local i32 @scan_translation_unit_trad(%struct.TYPE_13__*) #1

declare dso_local i32 @scan_translation_unit_directives_only(%struct.TYPE_13__*) #1

declare dso_local i32 @scan_translation_unit(%struct.TYPE_13__*) #1

declare dso_local i32 @cpp_forall_identifiers(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
