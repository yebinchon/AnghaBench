; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_build_one_frag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_build_one_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.score_it = type { i32, i32, i32, i32, i32 }

@g_opt = common dso_local global i32 0, align 4
@frag_now = common dso_local global %struct.TYPE_5__* null, align 8
@rs_machine_dependent = common dso_local global i32 0, align 4
@RELAX_PAD_BYTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.score_it*)* @build_one_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_one_frag(%struct.score_it* byval(%struct.score_it) align 8 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @g_opt, align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = call i64 (...) @frag_now_fix()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @frag_now, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @frag_now, align 8
  %16 = call i32 @frag_wane(%struct.TYPE_5__* %15)
  br label %17

17:                                               ; preds = %14, %8
  %18 = call i32 @frag_new(i32 0)
  br label %19

19:                                               ; preds = %17, %1
  %20 = call i32 @frag_grow(i32 20)
  %21 = getelementptr inbounds %struct.score_it, %struct.score_it* %0, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @frag_more(i32 %22)
  store i8* %23, i8** %2, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds %struct.score_it, %struct.score_it* %0, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.score_it, %struct.score_it* %0, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @md_number_to_chars(i8* %24, i32 %26, i32 %28)
  %30 = getelementptr inbounds %struct.score_it, %struct.score_it* %0, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %19
  %39 = getelementptr inbounds %struct.score_it, %struct.score_it* %0, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  br label %42

41:                                               ; preds = %19
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ %40, %38 ], [ 0, %41 ]
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @rs_machine_dependent, align 4
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @RELAX_PAD_BYTE, align 8
  %48 = add nsw i64 %46, %47
  %49 = getelementptr inbounds %struct.score_it, %struct.score_it* %0, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.score_it, %struct.score_it* %0, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.score_it, %struct.score_it* %0, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @RELAX_ENCODE(i32 %50, i32 %52, i32 %54, i32 0, i32 0, i32 %55)
  %57 = call i8* @frag_var(i32 %44, i64 %48, i32 0, i32 %56, i32* null, i32 0, i32* null)
  store i8* %57, i8** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %42
  %61 = load i8*, i8** %2, align 8
  %62 = getelementptr inbounds %struct.score_it, %struct.score_it* %0, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @md_number_to_chars(i8* %61, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %42
  ret void
}

declare dso_local i64 @frag_now_fix(...) #1

declare dso_local i32 @frag_wane(%struct.TYPE_5__*) #1

declare dso_local i32 @frag_new(i32) #1

declare dso_local i32 @frag_grow(i32) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

declare dso_local i8* @frag_var(i32, i64, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @RELAX_ENCODE(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
