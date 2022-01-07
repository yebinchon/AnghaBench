; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_expr.oxout.tab.c_yyyYoxInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_expr.oxout.tab.c_yyyYoxInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yyyRSitem = type { i32 }
%struct.yyySolvedSAlistCell = type { i32 }

@yyyYoxInit.yyyInitDone = internal global i32 0, align 4
@yyyRSmaxSize = common dso_local global i32 0, align 4
@yyyRS = common dso_local global %struct.yyyRSitem* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"malloc error in ox ready set space allocation\0A\00", align 1
@yyyAfterRS = common dso_local global %struct.yyyRSitem* null, align 8
@yyySSALspaceSize = common dso_local global i64 0, align 8
@yyySSALspace = common dso_local global %struct.yyySolvedSAlistCell* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"malloc error in stack solved list space allocation\0A\00", align 1
@yyyRSTop = common dso_local global %struct.yyyRSitem* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yyyYoxInit() #0 {
  %1 = load i32, i32* @yyyYoxInit.yyyInitDone, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %30

4:                                                ; preds = %0
  %5 = load i32, i32* @yyyRSmaxSize, align 4
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = call i64 @calloc(i64 %7, i64 4)
  %9 = inttoptr i64 %8 to %struct.yyyRSitem*
  store %struct.yyyRSitem* %9, %struct.yyyRSitem** @yyyRS, align 8
  %10 = icmp eq %struct.yyyRSitem* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = call i32 @yyyfatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %4
  %14 = load %struct.yyyRSitem*, %struct.yyyRSitem** @yyyRS, align 8
  %15 = getelementptr inbounds %struct.yyyRSitem, %struct.yyyRSitem* %14, i32 1
  store %struct.yyyRSitem* %15, %struct.yyyRSitem** @yyyRS, align 8
  %16 = load %struct.yyyRSitem*, %struct.yyyRSitem** @yyyRS, align 8
  %17 = load i32, i32* @yyyRSmaxSize, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.yyyRSitem, %struct.yyyRSitem* %16, i64 %18
  store %struct.yyyRSitem* %19, %struct.yyyRSitem** @yyyAfterRS, align 8
  %20 = load i64, i64* @yyySSALspaceSize, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i64 @calloc(i64 %21, i64 4)
  %23 = inttoptr i64 %22 to %struct.yyySolvedSAlistCell*
  store %struct.yyySolvedSAlistCell* %23, %struct.yyySolvedSAlistCell** @yyySSALspace, align 8
  %24 = icmp eq %struct.yyySolvedSAlistCell* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = call i32 @yyyfatal(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %13
  store i32 1, i32* @yyyYoxInit.yyyInitDone, align 4
  %28 = load %struct.yyyRSitem*, %struct.yyyRSitem** @yyyRS, align 8
  %29 = getelementptr inbounds %struct.yyyRSitem, %struct.yyyRSitem* %28, i64 -1
  store %struct.yyyRSitem* %29, %struct.yyyRSitem** @yyyRSTop, align 8
  br label %30

30:                                               ; preds = %27, %3
  ret void
}

declare dso_local i64 @calloc(i64, i64) #1

declare dso_local i32 @yyyfatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
