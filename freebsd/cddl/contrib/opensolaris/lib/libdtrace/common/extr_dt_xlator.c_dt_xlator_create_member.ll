; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_xlator.c_dt_xlator_create_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_xlator.c_dt_xlator_create_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i64, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }

@DT_NODE_XLATOR = common dso_local global i64 0, align 8
@EDT_NOMEM = common dso_local global i32 0, align 4
@DT_NODE_MEMBER = common dso_local global i64 0, align 8
@DT_TOK_XLATE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*)* @dt_xlator_create_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_xlator_create_member(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i64, i64* @DT_NODE_XLATOR, align 8
  %21 = call %struct.TYPE_6__* @dt_node_xalloc(i32* %19, i64 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %12, align 8
  %22 = icmp eq %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* @EDT_NOMEM, align 4
  %26 = call i32 @dt_set_errno(i32* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %116

27:                                               ; preds = %4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %35, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i64, i64* @DT_NODE_MEMBER, align 8
  %38 = call %struct.TYPE_6__* @dt_node_xalloc(i32* %36, i64 %37)
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %13, align 8
  %39 = icmp eq %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* @EDT_NOMEM, align 4
  %43 = call i32 @dt_set_errno(i32* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %116

44:                                               ; preds = %27
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %52, align 8
  %53 = load i32, i32* @DT_TOK_XLATE, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 6
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @B_FALSE, align 4
  %68 = call i32 @dt_node_type_assign(%struct.TYPE_6__* %62, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = icmp ne %struct.TYPE_6__* %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %44
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DT_NODE_MEMBER, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %87, align 8
  br label %92

88:                                               ; preds = %44
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %91, align 8
  br label %92

92:                                               ; preds = %88, %73
  %93 = load i8*, i8** %6, align 8
  %94 = call i32* @strdup(i8* %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @B_FALSE, align 4
  %106 = call i32 @dt_node_type_assign(%struct.TYPE_6__* %100, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %92
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* @EDT_NOMEM, align 4
  %114 = call i32 @dt_set_errno(i32* %112, i32 %113)
  store i32 %114, i32* %5, align 4
  br label %116

115:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %111, %40, %23
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.TYPE_6__* @dt_node_xalloc(i32*, i64) #1

declare dso_local i32 @dt_set_errno(i32*, i32) #1

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
