; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_verify_asconf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_verify_asconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_paramhdr = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%union.sctp_params = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_verify_asconf(%struct.sctp_association* %0, %struct.sctp_paramhdr* %1, i8* %2, %struct.sctp_paramhdr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_paramhdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sctp_paramhdr**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %union.sctp_params, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %6, align 8
  store %struct.sctp_paramhdr* %1, %struct.sctp_paramhdr** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.sctp_paramhdr** %3, %struct.sctp_paramhdr*** %9, align 8
  %14 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %7, align 8
  %15 = bitcast %struct.sctp_paramhdr* %14 to i8*
  %16 = bitcast %union.sctp_params* %11 to i8**
  store i8* %15, i8** %16, align 8
  br label %17

17:                                               ; preds = %71, %4
  %18 = bitcast %union.sctp_params* %11 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr i8, i8* %20, i64 -1
  %22 = icmp ule i8* %19, %21
  br i1 %22, label %23, label %78

23:                                               ; preds = %17
  %24 = bitcast %union.sctp_params* %11 to %struct.sctp_paramhdr**
  %25 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %24, align 8
  %26 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ntohs(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = bitcast %union.sctp_params* %11 to %struct.sctp_paramhdr**
  %30 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %29, align 8
  %31 = load %struct.sctp_paramhdr**, %struct.sctp_paramhdr*** %9, align 8
  store %struct.sctp_paramhdr* %30, %struct.sctp_paramhdr** %31, align 8
  %32 = bitcast %union.sctp_params* %11 to i8**
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 0, %36
  %38 = getelementptr i8, i8* %34, i64 %37
  %39 = icmp ugt i8* %33, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %23
  store i32 0, i32* %5, align 4
  br label %85

45:                                               ; preds = %40
  %46 = bitcast %union.sctp_params* %11 to %struct.sctp_paramhdr**
  %47 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %46, align 8
  %48 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %70 [
    i32 131, label %50
    i32 130, label %50
    i32 129, label %50
    i32 128, label %64
    i32 132, label %64
  ]

50:                                               ; preds = %45, %45, %45
  %51 = bitcast %union.sctp_params* %11 to i8**
  %52 = load i8*, i8** %51, align 8
  %53 = bitcast i8* %52 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %10, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ntohs(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %60, 5
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %85

63:                                               ; preds = %50
  br label %71

64:                                               ; preds = %45, %45
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ne i64 %66, 4
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %85

69:                                               ; preds = %64
  br label %71

70:                                               ; preds = %45
  br label %71

71:                                               ; preds = %70, %69, %63
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @WORD_ROUND(i32 %72)
  %74 = bitcast %union.sctp_params* %11 to i8**
  %75 = load i8*, i8** %74, align 8
  %76 = sext i32 %73 to i64
  %77 = getelementptr i8, i8* %75, i64 %76
  store i8* %77, i8** %74, align 8
  br label %17

78:                                               ; preds = %17
  %79 = bitcast %union.sctp_params* %11 to i8**
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = icmp ne i8* %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %85

84:                                               ; preds = %78
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %83, %68, %62, %44
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @WORD_ROUND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
