; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_cook_inline.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_cook_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__*, i32, i32* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32* }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@DT_IDFLG_INLINE = common dso_local global i32 0, align 4
@DT_NF_COOKED = common dso_local global i32 0, align 4
@DT_IDENT_XLSOU = common dso_local global i32 0, align 4
@DT_IDENT_XLPTR = common dso_local global i32 0, align 4
@CTF_K_POINTER = common dso_local global i64 0, align 8
@D_OP_INCOMPAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"inline %s definition uses incompatible types: \22%s\22 = \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_16__*, i32)* @dt_cook_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @dt_cook_inline(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %5, align 8
  %20 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DT_IDFLG_INLINE, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DT_NF_COOKED, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = load i32, i32* @DT_IDENT_XLSOU, align 4
  %47 = call %struct.TYPE_18__* @dt_node_resolve(%struct.TYPE_16__* %45, i32 %46)
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %6, align 8
  %48 = icmp ne %struct.TYPE_18__* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %2
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = load i32, i32* @DT_IDENT_XLPTR, align 4
  %54 = call %struct.TYPE_18__* @dt_node_resolve(%struct.TYPE_16__* %52, i32 %53)
  store %struct.TYPE_18__* %54, %struct.TYPE_18__** %6, align 8
  %55 = icmp ne %struct.TYPE_18__* %54, null
  br i1 %55, label %56, label %111

56:                                               ; preds = %49, %2
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %10, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ctf_type_resolve(i32* %60, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %12, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %13, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %14, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @ctf_type_kind(i32* %74, i32 %75)
  %77 = load i64, i64* @CTF_K_POINTER, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %56
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @ctf_type_reference(i32* %80, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @ctf_type_resolve(i32* %83, i32 %84)
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %79, %56
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i64 @ctf_type_compat(i32* %87, i32 %88, i32* %89, i32 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %86
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %95 = load i32, i32* @D_OP_INCOMPAT, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = trunc i64 %21 to i32
  %104 = call i32 @dt_type_name(i32* %101, i32 %102, i8* %23, i32 %103)
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* %14, align 4
  %107 = trunc i64 %25 to i32
  %108 = call i32 @dt_type_name(i32* %105, i32 %106, i8* %26, i32 %107)
  %109 = call i32 @dnerror(%struct.TYPE_16__* %94, i32 %95, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %104, i32 %108)
  br label %110

110:                                              ; preds = %93, %86
  br label %136

111:                                              ; preds = %49
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = call i64 @dt_node_is_argcompat(%struct.TYPE_16__* %112, %struct.TYPE_16__* %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %111
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %120 = load i32, i32* @D_OP_INCOMPAT, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %127 = trunc i64 %21 to i32
  %128 = call i32 @dt_node_type_name(%struct.TYPE_16__* %126, i8* %23, i32 %127)
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = trunc i64 %25 to i32
  %133 = call i32 @dt_node_type_name(%struct.TYPE_16__* %131, i8* %26, i32 %132)
  %134 = call i32 @dnerror(%struct.TYPE_16__* %119, i32 %120, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %125, i32 %128, i32 %133)
  br label %135

135:                                              ; preds = %118, %111
  br label %136

136:                                              ; preds = %135, %110
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %138 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %138)
  ret %struct.TYPE_16__* %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.TYPE_18__* @dt_node_resolve(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @ctf_type_resolve(i32*, i32) #2

declare dso_local i64 @ctf_type_kind(i32*, i32) #2

declare dso_local i32 @ctf_type_reference(i32*, i32) #2

declare dso_local i64 @ctf_type_compat(i32*, i32, i32*, i32) #2

declare dso_local i32 @dnerror(%struct.TYPE_16__*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @dt_type_name(i32*, i32, i8*, i32) #2

declare dso_local i64 @dt_node_is_argcompat(%struct.TYPE_16__*, %struct.TYPE_16__*) #2

declare dso_local i32 @dt_node_type_name(%struct.TYPE_16__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
