; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_provider_cmp_argv.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_provider_cmp_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@D_PROV_INCOMPAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"probe %s:%s %s prototype mismatch:\0A\09 current: %u arg%s\0A\09previous: %u arg%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"probe %s:%s %s prototype argument #%u mismatch:\0A\09 current: %s\0A\09previous: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_18__*, i8*, i32, %struct.TYPE_18__*, i32, %struct.TYPE_18__*)* @dt_node_provider_cmp_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_node_provider_cmp_argv(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1, i8* %2, i32 %3, %struct.TYPE_18__* %4, i32 %5, %struct.TYPE_18__* %6) #0 {
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_18__* %6, %struct.TYPE_18__** %14, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %15, align 8
  %25 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %17, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  %29 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %7
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %37 = load i32, i32* @D_PROV_INCOMPAT, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 1
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 1
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %58 = call i32 (%struct.TYPE_18__*, i32, i8*, i32, i32, i8*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_18__* %36, i32 %37, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %46, i8* %47, i32 %48, i8* %52, i32 %53, i8* %57)
  br label %59

59:                                               ; preds = %35, %7
  store i32 0, i32* %16, align 4
  br label %60

60:                                               ; preds = %104, %59
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %113

64:                                               ; preds = %60
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @ctf_type_cmp(i32 %67, i32 %70, i32 %73, i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %104

80:                                               ; preds = %64
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %82 = load i32, i32* @D_PROV_INCOMPAT, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %96 = trunc i64 %26 to i32
  %97 = call i32 @dt_node_type_name(%struct.TYPE_18__* %95, i8* %28, i32 %96)
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %101 = trunc i64 %30 to i32
  %102 = call i32 @dt_node_type_name(%struct.TYPE_18__* %100, i8* %31, i32 %101)
  %103 = call i32 (%struct.TYPE_18__*, i32, i8*, i32, i32, i8*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_18__* %81, i32 %82, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %91, i8* %92, i32 %94, i8* %99, i32 %102)
  br label %104

104:                                              ; preds = %80, %79
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %16, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  store %struct.TYPE_18__* %109, %struct.TYPE_18__** %12, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  store %struct.TYPE_18__* %112, %struct.TYPE_18__** %14, align 8
  br label %60

113:                                              ; preds = %60
  %114 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %114)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dnerror(%struct.TYPE_18__*, i32, i8*, i32, i32, i8*, i32, i8*, i32, ...) #2

declare dso_local i64 @ctf_type_cmp(i32, i32, i32, i32) #2

declare dso_local i32 @dt_node_type_name(%struct.TYPE_18__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
