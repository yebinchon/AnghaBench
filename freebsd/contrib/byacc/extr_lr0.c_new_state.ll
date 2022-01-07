; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_lr0.c_new_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_lr0.c_new_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, %struct.TYPE_4__*, i8*, i8*, i8* }

@nstates = common dso_local global i64 0, align 8
@MAXYYINT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"too many states\00", align 1
@kernel_base = common dso_local global i8*** null, align 8
@kernel_end = common dso_local global i8*** null, align 8
@last_state = common dso_local global %struct.TYPE_4__* null, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32)* @new_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @new_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i64, i64* @nstates, align 8
  %9 = load i64, i64* @MAXYYINT, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @fatal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i8***, i8**** @kernel_base, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8**, i8*** %14, i64 %16
  %18 = load i8**, i8*** %17, align 8
  store i8** %18, i8*** %5, align 8
  %19 = load i8***, i8**** @kernel_end, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8**, i8*** %19, i64 %21
  %23 = load i8**, i8*** %22, align 8
  store i8** %23, i8*** %7, align 8
  %24 = load i8**, i8*** %7, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = ptrtoint i8** %24 to i64
  %27 = ptrtoint i8** %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sub i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = add i64 40, %34
  %36 = trunc i64 %35 to i32
  %37 = call i64 @allocate(i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %4, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* @nstates, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  store i8** %55, i8*** %6, align 8
  br label %56

56:                                               ; preds = %60, %13
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8**, i8*** %7, align 8
  %59 = icmp ult i8** %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %5, align 8
  %63 = load i8*, i8** %61, align 8
  %64 = load i8**, i8*** %6, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %65, i8*** %6, align 8
  store i8* %63, i8** %64, align 8
  br label %56

66:                                               ; preds = %56
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @last_state, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %69, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** @last_state, align 8
  %71 = load i64, i64* @nstates, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* @nstates, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %73
}

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @allocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
