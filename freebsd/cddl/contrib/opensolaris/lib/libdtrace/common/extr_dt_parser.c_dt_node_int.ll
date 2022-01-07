; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i64, i32 }

@DT_NODE_INT = common dso_local global i32 0, align 4
@yypcb = common dso_local global %struct.TYPE_13__* null, align 8
@yyintdecimal = common dso_local global i32 0, align 4
@yyintsuffix = common dso_local global i8* null, align 8
@DT_TOK_INT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@yyintprefix = common dso_local global i32 0, align 4
@DT_TOK_IPOS = common dso_local global i32 0, align 4
@DT_TOK_INEG = common dso_local global i32 0, align 4
@D_INT_OFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"integer constant 0x%llx cannot be represented in any built-in integral type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @dt_node_int(i64 %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i64 %0, i64* %3, align 8
  %10 = load i32, i32* @DT_NODE_INT, align 4
  %11 = call %struct.TYPE_12__* @dt_node_alloc(i32 %10)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %4, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** @yypcb, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %5, align 8
  %15 = load i32, i32* @yyintdecimal, align 4
  %16 = load i8*, i8** @yyintsuffix, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 117
  %21 = zext i1 %20 to i32
  %22 = or i32 %15, %21
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %24 = load i32, i32* @DT_TOK_INT, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i8*, i8** @yyintsuffix, align 8
  store i8* %30, i8** %8, align 8
  br label %31

31:                                               ; preds = %60, %1
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %9, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %31
  %37 = load i8, i8* %9, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 85
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i8, i8* %9, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 117
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %59

47:                                               ; preds = %40
  %48 = load i8, i8* %9, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 76
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* %9, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 108
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 2
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %51
  br label %59

59:                                               ; preds = %58, %44
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  br label %31

63:                                               ; preds = %31
  br label %64

64:                                               ; preds = %111, %63
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 0
  br i1 %67, label %68, label %115

68:                                               ; preds = %64
  %69 = load i64, i64* %3, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sle i64 %69, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %68
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @B_FALSE, align 4
  %98 = call i32 @dt_node_type_assign(%struct.TYPE_12__* %80, i32 %88, i32 %96, i32 %97)
  %99 = load i32, i32* @yyintprefix, align 4
  switch i32 %99, label %108 [
    i32 43, label %100
    i32 45, label %104
  ]

100:                                              ; preds = %79
  %101 = load i32, i32* @DT_TOK_IPOS, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = call %struct.TYPE_12__* @dt_node_op1(i32 %101, %struct.TYPE_12__* %102)
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** %2, align 8
  br label %120

104:                                              ; preds = %79
  %105 = load i32, i32* @DT_TOK_INEG, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = call %struct.TYPE_12__* @dt_node_op1(i32 %105, %struct.TYPE_12__* %106)
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %2, align 8
  br label %120

108:                                              ; preds = %79
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %109, %struct.TYPE_12__** %2, align 8
  br label %120

110:                                              ; preds = %68
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %64

115:                                              ; preds = %64
  %116 = load i32, i32* @D_INT_OFLOW, align 4
  %117 = load i64, i64* %3, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 @xyerror(i32 %116, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %118)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %120

120:                                              ; preds = %115, %108, %104, %100
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %121
}

declare dso_local %struct.TYPE_12__* @dt_node_alloc(i32) #1

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @dt_node_op1(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @xyerror(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
