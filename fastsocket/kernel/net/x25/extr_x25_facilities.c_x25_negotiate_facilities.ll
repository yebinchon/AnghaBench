; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_facilities.c_x25_negotiate_facilities.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_facilities.c_x25_negotiate_facilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.x25_facilities = type { i32, i64, i64, i64, i64, i64 }
%struct.x25_dte_facilities = type { i32 }
%struct.x25_sock = type { i32, %struct.x25_facilities }

@.str = private unnamed_addr constant [42 x i8] c"X.25: rejecting reverse charging request\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"X.25: throughput negotiated down\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"X.25: packet size inwards negotiated down\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"X.25: packet size outwards negotiated down\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"X.25: window size inwards negotiated down\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"X.25: window size outwards negotiated down\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x25_negotiate_facilities(%struct.sk_buff* %0, %struct.sock* %1, %struct.x25_facilities* %2, %struct.x25_dte_facilities* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.x25_facilities*, align 8
  %9 = alloca %struct.x25_dte_facilities*, align 8
  %10 = alloca %struct.x25_sock*, align 8
  %11 = alloca %struct.x25_facilities*, align 8
  %12 = alloca %struct.x25_facilities, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.x25_facilities* %2, %struct.x25_facilities** %8, align 8
  store %struct.x25_dte_facilities* %3, %struct.x25_dte_facilities** %9, align 8
  %14 = load %struct.sock*, %struct.sock** %7, align 8
  %15 = call %struct.x25_sock* @x25_sk(%struct.sock* %14)
  store %struct.x25_sock* %15, %struct.x25_sock** %10, align 8
  %16 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %17 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %16, i32 0, i32 1
  store %struct.x25_facilities* %17, %struct.x25_facilities** %11, align 8
  %18 = call i32 @memset(%struct.x25_facilities* %12, i32 0, i32 48)
  %19 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %20 = load %struct.x25_facilities*, %struct.x25_facilities** %11, align 8
  %21 = call i32 @memcpy(%struct.x25_facilities* %19, %struct.x25_facilities* %20, i32 48)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load %struct.x25_dte_facilities*, %struct.x25_dte_facilities** %9, align 8
  %24 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %25 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %24, i32 0, i32 0
  %26 = call i32 @x25_parse_facilities(%struct.sk_buff* %22, %struct.x25_facilities* %12, %struct.x25_dte_facilities* %23, i32* %25)
  store i32 %26, i32* %13, align 4
  %27 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load %struct.x25_facilities*, %struct.x25_facilities** %11, align 8
  %33 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.sock*, %struct.sock** %7, align 8
  %39 = call i32 @SOCK_DEBUG(%struct.sock* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %139

40:                                               ; preds = %31, %4
  %41 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %44 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.x25_facilities*, %struct.x25_facilities** %11, align 8
  %52 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.sock*, %struct.sock** %7, align 8
  %57 = call i32 @SOCK_DEBUG(%struct.sock* %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %58 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %61 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %55, %48
  br label %63

63:                                               ; preds = %62, %40
  %64 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.x25_facilities*, %struct.x25_facilities** %11, align 8
  %75 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load %struct.sock*, %struct.sock** %7, align 8
  %80 = call i32 @SOCK_DEBUG(%struct.sock* %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %81 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %84 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %78, %71
  %86 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.x25_facilities*, %struct.x25_facilities** %11, align 8
  %89 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load %struct.sock*, %struct.sock** %7, align 8
  %94 = call i32 @SOCK_DEBUG(%struct.sock* %93, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %95 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %98 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %92, %85
  br label %100

100:                                              ; preds = %99, %67, %63
  %101 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %137

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %137

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.x25_facilities*, %struct.x25_facilities** %11, align 8
  %112 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %110, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load %struct.sock*, %struct.sock** %7, align 8
  %117 = call i32 @SOCK_DEBUG(%struct.sock* %116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %118 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %121 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %120, i32 0, i32 4
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %115, %108
  %123 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.x25_facilities*, %struct.x25_facilities** %11, align 8
  %126 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %124, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %122
  %130 = load %struct.sock*, %struct.sock** %7, align 8
  %131 = call i32 @SOCK_DEBUG(%struct.sock* %130, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %132 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %135 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %134, i32 0, i32 5
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %129, %122
  br label %137

137:                                              ; preds = %136, %104, %100
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %137, %37
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.x25_facilities*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.x25_facilities*, %struct.x25_facilities*, i32) #1

declare dso_local i32 @x25_parse_facilities(%struct.sk_buff*, %struct.x25_facilities*, %struct.x25_dte_facilities*, i32*) #1

declare dso_local i32 @SOCK_DEBUG(%struct.sock*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
