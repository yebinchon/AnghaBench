; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_netmisc.c_cnvrtDosUnixTm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_netmisc.c_cnvrtDosUnixTm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"date %d time %d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"illegal time min %d sec %d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"illegal hours %d\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"illegal date, month %d day: %d\00", align 1
@total_days_of_prev_months = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, i64 } @cnvrtDosUnixTm(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.timespec, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = bitcast i32* %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %15, align 8
  %22 = bitcast i32* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %16, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 2, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 59
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 59
  br i1 %37, label %38, label %42

38:                                               ; preds = %35, %3
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i32, i8*, i32, ...) @cERROR(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %43, 60
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 3600, %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 24
  br i1 %56, label %57, label %62

57:                                               ; preds = %42
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, i32, ...) @cERROR(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %42
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp sgt i32 %69, 31
  br i1 %70, label %74, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %11, align 4
  %73 = icmp sgt i32 %72, 12
  br i1 %73, label %74, label %82

74:                                               ; preds = %71, %62
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 (i32, i8*, i32, ...) @cERROR(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %78, 12
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 12, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %74
  br label %82

82:                                               ; preds = %81, %71
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = load i64*, i64** @total_days_of_prev_months, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 3652
  store i32 %95, i32* %10, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = mul nsw i32 %99, 365
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %12, align 4
  %104 = sdiv i32 %103, 4
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp sge i32 %107, 120
  br i1 %108, label %109, label %112

109:                                              ; preds = %82
  %110 = load i32, i32* %10, align 4
  %111 = sub nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %109, %82
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 120
  br i1 %114, label %115, label %130

115:                                              ; preds = %112
  %116 = load i32, i32* %12, align 4
  %117 = and i32 %116, 3
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %120, 2
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 1, i32 0
  %124 = icmp ne i32 %123, 0
  br label %125

125:                                              ; preds = %119, %115
  %126 = phi i1 [ false, %115 ], [ %124, %119 ]
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %10, align 4
  %129 = sub nsw i32 %128, %127
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %125, %112
  %131 = load i32, i32* %10, align 4
  %132 = mul nsw i32 86400, %131
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %135, %136
  %138 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i32 %137, i32* %138, align 8
  %139 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i64 0, i64* %139, align 8
  %140 = bitcast %struct.timespec* %4 to { i32, i64 }*
  %141 = load { i32, i64 }, { i32, i64 }* %140, align 8
  ret { i32, i64 } %141
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cFYI(i32, i8*, i32, i32) #1

declare dso_local i32 @cERROR(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
