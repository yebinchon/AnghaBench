; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_asn1.c_DecodeQ931.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_asn1.c_DecodeQ931.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@H323_ERROR_BOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unknown Protocol Discriminator\0A\00", align 1
@H323_ERROR_RANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"MessageType = %02X\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Q.931 UUIE not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DecodeQ931(i8* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %17, i32* %4, align 4
  br label %157

18:                                               ; preds = %13
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 8
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @PRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @H323_ERROR_RANGE, align 4
  store i32 %25, i32* %4, align 4
  br label %157

26:                                               ; preds = %18
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ult i64 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %34, i32* %4, align 4
  br label %157

35:                                               ; preds = %26
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  %38 = load i8, i8* %36, align 1
  %39 = zext i8 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %47, i32* %4, align 4
  br label %157

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %6, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp ult i64 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %60, i32* %4, align 4
  br label %157

61:                                               ; preds = %48
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  %64 = load i8, i8* %62, align 1
  %65 = zext i8 %64 to i32
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @PRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 128
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %61
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %8, align 8
  %80 = load i64, i64* %6, align 8
  %81 = add i64 %80, -1
  store i64 %81, i64* %6, align 8
  br label %82

82:                                               ; preds = %77, %61
  br label %83

83:                                               ; preds = %145, %82
  %84 = load i64, i64* %6, align 8
  %85 = icmp ugt i64 %84, 0
  br i1 %85, label %86, label %154

86:                                               ; preds = %83
  %87 = load i8*, i8** %8, align 8
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 126
  br i1 %90, label %91, label %127

91:                                               ; preds = %86
  %92 = load i64, i64* %6, align 8
  %93 = icmp ult i64 %92, 3
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %154

95:                                               ; preds = %91
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %8, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %8, align 8
  %100 = load i8, i8* %98, align 1
  %101 = zext i8 %100 to i32
  %102 = shl i32 %101, 8
  store i32 %102, i32* %9, align 4
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %8, align 8
  %105 = load i8, i8* %103, align 1
  %106 = zext i8 %105 to i32
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  %109 = load i64, i64* %6, align 8
  %110 = sub i64 %109, 3
  store i64 %110, i64* %6, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp ult i64 %111, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %95
  br label %154

116:                                              ; preds = %95
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %9, align 4
  %121 = load i8*, i8** %5, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = call i32 @DecodeH323_UserInformation(i8* %121, i8* %122, i32 %123, i32* %125)
  store i32 %126, i32* %4, align 4
  br label %157

127:                                              ; preds = %86
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %8, align 8
  %130 = load i64, i64* %6, align 8
  %131 = add i64 %130, -1
  store i64 %131, i64* %6, align 8
  %132 = load i64, i64* %6, align 8
  %133 = icmp ult i64 %132, 1
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %154

135:                                              ; preds = %127
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %8, align 8
  %138 = load i8, i8* %136, align 1
  %139 = zext i8 %138 to i32
  store i32 %139, i32* %9, align 4
  %140 = load i64, i64* %6, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = icmp ult i64 %140, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %154

145:                                              ; preds = %135
  %146 = load i32, i32* %9, align 4
  %147 = load i8*, i8** %8, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %6, align 8
  %153 = sub i64 %152, %151
  store i64 %153, i64* %6, align 8
  br label %83

154:                                              ; preds = %144, %134, %115, %94, %83
  %155 = call i32 (i8*, ...) @PRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %156 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %154, %116, %59, %46, %33, %23, %16
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @PRINT(i8*, ...) #1

declare dso_local i32 @DecodeH323_UserInformation(i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
