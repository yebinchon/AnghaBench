; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_deflate/extr_deftree.c_send_all_trees.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_deflate/extr_deftree.c_send_all_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"not enough codes\00", align 1
@L_CODES = common dso_local global i32 0, align 4
@D_CODES = common dso_local global i32 0, align 4
@BL_CODES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"too many codes\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"\0Abl counts: \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\0Abl code %2d \00", align 1
@bl_order = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"\0Abl tree: sent %ld\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\0Alit tree: sent %ld\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"\0Adist tree: sent %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, i32)* @send_all_trees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_all_trees(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 257
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 4
  br label %18

18:                                               ; preds = %15, %12, %4
  %19 = phi i1 [ false, %12 ], [ false, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @L_CODES, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @D_CODES, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @BL_CODES, align 4
  %32 = icmp sle i32 %30, %31
  br label %33

33:                                               ; preds = %29, %25, %18
  %34 = phi i1 [ false, %25 ], [ false, %18 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @Tracev(i32 ptrtoint ([13 x i8]* @.str.2 to i32))
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 257
  %42 = call i32 @send_bits(%struct.TYPE_7__* %39, i32 %41, i32 5)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @send_bits(%struct.TYPE_7__* %43, i32 %45, i32 5)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, 4
  %50 = call i32 @send_bits(%struct.TYPE_7__* %47, i32 %49, i32 4)
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %77, %33
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = load i32, i32* @stderr, align 4
  %57 = load i64*, i64** @bl_order, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @Tracev(i32 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i64*, i64** @bl_order, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @send_bits(%struct.TYPE_7__* %64, i32 %75, i32 3)
  br label %77

77:                                               ; preds = %55
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %51

80:                                               ; preds = %51
  %81 = load i32, i32* @stderr, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @Tracev(i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %91, 1
  %93 = call i32 @send_tree(%struct.TYPE_7__* %86, i32* %90, i32 %92)
  %94 = load i32, i32* @stderr, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @Tracev(i32 %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i32*
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 %104, 1
  %106 = call i32 @send_tree(%struct.TYPE_7__* %99, i32* %103, i32 %105)
  %107 = load i32, i32* @stderr, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @Tracev(i32 %110)
  ret void
}

declare dso_local i32 @Assert(i32, i8*) #1

declare dso_local i32 @Tracev(i32) #1

declare dso_local i32 @send_bits(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @send_tree(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
