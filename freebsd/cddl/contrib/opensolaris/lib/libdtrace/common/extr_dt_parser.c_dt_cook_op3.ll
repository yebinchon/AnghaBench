; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_cook_op3.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_cook_op3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_18__*, i32, i32*, %struct.TYPE_18__*, %struct.TYPE_18__* }

@DT_IDFLG_REF = common dso_local global i32 0, align 4
@D_OP_SCALAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"operator ?: expression must be of scalar type\0A\00", align 1
@D_OP_DYN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"operator ?: operands cannot be of dynamic type\0A\00", align 1
@yypcb = common dso_local global %struct.TYPE_19__* null, align 8
@D_OP_INCOMPAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"operator ?: operands must have compatible types\0A\00", align 1
@D_OP_ACT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"action cannot be used in a conditional context\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_18__*, i32)* @dt_cook_op3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @dt_cook_op3(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %12 = load i32, i32* @DT_IDFLG_REF, align 4
  %13 = call i8* @dt_node_cook(%struct.TYPE_18__* %11, i32 %12)
  %14 = bitcast i8* %13 to %struct.TYPE_18__*
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %16, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = load i32, i32* @DT_IDFLG_REF, align 4
  %21 = call i8* @dt_node_cook(%struct.TYPE_18__* %19, i32 %20)
  %22 = bitcast i8* %21 to %struct.TYPE_18__*
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 5
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %24, align 8
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %5, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = load i32, i32* @DT_IDFLG_REF, align 4
  %29 = call i8* @dt_node_cook(%struct.TYPE_18__* %27, i32 %28)
  %30 = bitcast i8* %29 to %struct.TYPE_18__*
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 4
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %32, align 8
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %6, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = call i32 @dt_node_is_scalar(%struct.TYPE_18__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* @D_OP_SCALAR, align 4
  %40 = call i32 @xyerror(i32 %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %2
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %43 = call i64 @dt_node_is_dynamic(%struct.TYPE_18__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = call i64 @dt_node_is_dynamic(%struct.TYPE_18__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %41
  %50 = load i32, i32* @D_OP_DYN, align 4
  %51 = call i32 @xyerror(i32 %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @ctf_type_compat(i32* %55, i32 %58, i32* %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %52
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %7, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %8, align 4
  br label %122

74:                                               ; preds = %52
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %76 = call i64 @dt_node_is_integer(%struct.TYPE_18__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %80 = call i64 @dt_node_is_integer(%struct.TYPE_18__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %85 = call i32 @dt_type_promote(%struct.TYPE_18__* %83, %struct.TYPE_18__* %84, i32** %7, i32* %8)
  br label %121

86:                                               ; preds = %78, %74
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %88 = call i64 @dt_node_is_strcompat(%struct.TYPE_18__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %86
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %92 = call i64 @dt_node_is_strcompat(%struct.TYPE_18__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %90
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %96 = call i64 @dt_node_is_string(%struct.TYPE_18__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %100 = call i64 @dt_node_is_string(%struct.TYPE_18__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %98, %94
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** @yypcb, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32* @DT_STR_CTFP(i32 %105)
  store i32* %106, i32** %7, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** @yypcb, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @DT_STR_TYPE(i32 %109)
  store i32 %110, i32* %8, align 4
  br label %120

111:                                              ; preds = %98, %90, %86
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %114 = call i64 @dt_node_is_ptrcompat(%struct.TYPE_18__* %112, %struct.TYPE_18__* %113, i32** %7, i32* %8)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @D_OP_INCOMPAT, align 4
  %118 = call i32 @xyerror(i32 %117, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %111
  br label %120

120:                                              ; preds = %119, %102
  br label %121

121:                                              ; preds = %120, %82
  br label %122

122:                                              ; preds = %121, %67
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %124 = call i64 @dt_node_is_actfunc(%struct.TYPE_18__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %128 = call i64 @dt_node_is_actfunc(%struct.TYPE_18__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126, %122
  %131 = load i32, i32* @D_OP_ACT, align 4
  %132 = call i32 @xyerror(i32 %131, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %126
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @B_FALSE, align 4
  %138 = call i32 @dt_node_type_assign(%struct.TYPE_18__* %134, i32* %135, i32 %136, i32 %137)
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @dt_attr_min(i32 %147, i32 %150)
  %152 = call i32 @dt_attr_min(i32 %144, i32 %151)
  %153 = call i32 @dt_node_attr_assign(%struct.TYPE_18__* %139, i32 %152)
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %154
}

declare dso_local i8* @dt_node_cook(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @dt_node_is_scalar(%struct.TYPE_18__*) #1

declare dso_local i32 @xyerror(i32, i8*) #1

declare dso_local i64 @dt_node_is_dynamic(%struct.TYPE_18__*) #1

declare dso_local i64 @ctf_type_compat(i32*, i32, i32*, i32) #1

declare dso_local i64 @dt_node_is_integer(%struct.TYPE_18__*) #1

declare dso_local i32 @dt_type_promote(%struct.TYPE_18__*, %struct.TYPE_18__*, i32**, i32*) #1

declare dso_local i64 @dt_node_is_strcompat(%struct.TYPE_18__*) #1

declare dso_local i64 @dt_node_is_string(%struct.TYPE_18__*) #1

declare dso_local i32* @DT_STR_CTFP(i32) #1

declare dso_local i32 @DT_STR_TYPE(i32) #1

declare dso_local i64 @dt_node_is_ptrcompat(%struct.TYPE_18__*, %struct.TYPE_18__*, i32**, i32*) #1

declare dso_local i64 @dt_node_is_actfunc(%struct.TYPE_18__*) #1

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_18__*, i32*, i32, i32) #1

declare dso_local i32 @dt_node_attr_assign(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @dt_attr_min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
