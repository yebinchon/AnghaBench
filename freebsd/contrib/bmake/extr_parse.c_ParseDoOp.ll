; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_ParseDoOp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_ParseDoOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_5__*, i32, i32 }

@OP_OPMASK = common dso_local global i32 0, align 4
@PARSE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Inconsistent operator for %s\00", align 1
@OP_DOUBLEDEP = common dso_local global i32 0, align 4
@TARG_NOHASH = common dso_local global i32 0, align 4
@doing_depend = common dso_local global i64 0, align 8
@OP_INVISIBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @ParseDoOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseDoOp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @OP_OPMASK, align 4
  %16 = and i32 %14, %15
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @OP_OPMASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %16, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @OP_NOP(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @OP_NOP(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @PARSE_FATAL, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @Parse_Error(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 1, i32* %3, align 4
  br label %102

39:                                               ; preds = %29, %23, %2
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @OP_DOUBLEDEP, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %95

43:                                               ; preds = %39
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @OP_OPMASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @OP_DOUBLEDEP, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %95

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @OP_OPMASK, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @TARG_NOHASH, align 4
  %64 = call %struct.TYPE_5__* @Targ_FindNode(i32 %62, i32 %63)
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %8, align 8
  %65 = load i64, i64* @doing_depend, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %51
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = call i32 @ParseMark(%struct.TYPE_5__* %68)
  br label %70

70:                                               ; preds = %67, %51
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @OP_INVISIBLE, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = call i32 @Lst_AtEnd(i32 %78, %struct.TYPE_5__* %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %83, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @snprintf(i32 %90, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %101

95:                                               ; preds = %43, %39
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %70
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %33
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @OP_NOP(i32) #1

declare dso_local i32 @Parse_Error(i32, i8*, i32) #1

declare dso_local %struct.TYPE_5__* @Targ_FindNode(i32, i32) #1

declare dso_local i32 @ParseMark(%struct.TYPE_5__*) #1

declare dso_local i32 @Lst_AtEnd(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
