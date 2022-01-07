; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_io.c_run_until.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_io.c_run_until.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)*, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@BR_SSL_CLOSED = common dso_local global i32 0, align 4
@BR_SSL_SENDREC = common dso_local global i32 0, align 4
@BR_ERR_IO = common dso_local global i32 0, align 4
@BR_SSL_RECVAPP = common dso_local global i32 0, align 4
@BR_SSL_RECVREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @run_until to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_until(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %13

13:                                               ; preds = %117, %116, %67, %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = call i32 @br_ssl_engine_current_state(%struct.TYPE_11__* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @BR_SSL_CLOSED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %122

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BR_SSL_SENDREC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %23
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = call i8* @br_ssl_engine_sendrec_buf(%struct.TYPE_11__* %31, i64* %8)
  store i8* %32, i8** %7, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 %35(i32 %38, i8* %39, i64 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %28
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = load i32, i32* @BR_ERR_IO, align 4
  %56 = call i32 @br_ssl_engine_fail(%struct.TYPE_11__* %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %44
  store i32 -1, i32* %3, align 4
  br label %122

58:                                               ; preds = %28
  %59 = load i32, i32* %9, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @br_ssl_engine_sendrec_ack(%struct.TYPE_11__* %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %58
  br label %13

68:                                               ; preds = %23
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %122

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @BR_SSL_RECVAPP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 -1, i32* %3, align 4
  br label %122

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @BR_SSL_RECVREC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %80
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = call i8* @br_ssl_engine_recvrec_buf(%struct.TYPE_11__* %88, i64* %11)
  store i8* %89, i8** %10, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %91, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i32 %92(i32 %95, i8* %96, i64 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %85
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = load i32, i32* @BR_ERR_IO, align 4
  %106 = call i32 @br_ssl_engine_fail(%struct.TYPE_11__* %104, i32 %105)
  store i32 -1, i32* %3, align 4
  br label %122

107:                                              ; preds = %85
  %108 = load i32, i32* %12, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @br_ssl_engine_recvrec_ack(%struct.TYPE_11__* %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %107
  br label %13

117:                                              ; preds = %80
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = call i32 @br_ssl_engine_flush(%struct.TYPE_11__* %120, i32 0)
  br label %13

122:                                              ; preds = %101, %79, %73, %57, %22
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @br_ssl_engine_current_state(%struct.TYPE_11__*) #1

declare dso_local i8* @br_ssl_engine_sendrec_buf(%struct.TYPE_11__*, i64*) #1

declare dso_local i32 @br_ssl_engine_fail(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @br_ssl_engine_sendrec_ack(%struct.TYPE_11__*, i32) #1

declare dso_local i8* @br_ssl_engine_recvrec_buf(%struct.TYPE_11__*, i64*) #1

declare dso_local i32 @br_ssl_engine_recvrec_ack(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @br_ssl_engine_flush(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
