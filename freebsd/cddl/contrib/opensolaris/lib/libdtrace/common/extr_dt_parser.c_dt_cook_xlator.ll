; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_cook_xlator.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_cook_xlator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_19__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__, i32, i32, i32 }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_20__ = type { i32 }

@yypcb = common dso_local global %struct.TYPE_21__* null, align 8
@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@_dtrace_maxattr = common dso_local global i8* null, align 8
@CTF_ERR = common dso_local global i64 0, align 8
@D_XLATE_MEMB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"translator member %s is not a member of %s\0A\00", align 1
@DT_IDFLG_REF = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@D_XLATE_INCOMPAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"translator member %s definition uses incompatible types: \22%s\22 = \22%s\22\0A\00", align 1
@_dtrace_defattr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_19__*, i32)* @dt_cook_xlator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @dt_cook_xlator(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_20__, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** @yypcb, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %6, align 8
  %19 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %26 = load i8*, i8** @_dtrace_maxattr, align 8
  store i8* %26, i8** %11, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** @yypcb, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dt_idstack_push(i32* %28, i32 %31)
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  store %struct.TYPE_19__* %35, %struct.TYPE_19__** %7, align 8
  br label %36

36:                                               ; preds = %104, %2
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %38 = icmp ne %struct.TYPE_19__* %37, null
  br i1 %38, label %39, label %108

39:                                               ; preds = %36
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ctf_member_info(i32 %42, i32 %45, i32 %48, %struct.TYPE_20__* %12)
  %50 = load i64, i64* @CTF_ERR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %39
  %53 = load i32, i32* @D_XLATE_MEMB, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = trunc i64 %20 to i32
  %64 = call i32 @ctf_type_name(i32 %59, i32 %62, i8* %22, i32 %63)
  %65 = call i32 (i32, i8*, i32, i32, ...) @xyerror(i32 %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %64)
  br label %66

66:                                               ; preds = %52, %39
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %68 = load i32, i32* @DT_IDFLG_REF, align 4
  %69 = call i32 @dt_node_cook(%struct.TYPE_19__* %67, i32 %68)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @B_FALSE, align 4
  %77 = call i32 @dt_node_type_assign(%struct.TYPE_19__* %70, i32 %73, i32 %75, i32 %76)
  %78 = load i8*, i8** %11, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @dt_attr_min(i8* %78, i32 %81)
  store i8* %82, i8** %11, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = call i64 @dt_node_is_argcompat(%struct.TYPE_19__* %83, %struct.TYPE_19__* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %66
  %90 = load i32, i32* @D_XLATE_INCOMPAT, align 4
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %95 = trunc i64 %20 to i32
  %96 = call i32 @dt_node_type_name(%struct.TYPE_19__* %94, i8* %22, i32 %95)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = trunc i64 %24 to i32
  %101 = call i32 @dt_node_type_name(%struct.TYPE_19__* %99, i8* %25, i32 %100)
  %102 = call i32 (i32, i8*, i32, i32, ...) @xyerror(i32 %90, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %96, i32 %101)
  br label %103

103:                                              ; preds = %89, %66
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  store %struct.TYPE_19__* %107, %struct.TYPE_19__** %7, align 8
  br label %36

108:                                              ; preds = %36
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** @yypcb, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @dt_idstack_pop(i32* %110, i32 %113)
  %115 = load i8*, i8** %11, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  store i8* %115, i8** %118, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  store i8* %119, i8** %122, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @DT_DYN_CTFP(i32* %124)
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @DT_DYN_TYPE(i32* %126)
  %128 = load i32, i32* @B_FALSE, align 4
  %129 = call i32 @dt_node_type_assign(%struct.TYPE_19__* %123, i32 %125, i32 %127, i32 %128)
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %131 = load i32, i32* @_dtrace_defattr, align 4
  %132 = call i32 @dt_node_attr_assign(%struct.TYPE_19__* %130, i32 %131)
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %134 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %134)
  ret %struct.TYPE_19__* %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dt_idstack_push(i32*, i32) #2

declare dso_local i64 @ctf_member_info(i32, i32, i32, %struct.TYPE_20__*) #2

declare dso_local i32 @xyerror(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @ctf_type_name(i32, i32, i8*, i32) #2

declare dso_local i32 @dt_node_cook(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_19__*, i32, i32, i32) #2

declare dso_local i8* @dt_attr_min(i8*, i32) #2

declare dso_local i64 @dt_node_is_argcompat(%struct.TYPE_19__*, %struct.TYPE_19__*) #2

declare dso_local i32 @dt_node_type_name(%struct.TYPE_19__*, i8*, i32) #2

declare dso_local i32 @dt_idstack_pop(i32*, i32) #2

declare dso_local i32 @DT_DYN_CTFP(i32*) #2

declare dso_local i32 @DT_DYN_TYPE(i32*) #2

declare dso_local i32 @dt_node_attr_assign(%struct.TYPE_19__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
