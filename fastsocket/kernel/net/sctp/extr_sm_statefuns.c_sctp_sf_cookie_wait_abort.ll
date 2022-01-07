; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_cookie_wait_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_cookie_wait_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SCTP_ERROR_NO_ERROR = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_cookie_wait_abort(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %16, %struct.sctp_chunk** %12, align 8
  %17 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %19 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %20 = call i32 @sctp_vtag_verify_either(%struct.sctp_chunk* %18, %struct.sctp_association* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %5
  %23 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %24 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %23, %struct.sctp_association* %24, i32 %25, i8* %26, i32* %27)
  store i32 %28, i32* %6, align 4
  br label %68

29:                                               ; preds = %5
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %31 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %30, i32 4)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %35 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %34, %struct.sctp_association* %35, i32 %36, i8* %37, i32* %38)
  store i32 %39, i32* %6, align 4
  br label %68

40:                                               ; preds = %29
  %41 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %42 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntohs(i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = icmp uge i64 %48, 8
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %52 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.TYPE_6__*
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %50, %40
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @ECONNREFUSED, align 4
  %63 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %64 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %65 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @sctp_stop_t1_and_abort(i32* %60, i32 %61, i32 %62, %struct.sctp_association* %63, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %59, %33, %22
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @sctp_vtag_verify_either(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_stop_t1_and_abort(i32*, i32, i32, %struct.sctp_association*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
