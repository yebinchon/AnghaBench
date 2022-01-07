; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_Suff_SetNull.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_Suff_SetNull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@sufflist = common dso_local global i32 0, align 4
@SuffSuffHasNameP = common dso_local global i32 0, align 4
@suffNull = common dso_local global %struct.TYPE_3__* null, align 8
@SUFF_NULL = common dso_local global i32 0, align 4
@PARSE_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Desired null suffix %s not defined.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Suff_SetNull(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @sufflist, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = load i32, i32* @SuffSuffHasNameP, align 4
  %8 = call i32* @Lst_Find(i32 %5, i8* %6, i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @Lst_Datum(i32* %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %3, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @suffNull, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i32, i32* @SUFF_NULL, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @suffNull, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %17, %11
  %25 = load i32, i32* @SUFF_NULL, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** @suffNull, align 8
  br label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @PARSE_WARNING, align 4
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @Parse_Error(i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %31, %24
  ret void
}

declare dso_local i32* @Lst_Find(i32, i8*, i32) #1

declare dso_local i64 @Lst_Datum(i32*) #1

declare dso_local i32 @Parse_Error(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
