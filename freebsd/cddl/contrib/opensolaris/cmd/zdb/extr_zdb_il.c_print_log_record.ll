; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb_il.c_print_log_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb_il.c_print_log_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 (i32*, i32, %struct.TYPE_5__*)*, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }

@dump_opt = common dso_local global i32* null, align 8
@TX_MAX_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"\09\09%s%s len %6llu, txg %llu, seq %llu\0A\00", align 1
@TX_CI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"CI-\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@zil_rec_info = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i8*, i32)* @print_log_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_log_record(i32* %0, %struct.TYPE_5__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** @dump_opt, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 100
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** @dump_opt, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 105
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MAX(i32 %13, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @TX_MAX_TYPE, align 8
  %27 = icmp slt i64 %25, %26
  br label %28

28:                                               ; preds = %23, %4
  %29 = phi i1 [ false, %4 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TX_CI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zil_rec_info, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %49, i32 %53, i32 %56, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %28
  %65 = load i32, i32* %10, align 4
  %66 = icmp sge i32 %65, 3
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zil_rec_info, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32 (i32*, i32, %struct.TYPE_5__*)*, i32 (i32*, i32, %struct.TYPE_5__*)** %72, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = call i32 %73(i32* %74, i32 %75, %struct.TYPE_5__* %76)
  br label %78

78:                                               ; preds = %67, %64, %28
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zil_rec_info, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zil_rec_info, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  ret i32 0
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
