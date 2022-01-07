; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_outqueue.c_sctp_outq_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_outqueue.c_sctp_outq_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_outq = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"sctp_outq_tail(%p, %p[%s])\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Illegal Chunk\00", align 1
@SCTP_CID_DATA = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"outqueueing (%p, %p[%s])\0A\00", align 1
@SCTP_DATA_UNORDERED = common dso_local global i32 0, align 4
@SCTP_MIB_OUTUNORDERCHUNKS = common dso_local global i32 0, align 4
@SCTP_MIB_OUTORDERCHUNKS = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_outq_tail(%struct.sctp_outq* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_outq*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i32, align 4
  store %struct.sctp_outq* %0, %struct.sctp_outq** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %8 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %9 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %10 = icmp ne %struct.sctp_chunk* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %13 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %18 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @SCTP_ST_CHUNK(i64 %21)
  %23 = call i8* @sctp_cname(i32 %22)
  br label %25

24:                                               ; preds = %11, %2
  br label %25

25:                                               ; preds = %24, %16
  %26 = phi i8* [ %23, %16 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %24 ]
  %27 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.sctp_outq* %7, %struct.sctp_chunk* %8, i8* %26)
  %28 = load i64, i64* @SCTP_CID_DATA, align 8
  %29 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %30 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %28, %33
  br i1 %34, label %35, label %87

35:                                               ; preds = %25
  %36 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %37 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %44 [
    i32 132, label %41
    i32 133, label %41
    i32 130, label %41
    i32 128, label %41
    i32 129, label %41
    i32 131, label %41
  ]

41:                                               ; preds = %35, %35, %35, %35, %35, %35
  %42 = load i32, i32* @ESHUTDOWN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %86

44:                                               ; preds = %35
  %45 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %46 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %47 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %48 = icmp ne %struct.sctp_chunk* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %51 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %56 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @SCTP_ST_CHUNK(i64 %59)
  %61 = call i8* @sctp_cname(i32 %60)
  br label %63

62:                                               ; preds = %49, %44
  br label %63

63:                                               ; preds = %62, %54
  %64 = phi i8* [ %61, %54 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %62 ]
  %65 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.sctp_outq* %45, %struct.sctp_chunk* %46, i8* %64)
  %66 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %67 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %68 = call i32 @sctp_outq_tail_data(%struct.sctp_outq* %66, %struct.sctp_chunk* %67)
  %69 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %70 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SCTP_DATA_UNORDERED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %63
  %78 = load i32, i32* @SCTP_MIB_OUTUNORDERCHUNKS, align 4
  %79 = call i32 @SCTP_INC_STATS(i32 %78)
  br label %83

80:                                               ; preds = %63
  %81 = load i32, i32* @SCTP_MIB_OUTORDERCHUNKS, align 4
  %82 = call i32 @SCTP_INC_STATS(i32 %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %85 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %41
  br label %95

87:                                               ; preds = %25
  %88 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %89 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %88, i32 0, i32 0
  %90 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %91 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %90, i32 0, i32 1
  %92 = call i32 @list_add_tail(i32* %89, i32* %91)
  %93 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %94 = call i32 @SCTP_INC_STATS(i32 %93)
  br label %95

95:                                               ; preds = %87, %86
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %110

100:                                              ; preds = %95
  %101 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %102 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %107 = call i32 @sctp_outq_flush(%struct.sctp_outq* %106, i32 0)
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %98
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, %struct.sctp_outq*, %struct.sctp_chunk*, i8*) #1

declare dso_local i8* @sctp_cname(i32) #1

declare dso_local i32 @SCTP_ST_CHUNK(i64) #1

declare dso_local i32 @sctp_outq_tail_data(%struct.sctp_outq*, %struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sctp_outq_flush(%struct.sctp_outq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
