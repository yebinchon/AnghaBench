; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_op1.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_op1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32, %struct.TYPE_12__*, i64 }

@DT_NODE_INT = common dso_local global i64 0, align 8
@DT_NF_SIGNED = common dso_local global i32 0, align 4
@NBBY = common dso_local global i64 0, align 8
@DT_TOK_SIZEOF = common dso_local global i32 0, align 4
@DT_NODE_STRING = common dso_local global i64 0, align 8
@DT_NODE_TYPE = common dso_local global i64 0, align 8
@yypcb = common dso_local global %struct.TYPE_13__* null, align 8
@D_SIZEOF_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"cannot apply sizeof to an operand of unknown size\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@DT_TOK_INT = common dso_local global i64 0, align 8
@DT_NODE_OP1 = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @dt_node_op1(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DT_NODE_INT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %63

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %62 [
    i32 130, label %16
    i32 129, label %41
    i32 131, label %43
    i32 128, label %51
  ]

16:                                               ; preds = %14
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 0, %19
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DT_NF_SIGNED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %16
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = call i64 @dt_node_type_size(%struct.TYPE_12__* %30)
  %32 = load i64, i64* @NBBY, align 8
  %33 = mul i64 %31, %32
  %34 = sub i64 64, %33
  %35 = lshr i64 -1, %34
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = and i64 %38, %35
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %29, %16
  br label %41

41:                                               ; preds = %14, %40
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %3, align 8
  br label %131

43:                                               ; preds = %14
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = xor i64 %46, -1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %3, align 8
  br label %131

51:                                               ; preds = %14
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %3, align 8
  br label %131

62:                                               ; preds = %14
  br label %63

63:                                               ; preds = %62, %2
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @DT_TOK_SIZEOF, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %115

67:                                               ; preds = %63
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DT_NODE_STRING, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DT_NODE_TYPE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %73, %67
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** @yypcb, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %7, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = call i64 @dt_node_type_size(%struct.TYPE_12__* %83)
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @D_SIZEOF_TYPE, align 4
  %89 = call i32 @xyerror(i32 %88, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %79
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ctf_lookup_by_name(i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @B_FALSE, align 4
  %104 = call i32 @dt_node_type_assign(%struct.TYPE_12__* %91, i32 %96, i32 %102, i32 %103)
  %105 = load i64, i64* @DT_NODE_INT, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* @DT_TOK_INT, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 4
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %114, %struct.TYPE_12__** %3, align 8
  br label %131

115:                                              ; preds = %73, %63
  %116 = load i32, i32* @DT_NODE_OP1, align 4
  %117 = call %struct.TYPE_12__* @dt_node_alloc(i32 %116)
  store %struct.TYPE_12__* %117, %struct.TYPE_12__** %6, align 8
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @USHRT_MAX, align 4
  %120 = icmp sle i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 4
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 3
  store %struct.TYPE_12__* %127, %struct.TYPE_12__** %129, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %3, align 8
  br label %131

131:                                              ; preds = %115, %90, %51, %43, %41
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %132
}

declare dso_local i64 @dt_node_type_size(%struct.TYPE_12__*) #1

declare dso_local i32 @xyerror(i32, i8*) #1

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @ctf_lookup_by_name(i32, i8*) #1

declare dso_local %struct.TYPE_12__* @dt_node_alloc(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
