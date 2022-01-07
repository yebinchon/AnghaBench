; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_get_asconf_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_get_asconf_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@SCTP_ERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_ERROR_REQ_REFUSED = common dso_local global i32 0, align 4
@SCTP_ERROR_INV_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_chunk*, %struct.TYPE_11__*, i32)* @sctp_get_asconf_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_get_asconf_response(%struct.sctp_chunk* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  store i32 %16, i32* %12, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @SCTP_ERROR_REQ_REFUSED, align 4
  store i32 %18, i32* %12, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %21 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohs(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  store i32 4, i32* %10, align 4
  %29 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %30 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = inttoptr i64 %36 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %79, %19
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %94

44:                                               ; preds = %41
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %44
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %77 [
    i32 128, label %57
    i32 129, label %59
  ]

57:                                               ; preds = %52
  %58 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  store i32 %58, i32* %4, align 4
  br label %96

59:                                               ; preds = %52
  store i32 16, i32* %10, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = bitcast %struct.TYPE_11__* %60 to i8*
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr i8, i8* %61, i64 %63
  %65 = bitcast i8* %64 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %4, align 4
  br label %96

75:                                               ; preds = %59
  %76 = load i32, i32* @SCTP_ERROR_INV_PARAM, align 4
  store i32 %76, i32* %4, align 4
  br label %96

77:                                               ; preds = %52
  %78 = load i32, i32* @SCTP_ERROR_INV_PARAM, align 4
  store i32 %78, i32* %4, align 4
  br label %96

79:                                               ; preds = %44
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ntohs(i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %86 = bitcast %struct.TYPE_11__* %85 to i8*
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr i8, i8* %86, i64 %88
  %90 = bitcast i8* %89 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %8, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %41

94:                                               ; preds = %41
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %77, %75, %71, %57
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
