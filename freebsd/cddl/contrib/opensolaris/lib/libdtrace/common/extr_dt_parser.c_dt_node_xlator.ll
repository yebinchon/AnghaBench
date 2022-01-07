; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_xlator.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_xlator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_19__*, i32* }
%struct.TYPE_18__ = type { i32, i32 }

@yypcb = common dso_local global %struct.TYPE_20__* null, align 8
@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@EDT_COMPILER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@DT_XLATE_EXACT = common dso_local global i32 0, align 4
@D_XLATE_REDECL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"translator from %s to %s has already been declared\0A\00", align 1
@CTF_K_FORWARD = common dso_local global i64 0, align 8
@D_XLATE_SOU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"incomplete struct/union/enum %s\0A\00", align 1
@CTF_K_STRUCT = common dso_local global i64 0, align 8
@CTF_K_UNION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"translator output type must be a struct or union\0A\00", align 1
@YYS_CLAUSE = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@DT_NODE_XLATOR = common dso_local global i32 0, align 4
@DT_IDFLG_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @dt_node_xlator(i32* %0, i32* %1, i8* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__, align 4
  %11 = alloca %struct.TYPE_18__, align 4
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %8, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** @yypcb, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  %25 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %19, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %20, align 8
  %29 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %21, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @dt_decl_type(i32* %32, %struct.TYPE_18__* %11)
  store i32 %33, i32* %16, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @dt_decl_free(i32* %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @dt_decl_type(i32* %36, %struct.TYPE_18__* %10)
  store i32 %37, i32* %17, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @dt_decl_free(i32* %38)
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42, %4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** @yypcb, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @EDT_COMPILER, align 4
  %52 = call i32 @longjmp(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %42
  %54 = call i32 @bzero(%struct.TYPE_19__* %12, i32 16)
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @B_FALSE, align 4
  %60 = call i32 @dt_node_type_assign(%struct.TYPE_19__* %12, i32 %56, i32 %58, i32 %59)
  %61 = call i32 @bzero(%struct.TYPE_19__* %13, i32 16)
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @B_FALSE, align 4
  %67 = call i32 @dt_node_type_assign(%struct.TYPE_19__* %13, i32 %63, i32 %65, i32 %66)
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* @DT_XLATE_EXACT, align 4
  %70 = call i32* @dt_xlator_lookup(i32* %68, %struct.TYPE_19__* %12, %struct.TYPE_19__* %13, i32 %69)
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %53
  %73 = load i32, i32* @D_XLATE_REDECL, align 4
  %74 = trunc i64 %26 to i32
  %75 = call i32 @dt_node_type_name(%struct.TYPE_19__* %12, i8* %28, i32 %74)
  %76 = trunc i64 %30 to i32
  %77 = call i32 @dt_node_type_name(%struct.TYPE_19__* %13, i8* %31, i32 %76)
  %78 = call i32 (i32, i8*, ...) @xyerror(i32 %73, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %72, %53
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ctf_type_resolve(i32 %83, i32 %85)
  %87 = call i64 @ctf_type_kind(i32 %81, i32 %86)
  store i64 %87, i64* %18, align 8
  %88 = load i64, i64* %18, align 8
  %89 = load i64, i64* @CTF_K_FORWARD, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %79
  %92 = load i32, i32* @D_XLATE_SOU, align 4
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = trunc i64 %26 to i32
  %98 = call i32 @dt_type_name(i32 %94, i32 %96, i8* %28, i32 %97)
  %99 = call i32 (i32, i8*, ...) @xyerror(i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %91, %79
  %101 = load i64, i64* %18, align 8
  %102 = load i64, i64* @CTF_K_STRUCT, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* @CTF_K_UNION, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @D_XLATE_SOU, align 4
  %110 = call i32 (i32, i8*, ...) @xyerror(i32 %109, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %104, %100
  %112 = load i32*, i32** %9, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** @yypcb, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32* @dt_xlator_create(i32* %112, %struct.TYPE_18__* %10, %struct.TYPE_18__* %11, i8* %113, %struct.TYPE_19__* %114, i32 %117)
  store i32* %118, i32** %14, align 8
  %119 = load i32, i32* @YYS_CLAUSE, align 4
  %120 = call i32 @yybegin(i32 %119)
  %121 = load i8*, i8** %7, align 8
  %122 = call i32 @free(i8* %121)
  %123 = load i32*, i32** %14, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %111
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** @yypcb, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @EDT_NOMEM, align 4
  %130 = call i32 @longjmp(i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %125, %111
  %132 = load i32, i32* @DT_NODE_XLATOR, align 4
  %133 = call %struct.TYPE_19__* @dt_node_alloc(i32 %132)
  store %struct.TYPE_19__* %133, %struct.TYPE_19__** %15, align 8
  %134 = load i32*, i32** %14, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  store i32* %134, i32** %136, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  store %struct.TYPE_19__* %137, %struct.TYPE_19__** %139, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %141 = load i32, i32* @DT_IDFLG_REF, align 4
  %142 = call %struct.TYPE_19__* @dt_node_cook(%struct.TYPE_19__* %140, i32 %141)
  %143 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %143)
  ret %struct.TYPE_19__* %142
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dt_decl_type(i32*, %struct.TYPE_18__*) #2

declare dso_local i32 @dt_decl_free(i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @longjmp(i32, i32) #2

declare dso_local i32 @bzero(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_19__*, i32, i32, i32) #2

declare dso_local i32* @dt_xlator_lookup(i32*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32) #2

declare dso_local i32 @xyerror(i32, i8*, ...) #2

declare dso_local i32 @dt_node_type_name(%struct.TYPE_19__*, i8*, i32) #2

declare dso_local i64 @ctf_type_kind(i32, i32) #2

declare dso_local i32 @ctf_type_resolve(i32, i32) #2

declare dso_local i32 @dt_type_name(i32, i32, i8*, i32) #2

declare dso_local i32* @dt_xlator_create(i32*, %struct.TYPE_18__*, %struct.TYPE_18__*, i8*, %struct.TYPE_19__*, i32) #2

declare dso_local i32 @yybegin(i32) #2

declare dso_local %struct.TYPE_19__* @dt_node_alloc(i32) #2

declare dso_local %struct.TYPE_19__* @dt_node_cook(%struct.TYPE_19__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
