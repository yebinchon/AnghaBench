; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dt_printa_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dt_printa_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@DT_NODE_AGG = common dso_local global i64 0, align 8
@D_PRINTA_AGGKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"printa( ): @%s and @%s do not have matching key signatures: @%s has %d key%s, @%s has %d key%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@D_PRINTA_AGGPROTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [85 x i8] c"printa( ): @%s[ ] key #%d is incompatible with @%s:\0A%9s key #%d: %s\0A%9s key #%d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_printa_validate(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %15 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DT_NODE_AGG, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DT_NODE_AGG, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %5, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %6, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_10__*
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %7, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.TYPE_10__*
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %60, %2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = icmp ne %struct.TYPE_9__* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %7, align 8
  br label %54

64:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %71, %64
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = icmp ne %struct.TYPE_9__* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %8, align 8
  br label %65

75:                                               ; preds = %65
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load i32, i32* @D_PRINTA_AGGKEY, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, 1
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %99, 1
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %103 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @xyerror(i32 %80, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %86, i32 %89, i32 %90, i8* %94, i32 %97, i32 %98, i8* %102)
  br label %104

104:                                              ; preds = %79, %75
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to %struct.TYPE_10__*
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  store %struct.TYPE_9__* %110, %struct.TYPE_9__** %7, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to %struct.TYPE_10__*
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  store %struct.TYPE_9__* %116, %struct.TYPE_9__** %8, align 8
  store i32 1, i32* %11, align 4
  br label %117

117:                                              ; preds = %154, %104
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %119 = icmp ne %struct.TYPE_9__* %118, null
  br i1 %119, label %120, label %163

120:                                              ; preds = %117
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = icmp ne %struct.TYPE_9__* %121, null
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %127 = call i64 @dt_node_is_argcompat(%struct.TYPE_9__* %125, %struct.TYPE_9__* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %154

130:                                              ; preds = %120
  %131 = load i32, i32* @D_PRINTA_AGGPROTO, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %144 = trunc i64 %16 to i32
  %145 = call i32 @dt_node_type_name(%struct.TYPE_9__* %143, i8* %18, i32 %144)
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %151 = trunc i64 %20 to i32
  %152 = call i32 @dt_node_type_name(%struct.TYPE_9__* %150, i8* %21, i32 %151)
  %153 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @xyerror(i32 %131, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i32 %134, i32 %135, i32 %138, i32 %141, i32 %142, i32 %145, i32 %148, i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %130, %129
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  store %struct.TYPE_9__* %159, %struct.TYPE_9__** %7, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  store %struct.TYPE_9__* %162, %struct.TYPE_9__** %8, align 8
  br label %117

163:                                              ; preds = %117
  %164 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %164)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @xyerror(i32, i8*, i32, i32, i32, i32, ...) #2

declare dso_local i64 @dt_node_is_argcompat(%struct.TYPE_9__*, %struct.TYPE_9__*) #2

declare dso_local i32 @dt_node_type_name(%struct.TYPE_9__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
