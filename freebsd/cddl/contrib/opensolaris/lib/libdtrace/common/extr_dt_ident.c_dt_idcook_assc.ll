; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_ident.c_dt_idcook_assc.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_ident.c_dt_idcook_assc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i64, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_24__*, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_24__* }
%struct.TYPE_20__ = type { %struct.TYPE_20__* }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@yypcb = common dso_local global %struct.TYPE_23__* null, align 8
@EDT_NOMEM = common dso_local global i32 0, align 4
@DT_IDFLG_DECL = common dso_local global i32 0, align 4
@D_KEY_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s expression may not be used as %s index: key #%d\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@DT_IDENT_AGG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"[ ]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_22__*, i32, %struct.TYPE_20__*)* @dt_idcook_assc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_idcook_assc(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1, i32 %2, %struct.TYPE_20__* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %8, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %16 = icmp eq %struct.TYPE_21__* %15, null
  br i1 %16, label %17, label %160

17:                                               ; preds = %4
  %18 = call %struct.TYPE_21__* @malloc(i32 32)
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 4
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %9, align 8
  %21 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %26 = icmp eq %struct.TYPE_21__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** @yypcb, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @EDT_NOMEM, align 4
  %32 = call i32 @longjmp(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %17
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  store i32 -1, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %42, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %33
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.TYPE_24__* @calloc(i32 %48, i32 8)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 3
  store %struct.TYPE_24__* %49, %struct.TYPE_24__** %51, align 8
  %52 = icmp eq %struct.TYPE_24__* %49, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %55, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %57 = call i32 @free(%struct.TYPE_21__* %56)
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** @yypcb, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @EDT_NOMEM, align 4
  %62 = call i32 @longjmp(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %53, %47, %33
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @DT_IDFLG_DECL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %63
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** @yypcb, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @DT_DYN_CTFP(i32 %73)
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** @yypcb, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @DT_DYN_TYPE(i32 %79)
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %70, %63
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %131, %83
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %137

88:                                               ; preds = %84
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %90 = call i64 @dt_node_is_dynamic(%struct.TYPE_20__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %94 = call i64 @dt_node_is_void(%struct.TYPE_20__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %92, %88
  %97 = load i32, i32* @D_KEY_TYPE, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %99 = trunc i64 %22 to i32
  %100 = call i32 @dt_node_type_name(%struct.TYPE_20__* %98, i8* %24, i32 %99)
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @dt_idkind_name(i64 %103)
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  %107 = call i32 @xyerror(i32 %97, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %104, i32 %106)
  br label %108

108:                                              ; preds = %96, %92
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i64 %114
  %116 = call i32 @dt_node_type_propagate(%struct.TYPE_20__* %109, %struct.TYPE_24__* %115)
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i64 %122
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  store %struct.TYPE_24__* %123, %struct.TYPE_24__** %130, align 8
  br label %131

131:                                              ; preds = %108
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  store %struct.TYPE_20__* %136, %struct.TYPE_20__** %8, align 8
  br label %84

137:                                              ; preds = %84
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %137
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %148, align 8
  br label %149

149:                                              ; preds = %140, %137
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @B_FALSE, align 4
  %158 = call i32 @dt_node_type_assign(%struct.TYPE_20__* %150, i32 %153, i32 %156, i32 %157)
  %159 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %159)
  br label %173

160:                                              ; preds = %4
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @DT_IDENT_AGG, align 8
  %169 = icmp eq i64 %167, %168
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %172 = call i32 @dt_idcook_sign(%struct.TYPE_20__* %161, %struct.TYPE_22__* %162, i32 %163, %struct.TYPE_20__* %164, i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %173

173:                                              ; preds = %160, %149
  ret void
}

declare dso_local %struct.TYPE_21__* @malloc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local %struct.TYPE_24__* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_21__*) #1

declare dso_local i32 @DT_DYN_CTFP(i32) #1

declare dso_local i32 @DT_DYN_TYPE(i32) #1

declare dso_local i64 @dt_node_is_dynamic(%struct.TYPE_20__*) #1

declare dso_local i64 @dt_node_is_void(%struct.TYPE_20__*) #1

declare dso_local i32 @xyerror(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dt_node_type_name(%struct.TYPE_20__*, i8*, i32) #1

declare dso_local i32 @dt_idkind_name(i64) #1

declare dso_local i32 @dt_node_type_propagate(%struct.TYPE_20__*, %struct.TYPE_24__*) #1

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_20__*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @dt_idcook_sign(%struct.TYPE_20__*, %struct.TYPE_22__*, i32, %struct.TYPE_20__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
