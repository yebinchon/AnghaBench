; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb_il.c_zil_prt_rec_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb_il.c_zil_prt_rec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i64, %struct.TYPE_12__, %struct.TYPE_16__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i64 }

@dump_opt = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"%sfoid %llu, offset %llx, length %llx\0A\00", align 1
@tab_prefix = common dso_local global i8* null, align 8
@TX_WRITE2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%shas blkptr, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"will claim\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"won't claim\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\09\09\09LSIZE 0x%llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s<hole>\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%s<block already committed>\0A\00", align 1
@ZB_ZIL_LEVEL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SYNC_READ = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SPA_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@zil_prt_rec_write_cb = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, i8*)* @zil_prt_rec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zil_prt_rec_write(%struct.TYPE_14__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %7, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %9, align 8
  %17 = load i32*, i32** @dump_opt, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 100
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @dump_opt, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 105
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @MAX(i32 %19, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i8*, i8** @tab_prefix, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %28, i32 %31, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @TX_WRITE2, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 5
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %3
  br label %163

43:                                               ; preds = %39
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %48, 32
  br i1 %49, label %50, label %129

50:                                               ; preds = %43
  %51 = load i8*, i8** @tab_prefix, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %53 = call i64 @BP_IS_HOLE(%struct.TYPE_16__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @spa_min_claim_txg(i32 %61)
  %63 = icmp sge i64 %58, %62
  br label %64

64:                                               ; preds = %55, %50
  %65 = phi i1 [ false, %50 ], [ %63, %55 ]
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %51, i8* %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %70 = load i8*, i8** @tab_prefix, align 8
  %71 = call i32 @print_log_bp(%struct.TYPE_16__* %69, i8* %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %73 = call i64 @BP_IS_HOLE(%struct.TYPE_16__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %64
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %77 = call i32 @BP_GET_LSIZE(%struct.TYPE_16__* %76)
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = load i8*, i8** @tab_prefix, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %79)
  br label %163

81:                                               ; preds = %64
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %84, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load i8*, i8** @tab_prefix, align 8
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %92)
  br label %163

94:                                               ; preds = %81
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dmu_objset_id(i32 %97)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @ZB_ZIL_LEVEL, align 4
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %107 = call i32 @BP_GET_LSIZE(%struct.TYPE_16__* %106)
  %108 = sdiv i32 %105, %107
  %109 = call i32 @SET_BOOKMARK(i32* %10, i32 %98, i64 %101, i32 %102, i32 %108)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %111 = call i32 @BP_GET_LSIZE(%struct.TYPE_16__* %110)
  %112 = load i32, i32* @B_FALSE, align 4
  %113 = call i32* @abd_alloc(i32 %111, i32 %112)
  store i32* %113, i32** %8, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %120 = call i32 @BP_GET_LSIZE(%struct.TYPE_16__* %119)
  %121 = load i32, i32* @ZIO_PRIORITY_SYNC_READ, align 4
  %122 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %123 = call i32 @zio_read(i32* null, i32 %116, %struct.TYPE_16__* %117, i32* %118, i32 %120, i32* null, i32* null, i32 %121, i32 %122, i32* %10)
  %124 = call i32 @zio_wait(i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %94
  br label %160

128:                                              ; preds = %94
  br label %142

129:                                              ; preds = %43
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @B_FALSE, align 4
  %134 = call i32* @abd_alloc(i32 %132, i32 %133)
  store i32* %134, i32** %8, align 8
  %135 = load i32*, i32** %8, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i64 1
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @abd_copy_from_buf(i32* %135, %struct.TYPE_15__* %137, i32 %140)
  br label %142

142:                                              ; preds = %129, %128
  %143 = load i8*, i8** @tab_prefix, align 8
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %143)
  %145 = load i32*, i32** %8, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp slt i32 %149, 6
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %154

152:                                              ; preds = %142
  %153 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  br label %154

154:                                              ; preds = %152, %151
  %155 = phi i32 [ 20, %151 ], [ %153, %152 ]
  %156 = call i32 @MIN(i32 %148, i32 %155)
  %157 = load i32, i32* @zil_prt_rec_write_cb, align 4
  %158 = call i32 @abd_iterate_func(i32* %145, i32 0, i32 %156, i32 %157, i32* null)
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %160

160:                                              ; preds = %154, %127
  %161 = load i32*, i32** %8, align 8
  %162 = call i32 @abd_free(i32* %161)
  br label %163

163:                                              ; preds = %160, %91, %75, %42
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @BP_IS_HOLE(%struct.TYPE_16__*) #1

declare dso_local i64 @spa_min_claim_txg(i32) #1

declare dso_local i32 @print_log_bp(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @BP_GET_LSIZE(%struct.TYPE_16__*) #1

declare dso_local i32 @SET_BOOKMARK(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @dmu_objset_id(i32) #1

declare dso_local i32* @abd_alloc(i32, i32) #1

declare dso_local i32 @zio_wait(i32) #1

declare dso_local i32 @zio_read(i32*, i32, %struct.TYPE_16__*, i32*, i32, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @abd_copy_from_buf(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @abd_iterate_func(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @abd_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
