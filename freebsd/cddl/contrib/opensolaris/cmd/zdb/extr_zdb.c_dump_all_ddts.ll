; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_all_ddts.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_all_ddts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32** }
%struct.TYPE_14__ = type { i64 }

@ZIO_CHECKSUM_FUNCTIONS = common dso_local global i32 0, align 4
@DDT_TYPES = common dso_local global i32 0, align 4
@DDT_CLASSES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"All DDTs are empty\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@dump_opt = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"DDT histogram (aggregated over all DDTs):\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @dump_all_ddts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_all_ddts(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %9 = call i32 @bzero(%struct.TYPE_14__* %3, i32 8)
  %10 = call i32 @bzero(%struct.TYPE_14__* %4, i32 8)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %45, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ZIO_CHECKSUM_FUNCTIONS, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %41, %15
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @DDT_TYPES, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %37, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @DDT_CLASSES, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dump_ddt(i32* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %28

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %23

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %11

48:                                               ; preds = %11
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %50 = call i32 @ddt_get_dedup_stats(%struct.TYPE_13__* %49, %struct.TYPE_14__* %4)
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %69

56:                                               ; preds = %48
  %57 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32*, i32** @dump_opt, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 68
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = call i32 @ddt_get_dedup_histogram(%struct.TYPE_13__* %64, %struct.TYPE_14__* %3)
  %66 = call i32 @zpool_dump_ddt(%struct.TYPE_14__* %4, %struct.TYPE_14__* %3)
  br label %67

67:                                               ; preds = %62, %56
  %68 = call i32 @dump_dedup_ratio(%struct.TYPE_14__* %4)
  br label %69

69:                                               ; preds = %67, %54
  ret void
}

declare dso_local i32 @bzero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @dump_ddt(i32*, i32, i32) #1

declare dso_local i32 @ddt_get_dedup_stats(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ddt_get_dedup_histogram(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @zpool_dump_ddt(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @dump_dedup_ratio(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
